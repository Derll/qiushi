Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root 'page#welcome'

  # guests
  get 'guests/new' => 'guests#new'
  get 'guests' => 'guests#index', :as => 'guests'
  get 'guests/:id' => 'guests#show', :as => 'guest'
  delete 'guests/:id' => 'guests#destroy'
  post '/guests' => 'guests#create'
  get 'guests/:id/edit' => 'guests#edit', :as => 'edit_guest'
  patch 'guests/:id' => 'guests#update'
  get 'guests/:id/new' => 'guests#ask', :as => 'guest_ask'

  #comments
  post '/guests/:guest_id/comments' => "comments#create"
  get 'comments' => 'comments#index', :as => 'comments'
  get '/comments/:id/show' => "comments#show", :as => 'comment'

  #questions
  post '/comments/:comment_id/questions' => "questions#create"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
