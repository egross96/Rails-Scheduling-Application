Rails.application.routes.draw do
 get "schedule", to: "schedules#index"

 get "/", to: "schedules#index"
end
