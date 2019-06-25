class Wetter
  module Gui
    class Windows
      module Main

        def create(logger)
          @main_window = @builder.get_object('wetter_application_window')
        end

        def show
          @main_window.show
        end

        def hide
          @main_window.hide
        end
      end
    end
  end
end
