class ColossusBets::ApiConnector
  include HTTParty
  base_uri 'api.sandbox.colossusbets.com'
  debug_output $stdout

  def initialize
    @options = {
      body:
        {
          api_key: 'KklyUtXD7NQb8oIYQDMBDw',
          api_secret: 'password'
        }
    }
  end

  def create_session
    self.class.post("/v2/sessions/", {query: {api_key: 'KklyUtXD7NQb8oIYQDMBDw', api_secret: 'password' }} )
  end

end