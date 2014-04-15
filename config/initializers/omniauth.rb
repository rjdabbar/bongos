Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, '6BEB7ED32A5FB33954F7A33F76D76E74'
end