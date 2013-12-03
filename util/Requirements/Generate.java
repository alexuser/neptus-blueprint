import java.util.*;
import java.io.*;

public class Generate {

        public enum LevelOneRequirement {
                UNIVERSITY, CAMPUS, LSCOLLEGE
        }

        public enum LevelTwoRequirement {
                READINGANDCOMPOSITION, QUANTITATIVEREASONING, FOREIGNLANGUAGE, ARTSANDLITERATURE, BIOLOGICALSCIENCE, HISTORICALSTUDIES, INTERNATIONALSTUDIES, PHYSICALSCIENCE, PHILOSOPHYANDVALUES, SOCIALANDBEHAVIORALSCIENCES, ENTRYLEVELWRITING, AMERICANHISTORYANDINSTITUTIONS, AMERICANCULTURES
        }

        public static void readRequirementsFile(String file, List<Course> courses,
                        LevelOneRequirement req, LevelTwoRequirement ls) {
                try {
                        BufferedReader br = new BufferedReader(new FileReader(file));
                        String line;
						int counter = 0;
                        while ((line = br.readLine()) != null && counter <= 10000) {
                                if (courses.contains(new Course(line))) {
                                        Course course = courses.get(courses
                                                        .indexOf(new Course(line)));
                                        setRequirement(course, req, ls);
                                } else {
                                        Course course = new Course(line);
                                        setRequirement(course, req, ls);
                                        courses.add(course);
                                }
								counter++;
                        }
                        br.close();
                } catch (Exception e) {

                }
        }

        private static void setRequirement(Course course, LevelOneRequirement req,
                        LevelTwoRequirement ls) {
                switch (req) {
                case UNIVERSITY:
                        course.isUniversityRequirement = true;
                        break;
                case CAMPUS:
                        course.isCampusRequirement = true;
                        break;
                case LSCOLLEGE:
                        course.isLSCollegeRequirement = true;
                        break;
                }

                if (ls == null)
                        return;

                switch (ls) {
                case READINGANDCOMPOSITION:
                        course.isReadingAndComposition = true;
                        course.requirementsSatisfied ++;
                        break;
                case QUANTITATIVEREASONING:
                        course.isQuantitativeReasoning = true;
                        course.requirementsSatisfied ++;
                        break;
                case FOREIGNLANGUAGE:
                        course.isForeignLanguage = true;
                        course.requirementsSatisfied ++;
                        break;
                case ARTSANDLITERATURE:
                        course.isArtsAndLiterature = true;
                        course.requirementsSatisfied ++;
                        break;
                case BIOLOGICALSCIENCE:
                        course.isBiologicalScience = true;
                        course.requirementsSatisfied ++;
                        break;
                case HISTORICALSTUDIES:
                        course.isHistoricalStudies = true;
                        course.requirementsSatisfied ++;
                        break;
                case INTERNATIONALSTUDIES:
                        course.isInternationalStudies = true;
                        course.requirementsSatisfied ++;
                        break;
                case PHYSICALSCIENCE:
                        course.isPhysicalScience = true;
                        course.requirementsSatisfied ++;
                        break;
                case PHILOSOPHYANDVALUES:
                        course.isPhilosophyAndValues = true;
                        course.requirementsSatisfied ++;
                        break;
                case SOCIALANDBEHAVIORALSCIENCES:
                        course.isSocialAndBehavioralSciences = true;
                        course.requirementsSatisfied ++;
                        break;
                case ENTRYLEVELWRITING:
                        course.isEntryLevelWriting = true;
                        course.requirementsSatisfied ++;
                        break;
                case AMERICANHISTORYANDINSTITUTIONS:
                        course.isAmericanHistoryAndInstitutions = true;
                        course.requirementsSatisfied ++;
                        break;
                case AMERICANCULTURES:
                		course.isAmericanCulture = true;
                		course.requirementsSatisfied ++;
                		break;
                }
        }

