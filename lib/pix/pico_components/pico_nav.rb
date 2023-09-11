module Pix
  module PicoComponents
    class PicoNav < Phlex::HTML
      class PicoNavGroup < Phlex::HTML
        include Phlex::DeferredRender

        def initialize
          @items = []
        end

        def template(&)
          ul do
            @items.each do |item|
              render item
            end
          end
        end

        def with_item(...)
          @items << PicoNavItem.new(...)
        end
      end

      class PicoNavItem < Phlex::HTML
        def template(&)
          li(&)
        end
      end

      include Phlex::DeferredRender

      def initialize
        @groups = []
      end

      def template(&)
        nav do
          @groups.each do |group|
            render group
          end
        end
      end

      def with_group(...)
        @groups << PicoNavGroup.new(...)
      end
    end
  end
end
