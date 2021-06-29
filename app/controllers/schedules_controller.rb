class SchedulesController < ApplicationController
  def index
    @locations = Location.all 
    @technicians = Technician.all 
    @work_orders = WorkOrder.all 


    #for the case that CSV is not ordered by technicians, we need to sort them by column
    @work_orders.sort_by(&:technician_id)
  end

  #strip the datetime and change it into an integer so my view can assign in the corresponding number of pixels.
  def changeStartTime(workorder)
    time = workorder.time
    stripMinutes = time.strftime('%M').to_i
    stripHours = time.strftime('%H').to_i

    hoursToMinutes = stripHours *60
    totalMinutes = hoursToMinutes+stripMinutes
    return totalMinutes
  end
  helper_method :changeStartTime


  
  def getLocation(workorder)
    id = workorder.location_id
    location = Location.find_by_id(id)
    return location.name + " , " + location.city
  end
  helper_method :getLocation

  def time_conversion(minutes)

    seconds = minutes *60;
    Time.at(seconds).utc.strftime("%H:%M")
  end
  helper_method :time_conversion


  def find_by_id(workorder)
    #if the next ID is different we need to switch columns
    if workorder.nil?
      return false;
    end
    if WorkOrder.find_by_id(workorder.id+1).nil?
      return false;
      if WorkOrder.find_by_id(workorder.id+1).technician_id != workorder.technician_id 
        return false;
      end
    end
    return true;
  end
  helper_method :find_by_id
end
