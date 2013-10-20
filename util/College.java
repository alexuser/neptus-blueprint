class Major {
	public String college;
	public String name;
	public int collegeIndex;
	
	public Major(String name, String college, int index) {
		this.college = college;
		this.name = name;
		this.collegeIndex = index;
	}
}

public class College {
	public static String[] COLLEGES = {
    "College of Letter & Science",
    "Haas School of Business",
    "College of Chemistry",
    "Graduate School of Education",
    "College of Engineering (What Alex hates)",
    "College of Environmental Design",
    "School of Information",
    "Graduate School of Journalism",
    "School of Law",
    "College of Natural Resources",
    "School of Optometry",
    "School of Public Health",
    "Richard & Rhoda Goldman School of Public Policy",
    "School of Social Welfare" };

	public static int LS_INDEX = 0;
	public static int HAAS_INDEX = 1;
	public static int CHEMISTRY_INDEX = 2;
	public static int EDUCATION_INDEX = 0;
	public static int ENGINEERING_INDEX = 4;
	public static int ENVIRONMENTAL_INDEX = 5;
	public static int INFORMATION_INDEX = 6;
	public static int JOURNALISM_INDEX = 7;
	public static int LAW_INDEX = 8;
	public static int NATURAL_INDEX = 9;
	public static int OPTOMETRY_INDEX = 10;
	public static int PUBLICHEALTH_INDEX = 11;
	public static int PUBLICPOLICY_INDEX = 12;
	public static int SOCIAL_INDEX = 13;
	
	public static void migrateCollege() {
		int i = 0;
		
		for (String s : COLLEGES) {
			String string = String.format("c%d = College.create(:name => \"%s\")", i++, s);
			System.out.println(string);
		}
	}
	
	public static void migrateMajors() {
		Major[] majors = new Major[7];
		majors[0] = new Major("Chemistry", COLLEGES[CHEMISTRY_INDEX], CHEMISTRY_INDEX);
		majors[1] = new Major("Chemical Biology", COLLEGES[CHEMISTRY_INDEX], CHEMISTRY_INDEX);
		majors[2] = new Major("EECS", COLLEGES[ENGINEERING_INDEX], ENGINEERING_INDEX);
		majors[3] = new Major("Nuclear Engineering", COLLEGES[ENGINEERING_INDEX], ENGINEERING_INDEX);
		majors[4] = new Major("Chinese", COLLEGES[LS_INDEX], LS_INDEX);
		majors[5] = new Major("Computer Science", COLLEGES[LS_INDEX], LS_INDEX);
		majors[6] = new Major("Microbial Biology", COLLEGES[NATURAL_INDEX], NATURAL_INDEX);
		
		int i = 0;
		for (Major major : majors) {
			String string = String.format("m%d = Major.create(:name => \"%s\", :college_id => c%d.id)", i++, major.name, major.collegeIndex);
			System.out.println(string);
		}
	}
	public static void main(String[] args) {
		migrateCollege();
		migrateMajors();
	}
	
	
}