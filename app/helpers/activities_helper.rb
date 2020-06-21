module ActivitiesHelper
    def date_of_activity(time)
            if time.date < Date.today
                "You can't not pick a date before today"
            end
        end
    end
