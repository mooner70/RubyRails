Rails.application.routes.draw do
  get '/dojos' => 'dojos#index' 
  post '/dojos' => 'dojos#create' 
  get '/dojos/new' => 'dojos#new'
  get '/dojos/:id' => 'dojos#show'
  get '/dojos/:id/edit' => 'dojos#edit'
  patch '/dojos/:id' => 'dojos#update'
  delete '/dojos/:id' => 'dojos#destroy'

  resources :dojo do
    resources :students
  end

#   vagrant@vagrant-ubuntu-trusty-64:/vagrant/rails/dashboard4students$ rake routes
#            Prefix Verb   URI Pattern                                Controller#Action
#             dojos GET    /dojos(.:format)                           dojos#index
#                   POST   /dojos(.:format)                           dojos#create
#         dojos_new GET    /dojos/new(.:format)                       dojos#new
#                   GET    /dojos/:id(.:format)                       dojos#show
#                   GET    /dojos/:id/edit(.:format)                  dojos#edit
#                   PATCH  /dojos/:id(.:format)                       dojos#update
#                   DELETE /dojos/:id(.:format)                       dojos#destroy
#     dojo_students GET    /dojo/:dojo_id/students(.:format)          students#index
#                   POST   /dojo/:dojo_id/students(.:format)          students#create
#  new_dojo_student GET    /dojo/:dojo_id/students/new(.:format)      students#new
# edit_dojo_student GET    /dojo/:dojo_id/students/:id/edit(.:format) students#edit
#      dojo_student GET    /dojo/:dojo_id/students/:id(.:format)      students#show
#                   PATCH  /dojo/:dojo_id/students/:id(.:format)      students#update
#                   PUT    /dojo/:dojo_id/students/:id(.:format)      students#update
#                   DELETE /dojo/:dojo_id/students/:id(.:format)      students#destroy
#        dojo_index GET    /dojo(.:format)                            dojo#index
#                   POST   /dojo(.:format)                            dojo#create
#          new_dojo GET    /dojo/new(.:format)                        dojo#new
#         edit_dojo GET    /dojo/:id/edit(.:format)                   dojo#edit
#              dojo GET    /dojo/:id(.:format)                        dojo#show
#                   PATCH  /dojo/:id(.:format)                        dojo#update
#                   PUT    /dojo/:id(.:format)                        dojo#update

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
