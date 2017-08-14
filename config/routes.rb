Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'mreleases#index', as: 'home' #index page => looks at the mreleases controller > index view
  
  get 'about' => 'pages#about', as: 'about' #about page => looks at the pages controller, about view

  #resource route (maps HTTP verbs to controller actions...)
  resources :mreleases #do $rake routes in command prompt, then do actions in mreleaases controller
end
