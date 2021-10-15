Rails.application.routes.draw do
  resources :alumni
  resources :students
  root 'welcome#index'
  get '/about', :to => redirect('/about.html')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
