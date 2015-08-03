Rails.application.routes.draw do

  root 'calculations#index'




  get 'calculations/index'


  post "/calculate" => "calculations#calculate"

  resources :calculators

end
