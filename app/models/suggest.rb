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

class Suggest < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
end
