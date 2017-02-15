# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#                     root GET    /                              items#index
#              delete_item GET    /items/:id/delete(.:format)    items#delete
#                    items GET    /items(.:format)               items#index
#                          POST   /items(.:format)               items#create
#                 new_item GET    /items/new(.:format)           items#new
#                edit_item GET    /items/:id/edit(.:format)      items#edit
#                     item GET    /items/:id(.:format)           items#show
#                          PATCH  /items/:id(.:format)           items#update
#                          PUT    /items/:id(.:format)           items#update
#                          DELETE /items/:id(.:format)           items#destroy
#

Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

  resources :items do
    member do
      get :delete
    end
  end

  resources :item_loans

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
