Rails.application.routes.draw do
  resources :invests
  #get "/g" => 'invests#week_glist'
  ## works OK ## match '/charts/week_glist(.:format)' => 'charts#week_glist', :via => :get  , :as => 'charts_week_glist'
  match '/charts/glist/:user/:part(.:format)' => 'charts#glist', :via => :get  , :as => 'charts_glist'
  #url_requests GET    /urls/:url_id/requests(.:format)          requests#index
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
