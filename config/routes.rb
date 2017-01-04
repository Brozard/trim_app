Rails.application.routes.draw do
  get '/', to: 'submissions#new', as: 'submissions'
  post '/', to: 'submissions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
