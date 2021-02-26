Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_letter_a" => "params#first_letter"
    get "/params_example/:your_guess" => "params#number_guess"
  end
end
