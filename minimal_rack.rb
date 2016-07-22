require "rack"
require "rack/handler/puma"

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

# Run on port 9292
Rack::Handler::Puma.run(MinimalRack.new, Port: 9292)
