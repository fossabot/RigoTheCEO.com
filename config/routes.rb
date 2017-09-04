Rails.application.routes.draw do
  devise_for :users, path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'signup',
      edit: 'account'
    }, controllers: { registrations: 'user/registrations' }

  authenticated :user do
    root to: 'core#home'
  end
  unauthenticated :user do
    root to: 'core#home'
  end

  resources :blog_posts, path: 'blog', only: [:index, :show, :new, :edit, :create, :update, :destroy]

  get '/console' => 'console#index' if Rails.env.development?
end
