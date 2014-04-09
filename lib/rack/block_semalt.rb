module Rack
  class BlockSemalt
    def initialize(app)
      @app = app
    end

    def call(env)
      if semalt?(env)
        forbidden
      else
        @app.call(env)
      end
    end

    private

    def forbidden
      [403, {"Content-Type" => "text/plain"}, ["Semalt, be gone!\n"]]
    end

    def semalt?(env)
      referer = env['HTTP_REFERER'] || ''
      referer =~ /^semalt\.com/
    end
  end
end
