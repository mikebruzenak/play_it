require 'rails_helper'

RSpec.describe "bubbles/new", :type => :view do
  before(:each) do
    assign(:bubble, Bubble.new(
      :title => "MyString",
      :tags => "",
      :content => "MyString"
    ))
  end

  it "renders new bubble form" do
    render

    assert_select "form[action=?][method=?]", bubbles_path, "post" do

      assert_select "input#bubble_title[name=?]", "bubble[title]"

      assert_select "input#bubble_tags[name=?]", "bubble[tags]"

      assert_select "input#bubble_content[name=?]", "bubble[content]"
    end
  end
end
