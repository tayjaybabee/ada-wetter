require_relative 'get'
require_relative '../weather'
require_relative 'display'
require_relative '../../common/hash_accessor'

module Weather
  class Forecast
    include Weather::Get
    include Weather::Display
    extend HashAccessor


    def initialize
      current = Weather::Get.current
      current = current.to_hash
      current.each_value{|v| p v}
      HashAccessor.hash_accessor(current)
      temp = current[:temp]
      feels = current[:real_feel]
      summary = current[:summary]
      icon = current[:icon]
      Weather::Display.table_1(temp, feels, summary, icon)
    end


  end
end