Rails.application.routes.draw do
  resources :event_batches, only: :create
end
