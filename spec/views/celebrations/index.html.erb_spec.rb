require 'spec_helper'

describe "celebrations/index" do
  before(:each) do
    assign(:celebrations, [
      stub_model(Celebration,
        :label => "Label",
        :description => "MyText",
        :rank => nil,
        :color => nil,
        :season => nil,
        :ordo => nil,
        :kind => "Kind",
        :rule => "Rule"
      ),
      stub_model(Celebration,
        :label => "Label",
        :description => "MyText",
        :rank => nil,
        :color => nil,
        :season => nil,
        :ordo => nil,
        :kind => "Kind",
        :rule => "Rule"
      )
    ])
  end

  it "renders a list of celebrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Rule".to_s, :count => 2
  end
end
