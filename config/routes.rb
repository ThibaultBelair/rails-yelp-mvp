Rails.application.routes.draw do

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:show, :new, :create]
  end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

# resources :reviews, only: [ :new, :create ] # Those routes needs restaurant_id
# end
# resources :reviews, only: [ :show, :edit, :update, :destroy ] # those routes are not dependent of restaurant_id
# end
