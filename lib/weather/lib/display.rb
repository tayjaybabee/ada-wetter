require 'terminal-table'

require_relative '../resources/icons'

module Weather
  module Display
    include Weather::Icons

    def self.table_1(temp, feels, summary, icon)
      icons = Weather::Icons
      therm = icons.thermometer

      therm = "#{therm}°F"

      temp = "#{temp}#{therm}"
      feels = "#{feels}#{therm}"

      sum_icon = Weather::Icons.which_icon(icon)

      summary = "#{sum_icon} :: #{summary}"


      table = Terminal::Table.new do |t|
        t << ['Temp', temp]
        t << :separator
        t.add_row ["Feels Like", feels]
        t.add_separator
        t.add_row ['Summary', summary]
      end
      puts table
    end
  end
end
