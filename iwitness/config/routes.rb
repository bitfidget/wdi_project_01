Iwitness::Application.routes.draw do
  root :to => 'pages#index'
  post 'index' => 'pages#index'
  resources :categories, :posts, :users
end
