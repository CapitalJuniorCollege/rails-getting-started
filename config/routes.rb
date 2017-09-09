Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'
  resources :articles


  root to: 'welcome#index'
end
