class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #binding.pry
    if req.path.match(/item/)
      item_name = req.path.split("/items/").last.downcase
      binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
