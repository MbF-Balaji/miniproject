Rails.application.routes.draw do
  get 'user/new' , :to => "user#new"
  post 'user/new' , :to => "user#new"
  post 'user/extra' , :to => "user#extra"
  get 'user/new_data' , :to => "user#new_data"
  post 'user/new_data' , :to => "user#step2"
  get 'user/step1', :to => "user#step1"
  post 'user/step1', :to => "user#step1"
  get 'user/step1_data', :to => "user#step1_data"
  post 'user/step1_data', :to => "user#step2"
  get 'user/step2', :to => "user#step2"
  post 'user/step2', :to => "user#save"
  
  root to:'user#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
	