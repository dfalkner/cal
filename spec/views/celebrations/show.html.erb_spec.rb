require 'spec_helper'

describe "celebrations/show" do
  before(:each) do
    @celebration = assign(:celebration, stub_model(Celebration,
      :label => "Label",
      :description => "MyText",
      :rank => nil,
      :color => nil,
      :season => nil,
      :ordo => nil,
      :kind => "Kind",
      :rule => "Rule"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Label/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Kind/)
    rendered.should match(/Rule/)
  end
end
