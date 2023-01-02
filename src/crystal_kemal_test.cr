require "kemal"

get "/" do
  "Hello, World!"
end

get "/:name" do |env|
  name = env.params.url["name"]
  render "src/views/hello.ecr"
end

Kemal.run
