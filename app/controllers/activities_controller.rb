class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.paginate(page: params[:page], per_page: 5)
    
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @activity = Activity.find(params[:id])
    # @am = "AM"
    # @pm = "PM"
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
    
    @activity = Activity.find(params[:id])
    
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully deleted.' }
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_params
      params.fetch(:activity, {}).permit(:name, :date, :start_time, :end_time)
    end
end