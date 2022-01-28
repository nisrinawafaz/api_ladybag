
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://249d-114-142-172-35.ngrok.io'
      resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :options, :delete], :credentials => true
    end
    end
