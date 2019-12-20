Rails.application.routes.draw do
  devise_for :users
  #devise_for :usersは、deviseを使用する際にURLとしてusersを含むことを示しています。
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
