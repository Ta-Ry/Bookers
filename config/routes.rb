Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  # 上記resourcesはonly（指定したものを採用）ではなくexcpet（指定したものを排除）もあるが、onlyの方が見てわかりやすい
end
