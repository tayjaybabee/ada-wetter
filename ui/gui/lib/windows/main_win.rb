require 'gtk3'
require 'easy_logging'
#require_relative '../builder'

class Wetter
  class Gui
    module Windows
      class MainWin
        include Gtk
        include EasyLogging
        @assembler = Gtk::Builder.new

        def buildable(app_schema)
          @assembler.add_from_file(app_schema)

        end

        def build(app_schema)
          logger.debug 'Received call to build main window'
          logger.debug 'Creating builder'
          p buildable(app_schema)
          logger.debug 'Building from XML file.'
          @main_window = @assembler.get_object('wetter_app_main')
        end

        def self.initialize(app_schema)
          logger.debug 'Received call to create Main Window'
          logger.debug 'Calling on builder...'
          build(app_schema)
        end

        def self.show
          logger.debug 'Received call to show Main Window'
          logger.info 'Showing Main Window'
          @main_window.show
          logger.debug 'Main window shown.'
        end

        def self.hide
          logger.debug 'Received call to hide main window object'
          logger.info 'Hiding main window object'
          @main_window.hide
          logger.info 'Main window object hidden'
        end
      end
    end
  end
end
