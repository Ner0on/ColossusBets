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
    self.class.post("/v2/sessions/", {body: {api_key: 'KklyUtXD7NQb8oIYQDMBDw', api_secret: 'password' }} )
  end

  # Main problem of this Test task is that API all the time send me 406 error and some of this "x-xss-protection"=>["1; mode=block”]. 
  # It happens when i try to POST /v2/sessions using HTTPparty gem
  # I tried to rename body to query (i read this from stockower. solutions ) but it doesn't helps me 

end