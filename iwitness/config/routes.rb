Iwitness::Application.routes.draw do
  root :to => 'posts#index'
  resources :categories, :posts, :users
end
