class Wetter
  class Gui
    class Builder

      @@builder = Gtk::Builder.new

      # TODO: Rename to start
      def self.start(glade_path, logger)
        logger.debug 'Starting UI builder object'
        @@builder
      end

      def self.build(logger, builder, target)
        case target

        when 'prefs'

          name   = 'Preferences Window'
          window = 'wetter_preferences_window'


        when 'main'
          name   = 'Main application window'
          window = 'wetter_application_window'

        when 'splash'
          name   = 'Splash screen'
          window = 'wetter_splash_window'
        end

        logger.debug "Received build request for #{name}"
        builder.get_object("#{window}")
      end


      logger.debug('Received builder command for')
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
