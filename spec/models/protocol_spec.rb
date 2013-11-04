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

require 'spec_helper'

describe Protocol do
  before do
    @protocol = FactoryGirl.create(:protocol)
  end
  subject { @protocol }

  it { should be_valid }
  it { should validate_presence_of :title }
  it { should validate_presence_of :objective }
  it { should respond_to :included_patients }
  it { should respond_to :excluded_patients }
  it { should respond_to :definitions }
  it { should respond_to :etiology }
  it { should respond_to :natural_history }
  it { should respond_to :risk_stratification }
  it { should respond_to :outcomes }
  it { should respond_to :cp_ros }
  it { should respond_to :cp_physical_exam }
  it { should respond_to :cp_diagnostic_testing }
  it { should respond_to :cp_genotyping }
  it { should respond_to :decision_tree_support }
  it { should respond_to :medical_interventions }
  it { should respond_to :surgical_considerations }
  it { should respond_to :adl_recommendations }
  it { should respond_to :special_considerations }
  it { should respond_to :plausible_outcomes }
  it { should respond_to :references }
end
