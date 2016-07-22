require "rack"

class MiddlewareRack
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)

    if request.patch?
      [405, {}, ["PATCH Not yet supported :(\n"]]
    else
      @app.call(env)
    end
  end
end
