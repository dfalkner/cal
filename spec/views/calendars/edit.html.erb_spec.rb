require 'spec_helper'

describe "calendars/edit" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar,
      :ordo => nil,
      :celebration => nil
    ))
  end

  it "renders the edit calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendar_path(@calendar), "post" do
      assert_select "input#calendar_ordo[name=?]", "calendar[ordo]"
      assert_select "input#calendar_celebration[name=?]", "calendar[celebration]"
    end
  end
end
