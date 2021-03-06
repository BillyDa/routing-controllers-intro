Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome' # pages = controller    welcome=method

  get '/about' => 'pages#about'

  get '/kitten/:size' => 'pages#kitten', as: 'kitten'

  get '/contest' => 'pages#contest'

  get '/secrets/:magic_word' => 'pages#secrets', as: 'shhhh'

end
