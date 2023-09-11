module Pix
  module Forms
    class BasicInput < Phlex::HTML
      def initialize(placeholder: nil, aria_label: nil)
        @placeholder = placeholder
        @aria_label = aria_label || placeholder
      end

      def template(&)
        input_type = self.class.name
                         .split('::').last
                         .gsub(/^Input/, '')
                         .downcase

        attrs = {
          type: input_type
        }
        attrs[:placeholder] = @placeholder unless @placeholder.nil?
        attrs['aria-label'] = @aria_label unless @aria_label.nil?

        input(**attrs)
      end
    end

    class InputText < BasicInput; end
    class InputEmail < BasicInput; end
    class InputNumber < BasicInput; end
    class InputPassword < BasicInput; end
    class InputTel < BasicInput; end
    class InputUrl < BasicInput; end
  end
end
