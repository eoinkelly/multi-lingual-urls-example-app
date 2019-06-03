Rails.application.routes.draw do
  resources :posts do
    collection do
      get "/by_title/:title", to: "posts#show_by_title" , as: :show_by_title
    end
  end

  # It is probably good practice to register an anglicized version of the name
  # too for those who can't easily type Te Reo on their keyboard
  get "/maori", to: "pages#maori", as: :static_page_anglicized
  get "/māori", to: "pages#maori", as: :static_page_original_maori

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
end
