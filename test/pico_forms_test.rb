require 'test_helper'
require 'phlex/testing/view_helper'

class PicoFormsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_pico_basic_inputs
    output = render Pix::PicoForms::PicoInputText.new(placeholder: 'Text')
    assert_equal '<input type="text" placeholder="Text" aria-label="Text">', output

    output = render Pix::PicoForms::PicoInputEmail.new(placeholder: 'Email')
    assert_equal '<input type="email" placeholder="Email" aria-label="Email">', output

    output = render Pix::PicoForms::PicoInputNumber.new(placeholder: 'Number')
    assert_equal '<input type="number" placeholder="Number" aria-label="Number">', output

    output = render Pix::PicoForms::PicoInputPassword.new(placeholder: 'Password')
    assert_equal '<input type="password" placeholder="Password" aria-label="Password">', output

    output = render Pix::PicoForms::PicoInputTel.new(placeholder: 'Tel')
    assert_equal '<input type="tel" placeholder="Tel" aria-label="Tel">', output

    output = render Pix::PicoForms::PicoInputUrl.new(placeholder: 'Url')
    assert_equal '<input type="url" placeholder="Url" aria-label="Url">', output
  end
end
