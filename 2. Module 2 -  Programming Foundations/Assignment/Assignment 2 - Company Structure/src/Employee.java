public class Employee {
    private double baseSalary;
    private String employeeName;

    private int employeeID;

    public Employee() {
    }

    public double getBaseSalary() {
        return baseSalary;
    }

    public String getName() {

        return employeeName;
    }

    public int getEmployeeID(){
        return employeeID;
    }

    public Employee getManager(){

        return null;
    }

    public boolean equals(Employee other) {
        return false;
    }

    public String toString() {
        return null;
    }

    public String employeeStatus() {
        return null;
    }
}
