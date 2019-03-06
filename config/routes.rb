Rails.application.routes.draw do
  resources :cari_belge_tanims
  resources :belges
  resources :belge_tips
  resources :asama_tanims
  resources :stok_grups
  resources :cari_grups
  resources :sips
  resources :stoks
  resources :caris
  resources :pdf_den
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
