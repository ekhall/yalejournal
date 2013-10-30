# == Schema Information
#
# Table name: articles
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  journal               :string(255)
#  presentation_date     :date
#  publication_date      :date
#  presentation_comments :text
#  created_at            :datetime
#  updated_at            :datetime
#

class Article < ActiveRecord::Base
  has_many  :suggests
  has_many  :users, through: :suggests
  validates :name, presence: true
  validates :journal, presence: true
end
