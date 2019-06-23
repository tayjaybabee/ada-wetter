#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

program :version, '0.1'
program :description, 'Delivers weather related data
from both the Dark Sky API and sensors within your home.
Traditionally with use of the ADAhome system'
program :help, 'Author', 'TJ Blackstone <t.blackstone@inspyre.tech>'

default_command :gui

command :gui do |c|
  c.syntax      = 'wetter gui [options]'
  c.description = 'Opens the ADAwetter applet GUI'
  c.action do |args, options|
    Wetter::Application::GUI.
