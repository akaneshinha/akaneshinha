Rails.application.routes.draw do

  get 'users/profile'

  patch 'users/profile'

  post 'users/profile', to:'users#edit'

  get 'newuser/newuser'

  get 'users/new'

  post 'users/new', to:'users#create'

  post 'users/create'

  get 'users/mypage'

  post 'users/mypage'

  get 'users/login'

  get 'admin_new', to:'admins#admin'

  get 'admin/admin_new'

  get 'admin_edit/:id/edit', to:'admin_edit#edit'

  get 'admin_edit/edit'

  get 'admin_edit/id/edit'

  get 'clients/client'

  get 'admins/admin'

  post 'admins/admin'

  delete 'admins/admin'

  # delete 'admins_destroy', to: 'admins#destroy'
  post '/admins/destroy/:id', to: 'admins#destroy'

  get 'admin/top'

  get 'job/job1'

  get 'jobs/joblist'

  post 'jobs/joblist'

  get 'posts/top'

  get 'posts/show'

  get 'jobs/index'

  get 'jobs/show'

  post 'admin/admin_new', to: 'admins#admin'

  post 'admin_job_create', to: 'admin#job_create'

  get 'admins/admin', to:"admins#admin"

  post 'jobs/entry'

  # get    'login'   => 'sessions#new'
  # post   'login'   => 'sessions#create'

resources :login
get 'session_create' => 'users#session_create'
resources :admins
resources :edit
resources :admin_edit
resources :admin_edit
# resources :users



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
