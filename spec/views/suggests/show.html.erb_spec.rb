require 'spec_helper'

describe "suggests/show" do
  before(:each) do
    @suggest = assign(:suggest, stub_model(Suggest,
      :article => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
