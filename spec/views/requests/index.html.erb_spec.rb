require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :title => "Title",
        :username => "Username",
        :description => "MyText"
      ),
      Request.create!(
        :title => "Title",
        :username => "Username",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
