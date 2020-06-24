module ApplicationHelper

    # def date_of_activity(time)
    #     if time.date < Date.today
    #         "You can't not pick a date before today"
    #     end
    # end

    
    # def displayTimeLeft(seconds)
    #     hours = seconds.floor / 3600
    #     remainderMin = seconds % 3600
    #     p hours, remainderMin
    #     puts "For about #{hours} hours #{remainderMin} min"
    # end

    # displayTimeLeft(108028)

#
# def displayTimeLeft(start_time, end_time)
#   timedif = end_time.to_f - start_time.to_f
#   hours = timedif.floor / 3600
#   remainderMin = timedif % 3600
#   p hours, remainderMin
#   puts "For about #{hours} hours #{remainderMin} min"
# end
#
# displayTimeLeft('2000-01-01 17:00:00', '2000-01-01 14:00:00')

#
# displayTimeLeft(10812)
# def displayTimeLeft(seconds)
#   minutes = seconds.floor / 60
#   remainderSeconds = seconds % 60
#   p minutes, remainderSeconds
#   puts "For about #{minutes} minutes #{remainderSeconds} min"
# end
#
# displayTimeLeft(1081)

# def timeLeft(start_time, end_time)
#   #loop through the activity and get the start_time and end_time
#   diff = end_time - start_time
#   minutes = diff.floor / 60
#   remainderSeconds = diff % 60
#   p minutes, remainderSeconds
#   puts "For about #{minutes} minutes #{remainderSeconds} seconds"
# end
#
# timeLeft(1080, 10800)



end


