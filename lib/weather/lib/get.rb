# frozen_string_literal: true

module Weather
  module Get

    URL = 'https://api.darksky.net/forecast/'
    KEY = 'd992c816780660fc355472315dd211d6'
    LAT = '30.413630'
    LNG = '-97.646770'

    def self.parse_weather(url)
      uri = URI(url)
      response = Net::HTTP.get(uri)
      response = JSON.parse(response)
      cur = response['currently']
      cur
    end

    def self.arrange_data(parsed_data)
      scraped_data = {}
      w = parsed_data
      w_time = w['time']
      scraped_data = { "#{w_time.to_s}": nil
      }
      results = scraped_data[w_time.to_s]
      results = {
          summary: w['summary'],
          icon: w['icon'],
          nsd: w['nearestStormDistance'],
          precip_intense: w['precipIntensity'],
          precip_intense_err: w['precipIntensityError'],
          precip_prob: w['precipProbability'],
          precip_type: w['precipType'],
          temp: w['temperature'],
          real_feel: w['apparentTemperature'],
          dew_point: w['dewPoint'],
          humidity: w['humidity'],
          pressure: w['pressure'],
          w_spd: w['windSpeed'],
          w_gst: w['windGust'],
          w_bear: w['windBearing'],
          c_cover: w['cloudCover'],
          uv_index: w['uvIndex'],
          visibility: w['visibility'],
          ozone: w['ozone']
      }
    end

    def self.current
      location = "#{LAT},#{LNG}"
      api = "#{URL}#{KEY}/"
      url = "#{api}#{location}"
      p url
      response = Faraday.get url
      p response.status
      case response.status

      when 200
        say 'Response from server, good!'
        parsed_data = parse_weather(url)
        arrange_data(parsed_data)
      end
    end

  end
end
