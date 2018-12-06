class TestApi < Grape::API
  format :json

  resource :test do
    # curl http://localhost:3000/test/hello
    get :hello do
      obj = {}
      obj[:hello] = 'world'
      obj[:num] = 10
      obj
    end
  end
end