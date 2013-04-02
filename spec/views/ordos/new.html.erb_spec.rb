require 'spec_helper'

describe "ordos/new" do
  before(:each) do
    assign(:ordo, stub_model(Ordo,
      :label => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new ordo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ordos_path, "post" do
      assert_select "input#ordo_label[name=?]", "ordo[label]"
      assert_select "input#ordo_description[name=?]", "ordo[description]"
    end
  end
end
