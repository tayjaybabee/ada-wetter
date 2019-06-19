class Wetter
  class Prefs
    module Assemble


    end
    module TempStructs
      def self.settings
        {
            api_key:      nil,
            location:     nil,
            conf_path:    'application/run/conf/wetter.conf',
            backup_path:  'application/data/backups/',
            client_id:    nil,
            server_id:    nil,
            apps_allowed: []
        }
      end

      def self.stats
        {
            x_started:         0,
            day_one:           nil,
            day_one_ver:       nil,
            last_update:       nil,
            times_opened:      0,
            total_op_time:     nil,
            ds_api_calls:      0,
            ds_call_success:   0,
            ds_call_fail:      0,
            ds_lst_err:        nil,
            ds_api_data_total: nil,
            gc_api_calls:      0,
            gc_call_success:   0,
            gc_call_fail:      0,
            gc_lst_err:        nil,

        }
      end
    end

    module Window
      def self.builder
        puts 'You have successfully accessed me0'
      end
    end
  end
end
