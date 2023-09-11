module Pix
  module PicoComponents
    class PicoDropdown < Phlex::HTML
      class PicoDropdownItem < Phlex::HTML
        def template(&)
          li(&)
        end
      end

      include Phlex::DeferredRender

      def initialize(summary)
        @items = []
        @summary = summary
      end

      def template(&)
        details(class: 'dropdown') do
          summary { @summary }

          ul do
            @items.each do |item|
              render item
            end
          end
        end
      end

      def with_item(...)
        @items << PicoDropdownItem.new(...)
      end
    end
  end
end
