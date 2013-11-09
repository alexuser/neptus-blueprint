class CreateRequirements < ActiveRecord::Migration
  def up
  	c0 = Course.create(:name => "English 001A")
    c1 = Course.create(:name => "Math 1A")
    c2 = Course.create(:name => "Math 2A")
    c3 = Course.create(:name => "Math 3A")
    c4 = Course.create(:name => "CS 61A")
    c5 = Course.create(:name => "CS 61B")
    c6 = Course.create(:name => "German 1")
    c7 = Course.create(:name => "Japanse 2")
    c8 = Course.create(:name => "Holy Shit")
    c9 = Course.create(:name => "Holy Crap")
    c10 =Course.create(:name => "African AMerican 152")
    c11 =Course.create(:name => "Art History")
    c12 =Course.create(:name => "Asian Studies")
    c13 =Course.create(:name => "Celtic Studies")
    
    m0 = UniversityRequirement.create(:course_id => c0.id, :entry_level_writing => true, :american_history_and_institutions => true)
    m1 = UniversityRequirement.create(:course_id => c1.id, :entry_level_writing => true, :american_history_and_institutions => true)
    m2 = CampusRequirement.create(:course_id => c2.id, :american_cultures => true)
    m3 = LsCollegeRequirement.create(:course_id => c3.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m4 = LsCollegeRequirement.create(:course_id => c4.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m5 = LsCollegeRequirement.create(:course_id => c5.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m6 = LsCollegeRequirement.create(:course_id => c6.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m7 = LsCollegeRequirement.create(:course_id => c7.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m9 = LsCollegeRequirement.create(:course_id => c9.id, :arts_and_literature => true, :biological_science => true, :course_id => true, :foreign_language_breadth => true, :historical_studies => true, :international_studies => true, :philosophy_and_values => true, :physical_science => true, :quantitative_reasoning => true, :reading_and_composition => true, :social_and_behavioral_sciences => true)
    m10 = CampusRequirement.create(:course_id => c10.id, :american_cultures => true)
    m11 = CampusRequirement.create(:course_id => c11.id, :american_cultures => true)
    m12 = UniversityRequirement.create(:course_id => c12.id, :entry_level_writing => true, :american_history_and_institutions => true)
    m13 = UniversityRequirement.create(:course_id => c13.id, :entry_level_writing => true, :american_history_and_institutions => true)
  end

  def down
  end
end
