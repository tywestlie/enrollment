Rails.application.routes.draw do
  resources :students, shallow: true do
    resources :addresses
  end
end
