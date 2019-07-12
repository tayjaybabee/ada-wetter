require 'open-uri'
require 'net/https'
require 'time'
require 'faraday'
require 'commander'
require 'json'

require_relative '../../lib/weather/weather'

module Configure
  class Shell
    include Weather::Get

    def splash
      sands = [1, 2, 3, 4, 5]
      progress sands do
        say 'Starting weather aggrigator'
        sands.pop
        sleep(2)
        p sands.to_s
      end
    end

    def initialize

      splash

      puts

      system('clear')

      say("<%= BLINK %>What would you like to do?<%= CLEAR %>")
      loop do
        choose do |menu|

          menu.shell  = true
          menu.index_color = :blue

          menu.choice(:weather, "Look at a progress bar") do |_command, details|
            Weather::Forecast.new
          end
          menu.choice(:quit, "Exit program.") { exit }
        end
      end
    end
  end
end


