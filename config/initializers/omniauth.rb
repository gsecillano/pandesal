require 'omniauth_key'
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  OmniauthKey.instance.each do |prov, h|
    provider prov, h[:app_id], h[:app_secret]
  end
end

