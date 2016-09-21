require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :title => "MyString",
      :username => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_title[name=?]", "request[title]"

      assert_select "input#request_username[name=?]", "request[username]"

      assert_select "textarea#request_description[name=?]", "request[description]"
    end
  end
end
