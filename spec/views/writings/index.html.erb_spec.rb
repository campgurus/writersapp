require 'rails_helper'

RSpec.describe "writings/index", type: :view do
  before(:each) do
    assign(:writings, [
      Writing.create!(),
      Writing.create!()
    ])
  end

  it "renders a list of writings" do
    render
  end
end
