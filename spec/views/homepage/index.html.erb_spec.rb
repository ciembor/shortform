require 'spec_helper'

describe "homepage/index.html.erb" do
  it 'has list of publications with id #publications' do
    render
    expect(rendered).to have_selector('ul#publications')
  end
end
