module Pix
  module Components
    class Nav < Phlex::HTML
      class NavGroup < Phlex::HTML
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
          @items << NavItem.new(...)
        end
      end

      class NavItem < Phlex::HTML
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
        @groups << NavGroup.new(...)
      end
    end
  end
end
