# == Schema Information
#
# Table name: suggests
#
#  id         :integer          not null, primary key
#  article_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Suggest do
  let(:user)    { FactoryGirl.create(:user) }
  let(:article) { FactoryGirl.create(:article) }
  let(:suggest) { user.suggests.build(article_id: article.id) }

  subject { suggest }

  it { should be_valid }
  describe "suggest methods" do
    it { should respond_to :article }
    it { should respond_to :user }
    its(:article) { should eq article }
    its(:user) { should eq user }
  end

  describe "when article id is not present" do
    before { suggest.article_id = nil }
    it { should_not be_valid }
  end

  describe "when user id is not present" do
    before { suggest.user_id = nil }
    it { should_not be_valid }
  end
end
