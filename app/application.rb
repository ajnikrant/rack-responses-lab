class Application

    def call(env)
      resp = Rack::Response.new
        now = Time.now
      if now.hour >= 12
        resp.write "good afternoon"
      else
        resp.write "good morning"
      end
  
      resp.finish
    end
end