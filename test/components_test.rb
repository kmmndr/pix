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

  def test_dropdown
    output = render Pix::Components::Dropdown.new('foo') do |dropdown|
      dropdown.with_item { 'bar' }
      dropdown.with_item { 'baz' }
    end
    assert_equal '<details class="dropdown"><summary>foo</summary><ul><li>bar</li><li>baz</li></ul></details>', output
  end

  def test_modal
    output = render Pix::Components::Modal.new do
      'foo'
    end
    assert_equal '<dialog><article>foo</article></dialog>', output
  end

  def test_nav
    output = render Pix::Components::Nav.new do |nav|
      nav.with_group do |group|
        group.with_item { 'foo' }
      end
      nav.with_group do |group|
        group.with_item { 'bar' }
        group.with_item { 'baz' }
      end
    end
    assert_equal '<nav><ul><li>foo</li></ul><ul><li>bar</li><li>baz</li></ul></nav>', output
  end
end
