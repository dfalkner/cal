require 'spec_helper'

describe "calendars/new" do
  before(:each) do
    assign(:calendar, stub_model(Calendar,
      :ordo => nil,
      :celebration => nil
    ).as_new_record)
  end

  it "renders new calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendars_path, "post" do
      assert_select "input#calendar_ordo[name=?]", "calendar[ordo]"
      assert_select "input#calendar_celebration[name=?]", "calendar[celebration]"
    end
  end
end
