Rails.application.routes.draw do
    # controller#action
    # - action with a html page
  root 'subs#index'
  # get 'sub#index' as: 'subs'
  # HTTP Verbs
    # GET          Index, show, new, edit   Read
    # POST         create                  Create
    # PUT / PATCH  update                  update
    # DELETE       destroy                 delete 
  # get '/subs', to: 'subs#index'
  # get '/apple', to: 'subs#index'
  # post 'subs', to: 'subs#create'
 
  # embedded route
  # not recommend 
  # resources :subs do
  #   resources :topics do 
  #     resources :comments
  #   end
  # end

  # recommend
  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  # likes
  # resources :comments do
  #   resources :likes
  # end

  # static_pages
  # resources :static_pages
  # get '/home', to: 'static_pages#index'

  # resources :subs, only: [:new, :index]
  # resources :subs, except: [:create, :new]

  # sub id: 1
  # get /subs/:id # show
  # get /subs/1 # show
end