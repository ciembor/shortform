require 'spec_helper'

feature 'Homepage' do
  let(:first_publication) { Publication.create(content: 'First publication.') }
  let(:second_publication) { Publication.create(content: 'Second publication.') }

  describe 'includes list of the newest publications' do
    before do
      visit '/'
    end

    it 'which is rendered' do
      publications = page.find('#publications')
      expect(publications).to have_content(first_publication.content)
      expect(publications).to have_content(second_publication.content)
    end

    it 'which is ordered from the newest to the oldest publications' do
      page.should have_selector('ul:nth-child(1)', text: first_publication.content)
      page.should have_selector('ul:nth-child(2)', text: second_publication.content)
    end
  end
end
