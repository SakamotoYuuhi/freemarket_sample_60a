Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  get "items/item"
  resources :signups, only: [:create] do
    collection do
      get "registration"
      get "newmember"
      get "phonenumber"
      get "authentication"
      get "address"
      get "payment"
      get "completion"
    end
  end

  resources :items,only: [:index, :new, :show,  :destroy] do
  # get "items/item"
  get "items/bought"
  get "items/purchase"

  get "items/buy"
  get "items/transaction"
  
    member do
      get 'select'
      end
    collection do
      
      end
    end

  resources :categories,only: [:show, :index]

  resources :users, only: [:show] do
    member do

    end
    collection do 
      get 'card_add_btn'
      get 'card_delete_btn'
      get 'card_input_info'
      get 'create'
      get 'information'
      get 'logout'
      get 'mypage'
      get 'profile'  
      get 'seller_selling'
      get 'seller_trading'
      get 'seller_sold'
    end
  end
end

