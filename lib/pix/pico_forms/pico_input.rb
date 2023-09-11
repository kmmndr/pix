module Pix
  module PicoForms
    class PicoBasicInput < Phlex::HTML
      def initialize(placeholder: nil, aria_label: nil)
        @placeholder = placeholder
        @aria_label = aria_label || placeholder
      end

      def template(&)
        input_type = self.class.name
                         .split('::').last
                         .gsub(/^PicoInput/, '')
                         .downcase

        attrs = {
          type: input_type
        }
        attrs[:placeholder] = @placeholder unless @placeholder.nil?
        attrs['aria-label'] = @aria_label unless @aria_label.nil?

        input(**attrs)
      end
    end

    class PicoInputText < PicoBasicInput; end
    class PicoInputEmail < PicoBasicInput; end
    class PicoInputNumber < PicoBasicInput; end
    class PicoInputPassword < PicoBasicInput; end
    class PicoInputTel < PicoBasicInput; end
    class PicoInputUrl < PicoBasicInput; end
  end
end
