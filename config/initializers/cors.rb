# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001' # Adjust this to your frontend's origin
  
      resource '*', # Adjust this to match your API endpoint
        headers: :any,
        methods: [:get , :post], # Add other HTTP methods if needed
        credentials: true
    end
  end
  