Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  flipper_app = Flipper::UI.app(Flipper.instance) do |builder|
    builder.use Rack::Auth::Basic do |username, password|
      username == "user" && password == "pass"
    end
  end
  mount flipper_app, at: "/flipper"

  # Defines the root path route ("/")
  # root "articles#index"
end
