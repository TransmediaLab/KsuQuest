Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    url = 'https://signin.k-state.edu/WebISO'
  else
    url = 'https://cas.cis.ksu.edu'
  end
  
  provider :cas, 
    url: url,
    #url: 'https://signin.k-state.edu/WebISO', 
    #url: 'https://cas.cis.ksu.edu',
    disable_ssl_verification: true
end
