require 'spec_helper'

describe ProfilepageController do
  describe 'filter' do
      it "filter" do
      	c1 = Course.create(:id => 123456789123456789, :name => 'a')
      	u1 = CampusRequirement.create(:course_id => 123456789123456789, :american_cultures => true)
      	u11 = UniversityRequirement.create(:course_id => 123456789123456789, :american_history_and_institutions => false,
           :entry_level_writing => false)
        u111 = LsCollegeRequirement.create(:course_id => 123456789123456789, :arts_and_literature => false, :biological_science => false, 
           :foreign_language_breadth => false, :historical_studies => false, :international_studies => false, :philosophy_and_values => false,
           :physical_science => false, :quantitative_reasoning => false, :reading_and_composition => false, :social_and_behavioral_sciences => false)
        c2 = Course.create(:id => 1234567891234567891, :name => 'b')
      	u2 = CampusRequirement.create(:course_id => 1234567891234567891, :american_cultures => false)
        u22 = UniversityRequirement.create(:course_id => 1234567891234567891, :american_history_and_institutions => true,
           :entry_level_writing => false)
        u222 = LsCollegeRequirement.create(:course_id => 1234567891234567891, :arts_and_literature => false, :biological_science => false, 
           :foreign_language_breadth => false, :historical_studies => false, :international_studies => false, :philosophy_and_values => false,
           :physical_science => false, :quantitative_reasoning => false, :reading_and_composition => false, :social_and_behavioral_sciences => false)
      	c3 = Course.create(:id => 1234567891234567892, :name => 'c')
      	u3 = CampusRequirement.create(:course_id => 1234567891234567892, :american_cultures => false)
        u33 = UniversityRequirement.create(:course_id => 1234567891234567892, :american_history_and_institutions => false,
          :entry_level_writing => true)
        u333 = LsCollegeRequirement.create(:course_id => 1234567891234567892, :arts_and_literature => false, :biological_science => false, 
           :foreign_language_breadth => false, :historical_studies => false, :international_studies => false, :philosophy_and_values => false,
           :physical_science => false, :quantitative_reasoning => false, :reading_and_composition => false, :social_and_behavioral_sciences => false)
        c4 = Course.create(:id => 1234567891234567893, :name => 'd')
      	u4 = CampusRequirement.create(:course_id => 1234567891234567893, :american_cultures => false)
        u44 = UniversityRequirement.create(:course_id => 1234567891234567893, :american_history_and_institutions => false,
          :entry_level_writing => false)
        u444 = LsCollegeRequirement.create(:course_id => 1234567891234567893, :arts_and_literature => true, :biological_science => false, 
           :foreign_language_breadth => false, :historical_studies => false, :international_studies => false, :philosophy_and_values => false,
           :physical_science => false, :quantitative_reasoning => false, :reading_and_composition => false, :social_and_behavioral_sciences => false)
 		    c5 = Course.create(:id => 1234567891234567894, :name => 'e')
      	u5 = LsCollegeRequirement.create(:course_id => 1234567891234567894, :biological_science => true)
		    c6 = Course.create(:id => 1234567891234567895, :name => 'f')
      	u6 = LsCollegeRequirement.create(:course_id => 1234567891234567895, :foreign_language_breadth => true)
 		    c7 = Course.create(:id => 1234567891234567896, :name => 'g')
      	u7 = LsCollegeRequirement.create(:course_id => 1234567891234567896, :historical_studies => true)
        c8 = Course.create(:id => 1234567891234567897, :name => 'h')
      	u8 = LsCollegeRequirement.create(:course_id => 1234567891234567897, :international_studies => true)
      	c9 = Course.create(:id => 1234567891234567898, :name => 'i')
      	u9 = LsCollegeRequirement.create(:course_id => 1234567891234567898, :philosophy_and_values => true)
        c10 = Course.create(:id => 1234567891234567899, :name => 'j')
      	u10 = LsCollegeRequirement.create(:course_id => 1234567891234567899, :physical_science => true)
 		    c11 = Course.create(:id => 12345678912345, :name => 'k')
      	u11 = LsCollegeRequirement.create(:course_id => 12345678912345, :quantitative_reasoning => true)
        c12 = Course.create(:id => 12345678912346, :name => 'l')
      	u12 = LsCollegeRequirement.create(:course_id => 12345678912346, :reading_and_composition => true)
      	c13 = Course.create(:id => 12345678912347, :name => 'm')
      	u13 = LsCollegeRequirement.create(:course_id => 12345678912347, :social_and_behavioral_sciences => true)
      	c = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13]
        s = ['american_cultures', 'american_history_and_institutions',
      		'entry_level_writing','arts_and_literature','biological_science',
      		'foreign_language_breadth','historical_studies','international_studies',
      		'philosophy_and_values','physical_science','quantitative_reasoning',
      		'reading_and_composition','social_and_behavioral_sciences']
        Course.stub(:all).and_return(c)
      	results = controller.filter(s)
      	expect(results[c1][0]).to eq('american_cultures')
      	expect(results[c2][0]).to eq('american_history_and_institutions')
      	expect(results[c3][0]).to eq('entry_level_writing')
      	expect(results[c4][0]).to eq('arts_and_literature')
      	expect(results[c5][0]).to eq('biological_science')
      	expect(results[c6][0]).to eq('foreign_language_breadth')
      	expect(results[c7][0]).to eq('historical_studies')
      	expect(results[c8][0]).to eq('international_studies')
      	expect(results[c9][0]).to eq('philosophy_and_values')
      	expect(results[c10][0]).to eq('physical_science')
      	expect(results[c11][0]).to eq('quantitative_reasoning')
      	expect(results[c12][0]).to eq('reading_and_composition')
      	expect(results[c13][0]).to eq('social_and_behavioral_sciences')
      end
  end
end