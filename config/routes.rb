Rails.application.routes.draw do
  get 'owners/index'

  get 'owners/new'

  get 'articles/new'

  get 'welcome/index'

  resources :owners

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
