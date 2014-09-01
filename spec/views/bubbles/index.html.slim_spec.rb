require 'rails_helper'

RSpec.describe "bubbles/index", :type => :view do
  before(:each) do
    assign(:bubbles, [
      Bubble.create!(
        :title => "Title",
        :tags => "",
        :content => "Content"
      ),
      Bubble.create!(
        :title => "Title",
        :tags => "",
        :content => "Content"
      )
    ])
  end

  it "renders a list of bubbles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
