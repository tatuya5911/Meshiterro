Rails.application.routes.draw do
  devise_for :users
  #devise_for :usersは、deviseを使用する際にURLとしてusersを含むことを示しています。
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'

  resources :post_images, only: [:new, :create, :index, :show]
  #resourcesメソッドは、ルーティングを一括して自動生成してくれます。
  #一方、onlyは、生成するルーティングを限定するオプションです。
  #画像投稿には、「新規投稿」「一覧」「詳細機能」しか使わないため、不要なルーティングが実行されないようにonlyを設定します。
end
