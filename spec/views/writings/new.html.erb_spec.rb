require 'rails_helper'

RSpec.describe "writings/new", type: :view do
  before(:each) do
    assign(:writing, Writing.new())
  end

  it "renders new writing form" do
    render

    assert_select "form[action=?][method=?]", writings_path, "post" do
    end
  end
end
