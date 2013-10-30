require 'spec_helper'

describe "suggests/edit" do
  before(:each) do
    @suggest = assign(:suggest, stub_model(Suggest,
      :article => nil,
      :user => nil
    ))
  end

  it "renders the edit suggest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", suggest_path(@suggest), "post" do
      assert_select "input#suggest_article[name=?]", "suggest[article]"
      assert_select "input#suggest_user[name=?]", "suggest[user]"
    end
  end
end
