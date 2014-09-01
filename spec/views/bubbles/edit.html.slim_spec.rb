require 'rails_helper'

RSpec.describe "bubbles/edit", :type => :view do
  before(:each) do
    @bubble = assign(:bubble, Bubble.create!(
      :title => "MyString",
      :tags => "",
      :content => "MyString"
    ))
  end

  it "renders the edit bubble form" do
    render

    assert_select "form[action=?][method=?]", bubble_path(@bubble), "post" do

      assert_select "input#bubble_title[name=?]", "bubble[title]"

      assert_select "input#bubble_tags[name=?]", "bubble[tags]"

      assert_select "input#bubble_content[name=?]", "bubble[content]"
    end
  end
end
