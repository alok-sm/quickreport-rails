Report::Application.routes.draw do
  
  resources :posts, :except => [:update, :edit]
  resources :stats, :except => [:new, :destroy, :create, :update, :edit]

end
