CraigslistRails::Application.routes.draw do
  root to: 'categories#index'

  resources :categories do 
    resources :posts
  end

end

# get '/categories' => 'categories#index'
# /category/:category_id/posts
# /category/auto/posts/blue-nissan-versa-24 #slug (gem to create slug)

# /posts/24

# /category/furniture/posts


