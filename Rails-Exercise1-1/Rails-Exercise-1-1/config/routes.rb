Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
   get '/about_us', to: 'pages#about_us'
   get '/contact_us', to: 'pages#contact_us'
   get '/faq', to: 'pages#faq'
   get '/terms', to: 'pages#terms'
   get '/policy', to: 'pages#policy'
   get '/course_catalog', to: 'pages#course_catalog'
   get '/testimonials', to: 'pages#testimonials'
   get '/blog', to: 'pages#blog'
end
