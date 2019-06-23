module Wetter
  module Storage
    class Create
      private

        def make_paths(logger)
          paths = [@conf_path, @stats_path, @stats_backup]
          logger.debug "The paths we're we're writing are #{paths}"
          for path in paths
            logger.debug "Writing #{path}"
            begin
              FileUtils.mkpath(path)
            rescue
              raise StandardError
            end
            logger.debug "Wrote #{path}"
          end
        end
        
      public

      def initialize(logger, root_filepath)
        @logger.debug "Root filepath is #{root_filepath}"

        conf_path  = [root_filepath, 'run', 'conf']
        @conf_path = File.join(conf_path)
        @logger.debug "Path for conf files is: #{@conf_path}"

        stats_path  = [root_filepath, 'run', 'stats']
        @stats_path = File.join(stats_path)
        @logger.debug "Path for stats files is: #{@stats_path}"

        stats_backup  = [@stats_path, 'backup']
        @stats_backup = File.join(stats_backup)
        @logger.debug "Path for stats backups is: #{@stats_backup}"

        @logger.debug 'Writing paths'
        make_paths(logger)
      end
    end
  end
end