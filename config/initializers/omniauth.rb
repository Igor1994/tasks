OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "797895523612285", "e1b63bdb28e55e7cc2f389438b4e7ef7",
  	scope: "email"

end

