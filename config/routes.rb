Rails.application.routes.draw do

scope module: :employer do
    resources :departments, only: [:new, :create, :index, :edit, :update]
    resources :employees, only: [:index, :edit, :update]
    resources :daily_report, only: [:index, :show]
  end

  scope module: :employee do
    resources :todays_tasks, :path => "todays_reports"
    get "report_serach" => "report_serach#index"
    resources :tasks, only: [:new, :create, :index, :edit, :update]
    resources :daily_tasks, only: [:create]
    resources :todays_tasks, only: [:index, :create, :update]
    resources :daily_reports, only: [:create, :index, :show]
    post "create_handover" => "todays_tasks#create_handover"
    patch "update_handover" => "todays_tasks#update_handover"
    post "create_daily_report" => "todays_reports#create_daily_report"
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