public class RefractorTheCode {

	public static final int isPartTime=1;
	public static final int isFullTime=2;
	public static final int EmpRateperhr=20;
	public static final int numOfWorkingDays=2;
	public static final int maxHrsInMonth=10;

   public static int computeEmpWage()
   {
	   int emphrs=0;
	   int totalWage=0;
	   int totalEmpHrs=0;
	   int totalWorkingDays=0;
	   while  (totalEmpHrs<=maxHrsInMonth || totalWorkingDays <= numOfWorkingDays)
	   {
		   totalWorkingDays++;
           // random numbers (0,1,2)
           int randomNum = (int)( Math.random() * 2 + 1);

           // selection statement
           if (randomNum == isFullTime){
               System.out.println("Full time - Present");
               emphrs = 8;
           }
           else if (randomNum == isPartTime){
               System.out.println("Part time - Present");
               emphrs = 4;
           }
           else{
               System.out.println("Employee is Absent" + '\n');
           }

           // calculation of salary and hours
           totalEmpHrs+=emphrs;
          int salary = EmpRateperhr * emphrs;
           System.out.println("Employee salary for a day: " + salary + '\n');
            totalWage+=salary;
       }
       System.out.println("Total salary: " + totalWage);
       return totalWage;
   }

  
   public static void main(String[] args) {
       System.out.println("Welcome Employee" + "\n");
       computeEmpWage();
     
	   }
   }
