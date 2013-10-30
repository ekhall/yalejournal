require 'spec_helper'

describe "suggests/index" do
  before(:each) do
    assign(:suggests, [
      stub_model(Suggest,
        :article => nil,
        :user => nil
      ),
      stub_model(Suggest,
        :article => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of suggests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
