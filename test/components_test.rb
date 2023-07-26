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

  def test_card
    output = render Pix::Components::Card.new do
      'foo'
    end
    assert_equal '<article>foo</article>', output
  end

  def test_advanced_card
    output = render Pix::Components::Card.new do |card|
      card.header { 'foo' }
      card.main { 'bar' }
      card.footer { 'baz' }
    end
    assert_equal '<article><header>foo</header><main>bar</main><footer>baz</footer></article>', output
  end
end
