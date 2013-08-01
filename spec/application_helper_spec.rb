require_relative '../helpers/application_helper'
describe ApplicationHelper, '#anchor_from_title' do
  class HelperTest
    include ApplicationHelper
  end

  it 'converts a title to snake case' do
    h = HelperTest.new
    expect(h.anchor_from_title('A Cool title')).to eq 'a_cool_title'
  end
end
