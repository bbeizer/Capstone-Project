Rails.application.routes.draw do
  resources :instructors
  resources :courses
  root 'welcome#index'
  get '/about', :to => redirect('/about.html')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
