    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, "452157338664385", "0412c96fee8bd0ccbeaff0bf64275266", {:provider_ignores_state => true}
    end