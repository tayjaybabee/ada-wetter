class WetterStation < Wetter


  @remote_data = "https://api.darksky.net/forecast/#{@api_key}/"

  # @return [Object]
  def query

  end

end