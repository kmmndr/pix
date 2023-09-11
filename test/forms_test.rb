require 'test_helper'
require 'phlex/testing/view_helper'

class FormsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_basic_inputs
    output = render Pix::Forms::InputText.new(placeholder: 'foo')
    assert_equal '<input type="text" placeholder="foo" aria-label="foo">', output
  end
end
