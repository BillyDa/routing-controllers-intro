Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#welcome' # pages = controller    welcome=method

  get '/about' => 'pages#about'

  get '/kitten/:size' => 'pages#kitten'

  get '/contest' => 'pages#contest'

end
