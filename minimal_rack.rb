require "rack"
require "rack/handler/puma"
require_relative "middleware_rack"


minimal_rack = lambda do |env|
  request = Rack::Request.new(env)
  http_verb = request.request_method
  [200, {"Content-Type" => "habu/v2"}, ["Got #{http_verb} req.\n"]]
end

app = Rack::Builder.new do
  use MiddlewareRack
  run minimal_rack
end

# Run on port 9292
Rack::Handler::Puma.run(app, Port: 9292)
