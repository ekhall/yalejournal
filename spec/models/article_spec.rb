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

require 'spec_helper'

describe Article do
  it { should validate_presence_of :name }
  it { should validate_presence_of :journal }
  it { should have_many :suggests }
  it { should have_many(:users).through(:suggests) }
end
