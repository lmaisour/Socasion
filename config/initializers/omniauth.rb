OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '790278851029539', 'a539212fbf1439e1ecd8c5859c6bf024'
end
