require_relative 'lib/get'
require_relative 'lib/forecast'
require_relative '../common/hash_accessor'
module Weather
  include Weather::Get
  include HashAccessor

end
