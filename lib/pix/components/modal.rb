module Pix
  module Components
    class Modal < Phlex::HTML
      def template(&)
        dialog do
          article(&)
        end
      end
    end
  end
end
