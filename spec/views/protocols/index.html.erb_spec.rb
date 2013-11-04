require 'spec_helper'

describe "protocols/index" do
  before(:each) do
    assign(:protocols, [
      stub_model(Protocol),
      stub_model(Protocol)
    ])
  end

  it "renders a list of protocols" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
