Rails.application.routes.draw do
  resources :event_batches, only: :create
  resources :aggregates, only: :index
end
