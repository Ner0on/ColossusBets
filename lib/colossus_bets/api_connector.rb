class ColossusBets::ApiConnector
  include HTTParty
  debug_output $stdout
  base_uri 'api.sandbox.colossusbets.com'
  
  def initialize
    @default_headers = {
      'Content-Type' => 'application/json', 
      'Accept' => 'application/json'
    }
  end

  def create_session
    res = self.class.post("/v2/sessions/", {
      body: {
        api_key: 'KklyUtXD7NQb8oIYQDMBDw', 
        api_secret: 'password' 
      }.to_json, 
      headers:  @default_headers} 
    )
    if res["access_token"].present?
      ap res["access_token"]
      @access_token = res["access_token"]
      @refresh_token = res["refresh_token"]
      return true
    else
      return false
    end
  end


  def get_pools
    ap self.class.get("/v2/pools/", {
      body: {
        access_token: @access_token
      }.to_json, 
      headers: @default_headers
    })
    # Here was a problem couse i dont know how to use authontification key, cause it is not mentioned in DOCS.
  end

end