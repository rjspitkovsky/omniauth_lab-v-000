Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['138551276864244'], ENV['64754899e753de6555b95e783919e842']
end


FACEBOOK_KEY = '138551276864244'
FACEBOOK_SECRET = '64754899e753de6555b95e783919e842'
