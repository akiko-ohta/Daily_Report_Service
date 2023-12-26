Rails.application.routes.draw do

scope module: :employer do
    resources :departments, only: [:new, :create, :index, :edit, :update]
    resources :employees, only: [:index, :edit, :update]
  end

  scope module: :employee do
    get "report_serach" => "report_serach#index"
    resources :tasks, only: [:new, :create, :index, :edit, :update]
    resources :daily_reports, only: [:new, :create, :index, :show]
    resources :todays_reports, only: [:index, :create, :update]
    delete "todays_reports/destroy_all" => "todays_reports#destroy_all"
  end

  # 管理者用
# URL /employer/sign_in ...
devise_for :employer, skip: [:passwords], controllers: {
  registrations: "employer/registrations",
  sessions: "employer/sessions"
}

  # 従業員用
# URL /employee/sign_in ...
devise_for :employee, controllers: {
  registrations: "employee/registrations",
  sessions: 'employee/sessions'
}

root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end