require 'spec_helper'

describe HomepageController do

  describe "GET 'index'" do
    let!(:publication) { Publication.create(content: 'First publication.') }

    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
    it "assigns @publications" do
      get :index
      expect(assigns(:publications)).to eq([publication])
    end
  end

end
