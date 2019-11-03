Rails.application.routes.draw do
  get 'student/list'
  get 'student/show'
  post 'student/create'
  get 'student/new'
  delete 'student/destroy'
end
