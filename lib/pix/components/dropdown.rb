module Pix
  module Components
    class Dropdown < Phlex::HTML
      class DropdownItem < Phlex::HTML
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
        @items << DropdownItem.new(...)
      end
    end
  end
end
