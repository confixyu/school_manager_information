Rails.application.routes.draw do


	get 'students/index'
  root 'students#index'
	
  devise_for :users, :skip => :registerable

	devise_scope :user do
		 root to: "devise/sessions#new"
	end

  resources :students
  resources :teachers
  resources :courses

  

end
