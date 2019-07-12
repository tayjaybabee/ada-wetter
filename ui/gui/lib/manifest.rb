require 'easy_logging'
class Wetter
  class Gui
    class Manifest
      include EasyLogging

      # This function will check the contents/existence of
      # @list
      def check_contents

        # If @list exists then report it's contents
        # otherwise report false
        if @list.nil?
          false
        else
          logger.debug format('Contents of the manifest are: %<list>', list: @list)
          @list
        end

      end

      # Create a new manifest.
      def initialize(name)
        logger.debug "Initializing a new manifest named #{name}"
        @list = %w[]
      end

      # A library for Manifest, Item
      module Item

        def add(item)
          logger.debug 'Received call to add new item to list'
        end

        def remove(item)
          logger.debug 'Received call to remove item from manifest'
        end


      end

        def rem_

      end
    end
  end
end