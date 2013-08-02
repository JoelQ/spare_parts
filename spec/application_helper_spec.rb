require_relative '../helpers/application_helper'

class HelperTest
  include ApplicationHelper
end

describe ApplicationHelper, '#anchor_from_title' do
  it 'converts a title to snake case' do
    h = HelperTest.new
    expect(h.anchor_from_title('A Cool title')).to eq 'a_cool_title'
  end
end

describe ApplicationHelper, '#wrap_css_with_class' do
  it 'wraps each rule with the given class name' do
    css = "div {\n  background-color: red; }\n p {\n  color: yellow; }\n"
    wrapped_css = ".wrapper div {\n  background-color: red; }\n.wrapper p {\n  color: yellow; }\n"
    h = HelperTest.new

    expect(h.wrap_css_with_class(css, 'wrapper')).to eq wrapped_css
  end
end
