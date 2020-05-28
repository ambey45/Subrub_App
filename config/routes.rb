Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'get_near_by_pincodes' => 'suburb_details#get_near_by_pincodes'
  get 'get_subrub' => 'suburb_details#get_subrub'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
