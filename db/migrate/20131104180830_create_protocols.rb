class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.string :title
      t.text :objective
      t.text :included_patients
      t.text :excluded_patients
      t.text :definitions
      t.text :etiology
      t.text :natural_history
      t.text :risk_stratification
      t.text :outcomes
      t.text :cp_ros
      t.text :cp_physical_exam
      t.text :cp_diagnostic_testing
      t.text :cp_genotyping
      t.text :decision_tree_support
      t.text :medical_interventions
      t.text :surgical_considerations
      t.text :adl_recommendations
      t.text :special_cosiderations
      t.text :plausible_outcomes
      t.text :references

      t.timestamps
    end
  end
end
