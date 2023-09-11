module Pix
  module PicoComponents
    class PicoCard < Phlex::HTML
      def template(&)
        article(&)
      end
    end
  end
end
