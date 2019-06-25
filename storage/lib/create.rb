class Wetter
  module Storage
    class Create

      def make_paths(logger, paths)
        for name in paths { |name, path|
          path = File.join(path)

          logger.debug "Now writing #{name}"
          FileUtils.mkpath(path)
          logger.debug "Finished writing #{name}"
        }
        end
      end

      def initialize(logger, root_filepath)
        @logger.debug "Root filepath is #{root_filepath}"
        paths = [
            [root_filepath, 'run', 'conf'],
            [root_filepath, 'run', 'stats'],
            [root_filepath, 'run', 'stats', 'backups']
        ]

        path_names = [
            'Configuration',
            'Stats',
            'Stats backup'
        ]

        path_names.map(&:to_sym).zip(paths).to_h

        path_hash = path_names.map(&:to_sym).zip(paths).to_h

        make_paths(logger, path_hash)
      end
    end
  end
end
