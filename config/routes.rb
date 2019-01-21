Rails.application.routes.draw do
  root to: "pages#home"

  %w(work about contact pathgather kustomer personal illustrations lettering rope).each do |route|
    get "/#{route}", to: "pages##{route}"
  end
end
