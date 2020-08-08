public class EmployeeWageComputation {

	    public static final int IS_FULL_TIME = 1;
	    public static final int IS_PART_TIME = 2;

	    /**
	     * This is a void method used to calculate the salary of the employee
	     */
	    public static void computeWages(String companyName, int empRate, int numberOfWorkingDays, int numberOfWorkingHours){

	        
	        int empHours = 0;
	        int salary = 0;
	        int totalWage = 0;
	        int totalHrs = 0;
	        int totalDays = 0;

	        while (totalDays <= numberOfWorkingDays || totalHrs <= numberOfWorkingHours){

	            totalDays++;

	            int randomNum = (int)( Math.random() * 2 + 1);

	            if (randomNum == IS_FULL_TIME){
	                empHours = 8;
	            }
	            else if (randomNum == IS_PART_TIME){
	                empHours = 4;
	            }
	            else{
	                empHours = 0;
	            }

	            totalHrs+=empHours;
	            salary = empRate * empHours;
	            totalWage+=salary;
	        }
	        System.out.println("Employee is in: " + companyName + ", Total salary: " + totalWage);
	    }

	    public static void main(String[] args) {
	        System.out.println("Welcome Employee" + "\n");

	        computeWages("Company-A", 20, 5, 10);
	        computeWages("Company-B", 25, 10, 20);
	    }
	}

