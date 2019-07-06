require 'easy_logging'
require 'fileutils'

class Wetter
  module Prefs
    include EasyLogging
    include FileUtils

    def self.load_conf

      p FileUtils.pwd

    end

    def self.configure

      logger.debug 'Received call to configure application'
      load_conf

    end

    def self.reconfigure

      logger.debug 'Received call to re-configure application'

    end

    def is_conf?

    end

  end
end
