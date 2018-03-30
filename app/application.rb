class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #binding.pry
    if req.path.match(/item/)
      item_name = req.path.split("/items/").last
      if !@@items.find{|i| i.name == item_name}.nil?
        item = @@items.find{|i| i.name == item_name}.price
      end
      #binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
