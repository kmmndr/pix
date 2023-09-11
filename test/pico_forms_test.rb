require 'test_helper'
require 'phlex/testing/view_helper'

class PicoFormsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_pico_basic_inputs
    output = render Pix::PicoForms::PicoInputText.new(placeholder: 'foo')
    assert_equal '<input type="text" placeholder="foo" aria-label="foo">', output
  end
end
