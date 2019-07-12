require 'easy_logging'
require 'gtk3'

require_relative '../gui'
require_relative 'windows'

class Wetter
  class Gui

    class Builder
      include EasyLogging
      include Gtk

=begin
      def get_object(target)
        Gtk::Builder.get_object(target)
      end

      def initialize(glade_path)
        logger.debug 'You reached me'
        logger.debug 'Starting UI builder object'
        @builder.add_from_file(glade_path)
        logger.debug 'Loading main window'
        @builder.get_object('wetter_app_main')
      end
=end
    end
  end
end
