require 'rails_helper'

RSpec.describe "writings/edit", type: :view do
  before(:each) do
    @writing = assign(:writing, Writing.create!())
  end

  it "renders the edit writing form" do
    render

    assert_select "form[action=?][method=?]", writing_path(@writing), "post" do
    end
  end
end
