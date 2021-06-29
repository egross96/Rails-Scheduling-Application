require "csv"  


desc 'Load stuff into stuff'
task load_data: :environment do

    CSV.foreach("lib/locations.csv", headers: true) do |row|
    Location.create(id: row[0], name: row[1], city: row[2])

    end

        

    CSV.foreach("lib/technicians.csv", headers: true) do |row|
    Technician.create(id: row[0], name: row[1])
 
    end


   CSV.foreach("lib/work_orders.csv", headers: true) do |row|
    WorkOrder.create!(id: row[0], technician_id: row[1], location_id: row[2], time: row[3].to_datetime, duration: row[4], price: row[5])
    end
end
