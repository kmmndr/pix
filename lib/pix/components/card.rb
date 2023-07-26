module Pix
  module Components
    class Card < Phlex::HTML
      def template(&)
        article(&)
      end
    end
  end
end
