require 'spec_helper'

describe "ordos/edit" do
  before(:each) do
    @ordo = assign(:ordo, stub_model(Ordo,
      :label => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit ordo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ordo_path(@ordo), "post" do
      assert_select "input#ordo_label[name=?]", "ordo[label]"
      assert_select "input#ordo_description[name=?]", "ordo[description]"
    end
  end
end
