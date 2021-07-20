Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "7b9d5c0cac8b654f31e0", "2477f2e22b3c7ebeec1691e6fa7142c4aac5955c"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end