Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  root :to => redirect('game/join')
  
  get 'game/create', to: 'game#create', as: 'create'
  
  
  get 'game/board', to: 'game#board', as: 'board'
  
  get 'game/join', to: 'game#join', as: "join"
  
  get 'game/start', to: 'game#start', as: "start"
  
  get 'game/kingdom', to: 'game#kingdom', as: "kingdom"
  
  get "game/night_shade", to: 'game#night_shade', as: "night_shade"
  
  get "game/play_turn", to: "game#play_turn", as: "play_turn"
  
  get "game/win", to: "game#win", as: "win"
  
  get "game/lose", to: "game#lose", as: "lose"
  
  get "game/messages", to: "game#messages", as: "messages"
  
  get "game/quiz", to: "game#quiz", as: "quiz"
  
  get "game/treasure_interaction", to: "game#treasure_interaction", as: "interaction"
  
  get "game/treasure_map", to: "game#treasure_map", as: "map"
  
  get "game/index", to: "game#index", as: "index"
  
  get "game/route14", to: "game#route14", as: "route14"
  
  get "game/route15", to: "game#route15", as: "route15"
  
  get "game/server", to: "game#server", as: "server"
  
  get "game/manual", to: "game#manual", as: "manual"
  
  get "game/players", to: "game#players", as: "players"
  
  get "game/characters", to: "game#characters", as: "characters"
  
  get "game/success", to: "game#success", as: "success"

  resources :colorrecognition
  
  resources :game
  
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
