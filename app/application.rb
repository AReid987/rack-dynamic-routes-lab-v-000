class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/item/)
      item = req.path.split("items").last
    else
      resp.write "Route not found"  
    end
  end

end
