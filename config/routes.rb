UragiranaiFansubTk::Application.routes.draw do




  captcha_route

  devise_for :users
  root :to => 'home#index'
  
  resources :staffs
  resources :news
  resources :comments
  resources :users
  resources :projets
  resources :others
  resources :progressions
  resources :imgups  
  resources :pages
  resources :partenaires
  resources :forceds
    
  devise_for :users
  devise_scope :user do
    match "/login", :to => "devise/sessions#new"
    match "/logout", :to => "devise/sessions#destroy"
    match "/signup", :to => "devise/registrations#new"
  end
  
  match "/forceds", :to => "admin#index"
  match "/index", :to => "home#index"
  match "/upbs", :to => "upbs#index"
  match "/upbs/admin", :to => "upbs#update"
  match "/admin", :to => "admin#index"
  match "/ddl", :to => "home#ddl"
  match "/show", :to => "news#show"
  match "/users", :to => "users#index"
  match "/projets/new", :to => "projets#new"
  match "/staffansub", :to => "home#staff"
  match "/projet/termines", :to => "home#projetstermines"
  match "/projet/encours", :to => "home#projetsencours" 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
