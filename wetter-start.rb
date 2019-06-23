#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

program :name, 'wetter'
program :version, '0.0.1'
program :description, 'Wetter'

command :gui, do |c |
    c.syntax = 'wetter gui, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Gui,
  end
end

command :create_backup, do |c |
    c.syntax = 'wetter create_backup, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Create_backup,
  end
end

command :prune_backups, do |c |
    c.syntax = 'wetter prune_backups, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Prune_backups,
  end
end

command :update, do |c |
    c.syntax = 'wetter update, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Update,
  end
end

command :plugin - install, do |c |
    c.syntax = 'wetter plugin-install, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Plugin-install,
  end
end

command :conf - wizard, do |c |
    c.syntax = 'wetter conf-wizard, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Conf-wizard,
  end
end

command :clean, do |c |
    c.syntax = 'wetter clean, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Clean,
  end
end

command :settings - clean, do |c |
    c.syntax = 'wetter settings-clean, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Settings-clean,
  end
end

command :stats - clean, do |c |
    c.syntax = 'wetter stats-clean, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Stats-clean,
  end
end

command :profile - clean, do |c |
    c.syntax = 'wetter profile-clean, [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Profile-clean,
  end
end

command :reinstall - c do |c|
  c.syntax      = 'wetter reinstall-c [options]'
  c.summary     = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Wetter::Commands::Reinstall-c
  end
end

