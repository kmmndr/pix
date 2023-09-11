require 'test_helper'
require 'phlex/testing/view_helper'

class PicoComponentsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_pico_accordion
    output = render Pix::PicoComponents::PicoAccordion.new('foo') do
      'bar'
    end
    assert_equal '<details><summary>foo</summary>bar</details>', output
  end

  def test_pico_card
    output = render Pix::PicoComponents::PicoCard.new do
      'foo'
    end
    assert_equal '<article>foo</article>', output
  end

  def test_advanced_pico_card
    output = render Pix::PicoComponents::PicoCard.new do |card|
      card.header { 'foo' }
      card.main { 'bar' }
      card.footer { 'baz' }
    end
    assert_equal '<article><header>foo</header><main>bar</main><footer>baz</footer></article>', output
  end

  def test_pico_dropdown
    output = render Pix::PicoComponents::PicoDropdown.new('foo') do |dropdown|
      dropdown.with_item { 'bar' }
      dropdown.with_item { 'baz' }
    end
    assert_equal '<details class="dropdown"><summary>foo</summary><ul><li>bar</li><li>baz</li></ul></details>', output
  end

  def test_pico_modal
    output = render Pix::PicoComponents::PicoModal.new do
      'foo'
    end
    assert_equal '<dialog><article>foo</article></dialog>', output
  end

  def test_pico_nav
    output = render Pix::PicoComponents::PicoNav.new do |nav|
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

  def test_pico_progress
    output = render Pix::PicoComponents::PicoProgress.new
    assert_equal '<progress></progress>', output
  end

  def test_advanced_pico_progress
    output = render Pix::PicoComponents::PicoProgress.new(value: 10, max: 50)
    assert_equal '<progress value="10" max="50"></progress>', output
  end
end
