require 'rails_helper'

RSpec.describe "bubbles/show", :type => :view do
  before(:each) do
    @bubble = assign(:bubble, Bubble.create!(
      :title => "Title",
      :tags => "",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Content/)
  end
end
