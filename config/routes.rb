Rails.application.routes.draw do

  root 'calculations#index'

  get 'calculations/index'

  # http://stackoverflow.com/questions/18368933/matching-and-routes-in-rails
  #match is deprecated
  
  post "/calculate" => "calculations#calculate"

  resources :calculators

end
