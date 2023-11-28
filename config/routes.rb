Rails.application.routes.draw do

  namespace :employee do
    get 'tasks/new'
    get 'tasks/create'
    get 'tasks/edit'
    get 'tasks/update'
  end
  namespace :employee do
    get 'daily_reports/new'
    get 'daily_reports/index'
    get 'daily_reports/show'
  end
  namespace :employee do
    get 'todays_reports/new'
    get 'todays_reports/edit'
    get 'todays_reports/update'
    get 'todays_reports/all_delete'
  end
  get 'department/new'
  get 'department/index'
  get 'department/edit'
  get 'department/update'
  namespace :employer do
    get 'employees/index'
    get 'employees/show'
    get 'employees/edit'
    get 'employees/update'
  end
  root to: "homes#top"

  # 従業員用
# URL /employee/sign_in ...
devise_for :employee, controllers: {
  registrations: "employee/registrations",
  sessions: 'employee/sessions'
}

# 管理者用
# URL /employer/sign_in ...
devise_for :employer, skip: [:passwords], controllers: {
  registrations: "employer/registrations",
  sessions: "employer/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
