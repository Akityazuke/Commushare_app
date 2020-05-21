Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "/index" => "posts#index"

  # Myユーザー情報
  get "/login_form" => "users#login_form"
  get "/favor" => "users#favorite"
  get "/mypage" => "users#mypage"
  get "/sinup" => "users#sinup"
  post "/login" => "users#login"
  get "/notice" => "users#notice"
  get "/logout" => "users#logout"
  get "/userpage/:id" => "users#show"

  #コミュ情報
  get "/commus/:id" => "commus#show"

  #posts
  get "/posts/:id" => "posts#show"
  post "/new_favor/:id" => "users#new_favor"
  post "/share/:id" => "posts#share"

end
