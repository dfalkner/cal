require 'spec_helper'

describe "celebrations/new" do
  before(:each) do
    assign(:celebration, stub_model(Celebration,
      :label => "MyString",
      :description => "MyText",
      :rank => nil,
      :color => nil,
      :season => nil,
      :ordo => nil,
      :kind => "MyString",
      :rule => "MyString"
    ).as_new_record)
  end

  it "renders new celebration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebrations_path, "post" do
      assert_select "input#celebration_label[name=?]", "celebration[label]"
      assert_select "textarea#celebration_description[name=?]", "celebration[description]"
      assert_select "input#celebration_rank[name=?]", "celebration[rank]"
      assert_select "input#celebration_color[name=?]", "celebration[color]"
      assert_select "input#celebration_season[name=?]", "celebration[season]"
      assert_select "input#celebration_ordo[name=?]", "celebration[ordo]"
      assert_select "input#celebration_kind[name=?]", "celebration[kind]"
      assert_select "input#celebration_rule[name=?]", "celebration[rule]"
    end
  end
end
