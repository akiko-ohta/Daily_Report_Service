Rails.application.routes.draw do

  get 'home/top'
  scope module: :employer do
    resources :departments, only: [:new, :create, :index, :edit, :update]
    resources :employees, only: [:index, :edit, :update]
  end

  namespace :employer do
    resources :daily_reports, only: [:index, :show, :destroy]
    get '/search' => "daily_reports#search"
  end

  scope module: :employee do
    resources :tasks, only: [:new, :create, :index, :edit, :update]
    resources :daily_tasks, only: [:create]
    resources :todays_tasks, only: [:index, :create, :update]
    resources :daily_reports, only: [:create, :index, :show]
    get '/search' => "daily_reports#search"
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

  devise_scope :employee do
    root :to => "employee/sessions#new"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end