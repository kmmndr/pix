module Pix
  module PicoComponents
    class PicoProgress < Phlex::HTML
      def initialize(value: nil, max: nil)
        @value = value
        @max = max
      end

      def template(&)
        progress(value: @value, max: @max, &)
      end
    end
  end
end
