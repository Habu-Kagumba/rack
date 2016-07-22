require "rack"
require "rack/handler/puma"
require_relative "middleware_rack"

class MinimalRack
  def call(env)
    request = Rack::Request.new(env)
    http_verb = request.request_method
    status = 200
    headers = {}
    body = ["got #{http_verb} request\n"]

    [status, headers, body]
  end
end

app = Rack::Builder.new do
  use MiddlewareRack
  run MinimalRack.new
end

# Run on port 9292
Rack::Handler::Puma.run(app, Port: 9292)
