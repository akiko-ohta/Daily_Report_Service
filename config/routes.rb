Rails.application.routes.draw do

  scope module: :employee do
    resources :report_serach, only: [:show]
    resources :tasks, only: [:new, :create, :index, :edit, :update]
    resources :daily_reports, only: [:new, :create, :index, :show]
    resources :todays_reports, only: [:new, :create, :edit, :update]
    delete "todays_reports/destroy_all" => "todays_reports#destroy_all"
  end

  scope module: :employer do
    resources :departments, only: [:new, :create, :index, :edit, :update]
    resources :employees, only: [:index, :edit, :update]
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
