module Weather
  module Icons

    def self.which_icon(icon)
      case icon

      when 'partly-cloudy-night', 'partly-cloudy-day'
        partly_cloudy
      when 'clear-day'
        clear_day
      when 'clear-night'
        clear_night
      when 'rain'
        rain
      when 'snow'
        snow
      when 'sleet'
        sleet
      when 'cloudy'
        cloudy
      end
    end

    def self.clear_day
      '☼'
    end

    def self.clear_night
      '☀'

    end

    def self.rain
      '🌧'
    end

    def self.snow
      '☃'
    end

    def self.sleet
      '☄'
    end

    def self.fog
      '🌫'
    end

    def self.cloudy
      '☁'
    end

    def self.partly_cloudy
      '⛅'
    end

    def self.thermometer
      '🌡'
    end

  end
end

