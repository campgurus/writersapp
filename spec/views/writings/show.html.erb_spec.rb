require 'rails_helper'

RSpec.describe "writings/show", type: :view do
  before(:each) do
    @writing = assign(:writing, Writing.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
