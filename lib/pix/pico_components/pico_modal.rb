module Pix
  module PicoComponents
    class PicoModal < Phlex::HTML
      def template(&)
        dialog do
          article(&)
        end
      end
    end
  end
end
