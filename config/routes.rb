Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'

  resources :articles do
    resources :comments
  end


  root to: 'welcome#index'
end
