class SimpleMiddleware
  def initialize(app)
    @app = app
    puts "*" * 50
    puts "* #{self.class} initalize(app = #{app.class})"
    puts "*" * 50
  end

  def call(env)
    status, headers, body = @app.call(env)
    puts "*" * 50
    puts "* #{self.class} call(body = #{body})"
    puts "*" * 50
    return [status, headers, body]
  end
end
