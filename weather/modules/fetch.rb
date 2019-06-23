class Wetter
  class Weather
    class Fetch

      Api_Url = ''

      Api_Key = ''

      def temp
        data = JSON.parse(open("https://api.forecast.io/forecast/#{key}/#{coords}").read)

        data['temp']
      end

    end
  end
end