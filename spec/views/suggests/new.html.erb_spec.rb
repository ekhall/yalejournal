require 'spec_helper'

describe "suggests/new" do
  before(:each) do
    assign(:suggest, stub_model(Suggest,
      :article => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new suggest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", suggests_path, "post" do
      assert_select "input#suggest_article[name=?]", "suggest[article]"
      assert_select "input#suggest_user[name=?]", "suggest[user]"
    end
  end
end
