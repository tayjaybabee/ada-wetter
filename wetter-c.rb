#!/usr/bin/env ruby

require 'rubygems'
require 'commander'

class MyApplication
  include Commander::Methods
  # include whatever modules you need

  def run
    program :name, 'ada-wetter'
    program :version, '0.0.1'
    program :description, 'Stuff'

    command :gui do |c|
      c.syntax      = 'ada-wetter gui [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Gui
      end
    end

    command :cli do |c|
      c.syntax      = 'ada-wetter cli [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Cli
      end
    end

    command :backup do |c|
      c.syntax      = 'ada-wetter backup [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Backup
      end
    end

    command :restore do |c|
      c.syntax      = 'ada-wetter restore [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Restore
      end
    end

    command :plugin - install do |c|
      c.syntax      = 'ada-wetter plugin-install [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Plugin-install
      end
    end

    command :clean do |c|
      c.syntax      = 'ada-wetter clean [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Clean
      end
    end

    command :plugin - clean do |c|
      c.syntax      = 'ada-wetter plugin-clean [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Plugin-clean
      end
    end

    command :clean - plugins do |c|
      c.syntax      = 'ada-wetter clean-plugins [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Clean-plugins
      end
    end

    command :clean - conf do |c|
      c.syntax      = 'ada-wetter clean-conf [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Clean-conf
      end
    end

    command :clean - stats do |c|
      c.syntax      = 'ada-wetter clean-stats [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Clean-stats
      end
    end

    command :opt - out - all do |c|
      c.syntax      = 'ada-wetter opt-out-all [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Opt-out-all
      end
    end

    command :update do |c|
      c.syntax      = 'ada-wetter update [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Update
      end
    end

    command :show - stats do |c|
      c.syntax      = 'ada-wetter show-stats [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Show-stats
      end
    end

    command :show - conf do |c|
      c.syntax      = 'ada-wetter show-conf [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Show-conf
      end
    end

    command :show - stored - all do |c|
      c.syntax      = 'ada-wetter show-stored-all [options]'
      c.summary     = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Ada-wetter::Commands::Show-stored-all
      end
    end

    run!
  end
end

MyApplication.new.run if $0 == __FILE__
