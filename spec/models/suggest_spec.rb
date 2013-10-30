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
  it { should belong_to :article }
  it { should belong_to :user }
end
