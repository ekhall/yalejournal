# == Schema Information
#
# Table name: protocols
#
#  id                      :integer          not null, primary key
#  title                   :string(255)
#  objective               :text
#  included_patients       :text
#  excluded_patients       :text
#  definitions             :text
#  etiology                :text
#  natural_history         :text
#  risk_stratification     :text
#  outcomes                :text
#  cp_ros                  :text
#  cp_physical_exam        :text
#  cp_diagnostic_testing   :text
#  cp_genotyping           :text
#  decision_tree_support   :text
#  medical_interventions   :text
#  surgical_considerations :text
#  adl_recommendations     :text
#  special_cosiderations   :text
#  plausible_outcomes      :text
#  references              :text
#  created_at              :datetime
#  updated_at              :datetime
#

class Protocol < ActiveRecord::Base
  validates :title, presence: true
  validates :objective, presence: true
  validates :included_patients, presence: true
  validates :excluded_patients, presence: true
  validates :definitions, presence: true
  validates :references, presence: true

  def self.link_to_markdown(pmid)
    "[[Reference]](http://www.ncbi.nlm.nih.gov/pubmed/#{pmid})"
  end
end
