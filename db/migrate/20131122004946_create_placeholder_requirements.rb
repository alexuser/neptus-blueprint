class CreatePlaceholderRequirements < ActiveRecord::Migration
  def up
  	# entry_level_writing
  	c0 = Course.create(:name => "Entry Level Writing 1A")
    c1 = Course.create(:name => "Entry Level Writing 2A")

    # american_history_and_institutions
    c2 = Course.create(:name => "History 1A")
    c3 = Course.create(:name => "History 2A")

    # american_cultures
    c4 = Course.create(:name => "American Cultures 1A")
    c5 = Course.create(:name => "American Cultures 2A")

    # reading_and_composition
    c6 = Course.create(:name => "Reading and Composition 1A")
    c7 = Course.create(:name => "Reading and Composition 2A")
    
    # quantitative_reasoning
    c8 = Course.create(:name => "Quantitative Reasoning 1A")
    c9 = Course.create(:name => "Quantitative Reasoning 2A")

    # foreign_language_breadth
    c10 = Course.create(:name => "Foreign Language Breadth 1A")
    c11 = Course.create(:name => "Foreign Language Breadth 2A")

    # arts_and_literature
    c12 = Course.create(:name => "Arts and Literature 1A")
    c13 = Course.create(:name => "Arts and Literature 2A")
    
    # biological_science
    c14 = Course.create(:name => "Biological Science 1A")
    c15 = Course.create(:name => "Biological Science 2A")

    # historical_studies
    c16 = Course.create(:name => "Historical Studies 1A")
    c17 = Course.create(:name => "Historical Studies 2A")

    # international_studies
    c18 = Course.create(:name => "International Studies 1A")
    c19 = Course.create(:name => "International Studies 2A")

    # philosophy_and_values
    c20 = Course.create(:name => "Philosophy and Values 1A")
    c21 = Course.create(:name => "Philosophy and Values 2A")

    # physical_science
    c22 = Course.create(:name => "Physical Science 1A")
    c23 = Course.create(:name => "Physical Science 2A")

    # social_and_behavioral_sciences
    c24 = Course.create(:name => "Social and Behavioral Sciences 1A")
    c25 = Course.create(:name => "Social and Behavioral Sciences 2A")

    # entry_level_writing
    m0 = UniversityRequirement.create(:course_id => c0.id, :entry_level_writing => true, :american_history_and_institutions => false)
    m1 = UniversityRequirement.create(:course_id => c1.id, :entry_level_writing => true, :american_history_and_institutions => false)

    # american_history_and_institutions
    m2 = UniversityRequirement.create(:course_id => c2.id, :entry_level_writing => false, :american_history_and_institutions => true)
    m3 = UniversityRequirement.create(:course_id => c3.id, :entry_level_writing => false, :american_history_and_institutions => true)

    # american_cultures
    m4 = CampusRequirement.create(:course_id => c4.id, :american_cultures => true)
    m5 = CampusRequirement.create(:course_id => c5.id, :american_cultures => true)

    # reading_and_composition
    m6 = LsCollegeRequirement.create(:course_id => c6.id, :reading_and_composition => true)
    m7 = LsCollegeRequirement.create(:course_id => c7.id, :reading_and_composition => true)
    
    # quantitative_reasoning
    m8 = LsCollegeRequirement.create(:course_id => c8.id, :quantitative_reasoning => true) 
    m9 = LsCollegeRequirement.create(:course_id => c9.id, :quantitative_reasoning => true)
    
    # foreign_language_breadth
    m10 = LsCollegeRequirement.create(:course_id => c10.id, :foreign_language_breadth => true)
    m11 = LsCollegeRequirement.create(:course_id => c11.id, :foreign_language_breadth => true)
    
    # arts_and_literature
    m12 = LsCollegeRequirement.create(:course_id => c12.id, :arts_and_literature => true)
    m13 = LsCollegeRequirement.create(:course_id => c13.id, :arts_and_literature => true)
    
    # biological_science
    m14 = LsCollegeRequirement.create(:course_id => c14.id, :biological_science => true)
    m15 = LsCollegeRequirement.create(:course_id => c15.id, :biological_science => true)
    
    # historical_studies
    m16 = LsCollegeRequirement.create(:course_id => c16.id, :historical_studies => true)
    m17 = LsCollegeRequirement.create(:course_id => c17.id, :historical_studies => true)
    
    # international_studies
    m18 = LsCollegeRequirement.create(:course_id => c18.id, :international_studies => true)
    m19 = LsCollegeRequirement.create(:course_id => c19.id, :international_studies => true)
    
    # philosophy_and_values
    m20 = LsCollegeRequirement.create(:course_id => c20.id, :philosophy_and_values => true)
    m21 = LsCollegeRequirement.create(:course_id => c21.id, :philosophy_and_values => true)
    
    # physical_science
    m22 = LsCollegeRequirement.create(:course_id => c22.id, :physical_science => true)
    m23 = LsCollegeRequirement.create(:course_id => c23.id, :physical_science => true)

    # social_and_behavioral_sciences
    m24 = LsCollegeRequirement.create(:course_id => c24.id, :social_and_behavioral_sciences => true)
    m25 = LsCollegeRequirement.create(:course_id => c25.id, :social_and_behavioral_sciences => true)
  end

  def down
  end
end
