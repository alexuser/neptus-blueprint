class CreateHierarchy < ActiveRecord::Migration
  def self.up
    c0 = College.create(:name => "College of Letter & Science")
    c1 = College.create(:name => "Haas School of Business")
    c2 = College.create(:name => "College of Chemistry")
    c3 = College.create(:name => "Graduate School of Education")
    c4 = College.create(:name => "College of Engineering (What Alex hates)")
    c5 = College.create(:name => "College of Environmental Design")
    c6 = College.create(:name => "School of Information")
    c7 = College.create(:name => "Graduate School of Journalism")
    c8 = College.create(:name => "School of Law")
    c9 = College.create(:name => "College of Natural Resources")
    c10 = College.create(:name => "School of Optometry")
    c11 = College.create(:name => "School of Public Health")
    c12 = College.create(:name => "Richard & Rhoda Goldman School of Public Policy")
    c13 = College.create(:name => "School of Social Welfare")
    
    m0 = Major.create(:name => "Chemistry", :college_id => c2.id)
    m1 = Major.create(:name => "Chemical Biology", :college_id => c2.id)
    m2 = Major.create(:name => "EECS", :college_id => c4.id)
    m3 = Major.create(:name => "Nuclear Engineering", :college_id => c4.id)
    m4 = Major.create(:name => "Chinese", :college_id => c0.id)
    m5 = Major.create(:name => "Computer Science", :college_id => c0.id)
    m6 = Major.create(:name => "Microbial Biology", :college_id => c9.id)
  end

  def down
  end
end
