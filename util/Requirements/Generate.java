import java.util.*;
import java.io.*;

public class Generate {

	public enum LevelOneRequirement {
		UNIVERSITY, CAMPUS, LSCOLLEGE
	}

	public enum LevelTwoRequirement {
		READINGANDCOMPOSITION, QUANTITATIVEREASONING, FOREIGNLANGUAGE, ARTSANDLITERATURE, BIOLOGICALSCIENCE, HISTORICALSTUDIES, INTERNATIONALSTUDIES, PHYSICALSCIENCE, PHILOSOPHYANDVALUES, SOCIALANDBEHAVIORALSCIENCES, ENTRYLEVELWRITING, AMERICANHISTORYANDINSTITUTIONS
	}

	public static void readRequirementsFile(String file, List<Course> courses,
			LevelOneRequirement req, LevelTwoRequirement ls) {
		try {
			BufferedReader br = new BufferedReader(new FileReader(file));
			String line;

			while ((line = br.readLine()) != null) {
				if (courses.contains(new Course(line))) {
					Course course = courses.get(courses
							.indexOf(new Course(line)));
					setRequirement(course, req, ls);
				} else {
					Course course = new Course(line);
					setRequirement(course, req, ls);
					courses.add(course);
				}
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
			break;
		case QUANTITATIVEREASONING:
			course.isQuantitativeReasoning = true;
			break;
		case FOREIGNLANGUAGE:
			course.isForeignLanguage = true;
			break;
		case ARTSANDLITERATURE:
			course.isArtsAndLiterature = true;
			break;
		case BIOLOGICALSCIENCE:
			course.isBiologicalScience = true;
			break;
		case HISTORICALSTUDIES:
			course.isHistoricalStudies = true;
			break;
		case INTERNATIONALSTUDIES:
			course.isInternationalStudies = true;
			break;
		case PHYSICALSCIENCE:
			course.isPhysicalScience = true;
			break;
		case PHILOSOPHYANDVALUES:
			course.isPhilosophyAndValues = true;
			break;
		case SOCIALANDBEHAVIORALSCIENCES:
			course.isSocialAndBehavioralSciences = true;
			break;
		case ENTRYLEVELWRITING:
			course.isEntryLevelWriting = true;
			break;
		case AMERICANHISTORYANDINSTITUTIONS:
			course.isAmericanHistoryAndInstitutions = true;
			break;
		}
	}

	public static void main(String[] args) {
		List<Course> courses = new ArrayList<Course>();

		String root = "/Users/geraldgreen/Downloads/";

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

		int course_counter = 0;
		int requirement_counter = 0;

		for (Course course : courses) {
			System.out.println(String.format(
					"c%d = Course.create(:name => \"%s\")", course_counter,
					course.name));

			if (course.isUniversityRequirement) {
				System.out
						.println(String
								.format("r%d = UniversityRequirement.create(:course_id => c%d.id, :entry_level_writing => %b, :american_history_and_institutions => %b)",
										requirement_counter++, course_counter,
										course.isEntryLevelWriting,
										course.isAmericanHistoryAndInstitutions));
			}

			if (course.isCampusRequirement) {
				System.out
						.println(String
								.format("r%d = CampusRequirement.create(:course_id => c%d.id, :american_cultures => true)",
										requirement_counter++, course_counter));
			}

			if (course.isLSCollegeRequirement) {
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
			}

			course_counter++;
		}
	}
}

class Course {
	public String name;
	public boolean isUniversityRequirement;
	public boolean isLSCollegeRequirement;
	public boolean isCampusRequirement;

	// University Requirements
	public boolean isEntryLevelWriting;
	public boolean isAmericanHistoryAndInstitutions;

	// Campus Requirements

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
}