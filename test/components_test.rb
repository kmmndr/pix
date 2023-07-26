require 'test_helper'
require 'phlex/testing/view_helper'

class ComponentsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_accordion
    output = render Pix::Components::Accordion.new('foo') do
      'bar'
    end
    assert_equal '<details><summary>foo</summary>bar</details>', output
  end
end
