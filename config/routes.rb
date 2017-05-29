Rails.application.routes.draw do
  get 'user/new' , :to => "user#new"
  post 'user/new' , :to => "user#new"
  get 'user/step1', :to => "user#step1"
  post 'user/step1', :to => "user#save"
  get 'user/step2', :to => "user#step2"
  post 'user/step2', :to => "user#step2"
  root to:'user#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
	