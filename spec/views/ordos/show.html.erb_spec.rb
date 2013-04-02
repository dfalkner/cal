require 'spec_helper'

describe "ordos/show" do
  before(:each) do
    @ordo = assign(:ordo, stub_model(Ordo,
      :label => "Label",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Label/)
    rendered.should match(/Description/)
  end
end
