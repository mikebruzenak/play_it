require 'rails_helper'

RSpec.describe "Bubbles", :type => :request do
  describe "GET /bubbles" do
    it "works! (now write some real specs)" do
      get bubbles_path
      expect(response.status).to be(200)
    end
  end
end
