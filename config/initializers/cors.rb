
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://ladybag.herokuapp.com'
      resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :options, :delete], :credentials => true
    end
    end
