module Pix
  module Components
    class Accordion < Phlex::HTML
      def initialize(summary)
        @summary = summary
      end

      def template
        details do
          summary { @summary }

          yield if block_given?
        end
      end
    end
  end
end
