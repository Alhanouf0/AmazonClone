Rails.application.routes.draw do
  resources :admins
  resources :items do
    member do
      delete :delete_pic_attachment
    end
  end
  resources :users

  get '/items/:id/delete_pic_attachment', to: 'items#delete_pic_attachment', as: :DELETE
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