        public static void main(String[] args) {
                List<Course> courses = new ArrayList<Course>();

                String root = "/Users/Alex/Downloads/";

                String arts = root + "ArtAndLit.txt";
                String biological = root + "BiologicalScience.txt";
                String historical = root + "HistoricalStudies.txt";
                String international = root + "InternationalStudies.txt";
                String physical = root + "PhysicalScience.txt";
                String philosophy = root + "PhilosophyAndValues.txt";
                String read1 = root + "ReadingCompositionA.txt";
                String read2 = root + "ReadingCompositionB.txt";
                String americanhistory = root + "AmericanHistoryInstitutions.txt";
    			String entry = root + "EntryLevelWriting.txt";
    			String americancultures = root + "AmericanCultures.txt";
    
                // here is the LS requirements
                readRequirementsFile(arts, courses, LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.ARTSANDLITERATURE);
                readRequirementsFile(biological, courses,
                                LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.BIOLOGICALSCIENCE);
                readRequirementsFile(historical, courses,
                                LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.HISTORICALSTUDIES);
                readRequirementsFile(international, courses,
                                LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.INTERNATIONALSTUDIES);
                readRequirementsFile(physical, courses, LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.PHYSICALSCIENCE);
                readRequirementsFile(philosophy, courses,
                                LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.PHILOSOPHYANDVALUES);
                readRequirementsFile(read1, courses, LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.READINGANDCOMPOSITION);
                readRequirementsFile(read2, courses, LevelOneRequirement.LSCOLLEGE,
                                LevelTwoRequirement.READINGANDCOMPOSITION);

                // here is the university requirements
                readRequirementsFile(americanhistory, courses,
                                LevelOneRequirement.UNIVERSITY,
                                LevelTwoRequirement.AMERICANHISTORYANDINSTITUTIONS);
                readRequirementsFile(entry, courses, LevelOneRequirement.UNIVERSITY,
                    LevelTwoRequirement.ENTRYLEVELWRITING);
                
                
                //here are the campus requirements
                readRequirementsFile(americancultures, courses, LevelOneRequirement.CAMPUS,
                        LevelTwoRequirement.AMERICANCULTURES);
                

                int course_counter = 0;
                int total= 1000;
                int requirement_counter = 0;
                int universityOutputCount = 100;
                int campusOutputCount = 100;
                int lsOutputCount = 400;
                Collections.sort(courses);
                for (Course course : courses) {
                		
                	if (course_counter>=total){
                			break;
                		}

                        if (course.isUniversityRequirement && universityOutputCount>0) {
                        		printCourse(course_counter, course);
                                System.out
                                                .println(String
                                                                .format("r%d = UniversityRequirement.create(:course_id => c%d.id, :entry_level_writing => %b, :american_history_and_institutions => %b)",
                                                                                requirement_counter++, course_counter,
                                                                                course.isEntryLevelWriting,
                                                                                course.isAmericanHistoryAndInstitutions));
                                course_counter++;
                                universityOutputCount --;
                                
                        }

                        if (course.isCampusRequirement && campusOutputCount >0) {
                        		printCourse(course_counter, course);
                                System.out
                                                .println(String
                                                                .format("r%d = CampusRequirement.create(:course_id => c%d.id, :american_cultures => true)",
                                                                                requirement_counter++, course_counter));
                                campusOutputCount --;
                                course_counter++;
                        }

                        if (course.isLSCollegeRequirement && lsOutputCount > 0) {
                        		printCourse(course_counter, course);
                                System.out
                                                .println(String
                                                                .format("r%d = LsCollegeRequirement.create(:course_id => c%d.id, :arts_and_literature => %b, :biological_science => %b, :foreign_language_breadth => %b, :historical_studies => %b, :international_studies => %b, :philosophy_and_values => %b, :physical_science => %b, :quantitative_reasoning => %b, :reading_and_composition => %b, :social_and_behavioral_sciences => %b)",
                                                                                requirement_counter++, course_counter,
                                                                                course.isArtsAndLiterature,
                                                                                course.isBiologicalScience,
                                                                                course.isForeignLanguage,
                                                                                course.isHistoricalStudies,
                                                                                course.isInternationalStudies,
                                                                                course.isPhilosophyAndValues,
                                                                                course.isPhysicalScience,
                                                                                course.isQuantitativeReasoning,
                                                                                course.isReadingAndComposition,
                                                                                course.isSocialAndBehavioralSciences));
                                lsOutputCount --;
                                course_counter++;
                        }

                        
                }
        }

		private static void printCourse(int course_counter, Course course) {
			System.out.println(String.format(
			                "c%d = Course.create(:name => \"%s\")", course_counter,
			                course.name));
		}
}

class Course implements Comparable<Course> {
        public String name;
        public boolean isUniversityRequirement;
        public boolean isLSCollegeRequirement;
        public boolean isCampusRequirement;

        // University Requirements
        public boolean isEntryLevelWriting;
        public boolean isAmericanHistoryAndInstitutions;

        // Campus Requirements
        public boolean isAmericanCulture;

        // L&S Requirements
        public boolean isReadingAndComposition;
        public boolean isQuantitativeReasoning;
        public boolean isForeignLanguage;
        public boolean isArtsAndLiterature;
        public boolean isBiologicalScience;
        public boolean isHistoricalStudies;
        public boolean isInternationalStudies;
        public boolean isPhysicalScience;
        public boolean isPhilosophyAndValues;
        public boolean isSocialAndBehavioralSciences;
        
        public int requirementsSatisfied = 0;

        public Course(String name) {
                this.name = name;
        }

        public int hashCode() {
                return name.hashCode();
        }

        public boolean equals(Object object) {
                boolean same = false;

                if (object != null && object instanceof Course) {
                        same = this.name.equals(((Course) object).name);
                }

                return same;
        }

		@Override
		public int compareTo(Course other) {
			// TODO Auto-generated method stub
			if(this.requirementsSatisfied > other.requirementsSatisfied){
				return -1;
			}
			else if (this.requirementsSatisfied < other.requirementsSatisfied){
				return 1;
			}
			else{
				return 0;
			}
		}
}