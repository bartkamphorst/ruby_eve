module RubyEve
  
  class Agent
    require "jimson"
    extend Jimson::Handler
    
    def initialize(id=nil, opts = {})
      # TODO: parse config.yml from opts for relevant server options (host, port, etc.)
      @id = id
      @server = Jimson::Server.new(self)
    end
    
    def getId
      @id ||= Random.rand(100)
    end
    
    def getUrls
      []
    end
    
    def onSubscribe(event, callbackUrl, callbackMethod)
    end
    
    def onUnsubscribe(subscriptionId=nil, event=nil, callbackUrl=nil, callbackMethod=nil)
    end
    
    def request(url, method, params = [])
      client = Jimson::Client.new(url) # the URL for the JSON-RPC 2.0 server to connect to
      result = client.sum(*params)
    end
    
    def getMethods
      @server.router.jimson_methods
    end
    
    def start
      @server.start # serve with webrick on http://0.0.0.0:8999/ (default)
    end
  end
end
