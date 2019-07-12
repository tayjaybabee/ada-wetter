module Configure
  module SetStruct

    @struct = Hash.new

    @struct = {
        api_key: nil,
        locale: nil,
        stats_enabled: false
    }

    def get_default

    end

  end
end