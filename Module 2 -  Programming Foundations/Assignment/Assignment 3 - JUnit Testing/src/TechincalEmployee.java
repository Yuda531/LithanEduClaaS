public class TechincalEmployee extends Employee {
    int checkIns;
    public TechincalEmployee(String name){
        // Super will call Employee
        super(name, 75000.00);
    }
    //Implementation of abstract method
    public String employeeStatus(){
        return this.getEmployeeId() + " " + this.getName()+ " has " + this.checkIns + " Successful checkins";

    }

}
