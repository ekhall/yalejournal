module ProtocolsHelper
  def proper_name(field)
    name = {title: "Protocol Title *",
            objective: "Objective *",
            included_patients: "Included Patients *",
            excluded_patients: "Excluded Patients *",
            definitions: "Definitions *",
            etiology: "Etiology",
            natural_history: "Natural History",
            risk_stratification: "Risk Stratification",
            outcomes: "Outcomes",
            cp_ros: "Clinical Presentation, Review of Symptoms",
            cp_physical_exam: "Clinical Presentation, Pertenint Exam Findings",
            cp_diagnostic_testing: "Clinical Presentation, Diagnostic Testing",
            cp_genotyping: "Clinical Presentation, Role for Genotyping",
            decision_tree_support: "Clinical Decision Tree Support",
            medical_interventions: "Medical Interventions",
            surgical_considerations: "Surgical Considerations",
            adl_recommendations: "Activity Recommendations/Proscriptions",
            special_considerations: "Special Considerations",
            plausible_outcomes: "Plausible Outcomes",
            references: "References"}
    name[field]
  end

  def linecount(field)
    [@protocol[field].lines.count+1,3].max
  end
end
