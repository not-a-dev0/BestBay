require "spec_helper"

describe "items/show.html.erb" do
  it "displays the item" do
    item = FactoryGirl.build(:item)
    assign(:item, item)

    render

    page = Capybara::Node::Simple.new( rendered )

    page.should have_content(item.name)
    page.should have_content(item.description)
    page.should have_content(item.opening_bid.to_s)
    page.should have_content(item.highest_bid.to_s)
    page.should have_css("img")
    #TODO: Improve the test for image. Ask Harshad and know if he did any changes to image URL with CSS
  end
end