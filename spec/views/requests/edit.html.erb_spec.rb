require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :title => "MyString",
      :username => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_title[name=?]", "request[title]"

      assert_select "input#request_username[name=?]", "request[username]"

      assert_select "textarea#request_description[name=?]", "request[description]"
    end
  end
end
