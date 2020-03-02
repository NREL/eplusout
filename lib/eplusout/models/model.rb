require 'json'

module EPlusOut
  module Models
    module Model
      def to_json
        to_h.to_json
      end
    end
  end
end