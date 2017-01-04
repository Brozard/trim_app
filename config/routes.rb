Rails.application.routes.draw do
  get '/', to: 'submissions#new'
  post '/', to: 'submissions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
