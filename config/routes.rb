Rails.application.routes.draw do

  resources :students, only: [:index, :show, :new, :create, :edit, :update]

  # get "students/:id", to: "students#show"
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  patch 'students/:id/activate', to: 'students#update'
  # patch 'students/:id', to: 'students#activate'

end
