Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://fast-lane-racers-back-end-1.onrender.com/"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ["Authorization"]
  end
end
