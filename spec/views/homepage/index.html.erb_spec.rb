require 'spec_helper'

describe "homepage/index.html.erb" do
  it 'has list of publications with id #publications' do
    render
    expect(rendered).to have_selector('ul#publications')
  end

  it 'has publications on the list' do
    assign(:publications, [
      stub_model(Publication, content: 'First publication.'),
      stub_model(Publication, content: 'Second publication.')
    ])
    render
    rendered.should have_content('First publication.')
    rendered.should have_content('Second publication.')
  end
end
