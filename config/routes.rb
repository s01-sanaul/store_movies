Rails.application.routes.draw do
  get "/movie/:id" => "application#show"
  get "/new" => "application#new"
  get "/create" => "application#create"
  get "/movies" => "application#index"
  get "/movie/:id/edit" => "application#edit"
  get "/edit_mov/:id" => "application#edit_mov"
  get "/movie/:id/destroy" => "application#destroy"
  get "/nothing" => "application#naught"
end
