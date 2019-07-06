class Wetter
  module Gui
    module Windows
      module Main

        def self.create
          @main_window = @builder.get_object('wetter_application_window')
        end

        def self.show
          @main_window.show
        end

        def self.hide
          @main_window.hide
        end
      end
    end
  end
end
