require 'easy_logging'

require_relative 'lib/builder'
require_relative 'lib/signals'
require_relative 'lib/windows'
require_relative 'lib/manifest'

class Wetter
  class Gui
    include EasyLogging
    include Wetter::Gui::Windows

    def initialize(glade_path)
      logger.debug 'Initializing GUI'
      #start_builder(glade_path)
      #builder = @builder
      #logger.debug "Builder started: #{@builder}"
      logger.debug 'Time to build the window'
      Wetter::Gui::Windows::MainWin.new(glade_path)
    end

  end
end