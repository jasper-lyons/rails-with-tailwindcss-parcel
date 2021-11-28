Rails.application.routes.draw do
  get '/', controller: :guests, action: :landing_page
end
