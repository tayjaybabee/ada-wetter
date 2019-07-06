require 'easy_logging'
require 'gtk3'

class Wetter
  module Gui
    module Builder
      include EasyLogging
      include Gtk

      # TODO: Rename to start
      def self.start(glade_path)
        logger.debug 'Starting UI builder object'
        @@builder = Gtk::Builder.new
      end

      def self.get_object(object)

        @@builder.get_object(object)

      end

      def self.register(code, name, window)
        case code

        when 1
          @@main_window = @@builder.get_object(window)

        when 2
          @@prefs_window = @@builder.get_object(window)

        when 3
          @@splash_window = @@builder.get_object(window)

        end
      end

      def self.build(target)

        case target

        when 'prefs'

          name   = 'Preferences Window'
          window = 'wetter_app_preferences_win'
          code   = 2

        when 'main'
          name   = 'Main application window'
          window = 'wetter_application_win'
          code   = 1

        when 'splash'
          name   = 'Splash screen'
          window = 'wetter_app_splash_win'
          code   = 3
        end

        logger.debug "Received build request for #{name}"
        logger.debug "Build #{name}, registering...."
        register(code, name, window)
      end

      def self.build_splash_window(logger, builder)
        logger
      end

      def self.build_main_window(logger, builder)
        logger.debug 'Building Main Window object'
        builder.get_object('wetter_application_window')
      end

      def self.build_preferences_window(logger, builder)
        logger.debug 'Building Preferences Window object'
        builder.get_object('wetter_preferences_window')
      end
    end
  end
end
