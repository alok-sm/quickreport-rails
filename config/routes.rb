Report::Application.routes.draw do
  
  resources :posts, :except => [:update, :edit]

end
