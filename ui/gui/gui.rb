require_relative 'lib/builder'
require_relative 'lib/signals'
require_relative 'lib/windows'

class Wetter
  module Gui
    include Wetter::Gui::Windows::Main
  end
end