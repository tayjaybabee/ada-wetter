class Wetter
  module Gui
    class Windows

      module Prefs

        def create(logger)
          @prefs_window = @builder.get_object('wetter_app_prefs_win')
        end

        def show
          @prefs_window.show
        end

        def hide
          @prefs_window.hide
        end

      end
    end
  end
end