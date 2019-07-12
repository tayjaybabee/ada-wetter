class Wetter
  class Gui
    module Signals

      module OnButtonClick

        def main_prefs
          @logger.debug "Current program settings are: #{@settings}"
          @logger.debug 'Calling on preference field builder'
          build_pref_fields
          @api_buffer.text = if !@settings[:api_key].nil?
                               @settings[:api_key]
                             else
                               'This has not been set'
                             end

          @logger.debug("API Key is: #{@api_buffer.text}")
          @api_show.show
          @prefs_window.show
          @api_show.text = (@api_buffer.text)
        end

      end
    end
  end
end