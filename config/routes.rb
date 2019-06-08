Rails.application.routes.draw do
    # get "students/:id", to: "students#show"
    resources :students, only: [:index, :show]
    get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end

# Activate Page:
# Should mark an inactive student as active
# Should mark an active student as inactive
# Should redirect to the student show page
