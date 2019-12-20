Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'tweets#index'                       #ルートパスの指定
  get   'tweets'      =>  'tweets#index'     #ツイート一覧画面 
  get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create'      #ツイート登録画面

  get   'users/:id'   =>  'users#show'    #マイページの表示

  get 'tweets/:id' => 'tweets#show'       #ツイート詳細画面
  get   'users/:id'   =>  'users#show'    #ツィート詳細画面
  get   'tweets/:id/edit'  => 'tweets#edit' #編集画面の呼び出し
  patch   'tweets/:id'  => 'tweets#update' #編集後の更新
  delete  'tweets/:id'  => 'tweets#destroy'   #ツィート削除画面


end
