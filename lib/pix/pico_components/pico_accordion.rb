module Pix
  module PicoComponents
    class PicoAccordion < Phlex::HTML
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
