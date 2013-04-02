require 'spec_helper'

describe "ordos/index" do
  before(:each) do
    assign(:ordos, [
      stub_model(Ordo,
        :label => "Label",
        :description => "Description"
      ),
      stub_model(Ordo,
        :label => "Label",
        :description => "Description"
      )
    ])
  end

  it "renders a list of ordos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
