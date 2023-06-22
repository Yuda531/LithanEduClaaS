abstract public class Employee {
    private String name;
    private double baseSalary;
    static int counter = 0;
    private int employeeId = 0;
    private Employee manager;

    private Accountant accountant;
    private double bonus;
    private double budget;

    // Constructor = gets called when the object of the class is created. Constructor nname same as class name.
    // Constructor don't have return types.
    public Employee(String name, double baseSalary){
        this.name = name;
        this.baseSalary = baseSalary;
        counter++;
        employeeId = counter;
    }

    public double getBaseSalary() {

        return baseSalary;
    }

    public void setBaseSalary(double baseSalary){

        this.baseSalary = baseSalary;
    }

    public String getName() {
        return name;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public Employee getManager() {
        return manager;
    }

    public double getBonus() {
        return bonus;
    }

    public double getBudget() {
        return budget;
    }

    public boolean equals(Employee other){
        if (this.employeeId == other.employeeId){
            return true;
        }
        else {
            return false;
        }
    }

    public String toString(){
        return this.employeeId + " " + this.name;
    }

    public void setManager(Employee manager){
        this.manager = manager;
    }

    public void setBonus(double bonus){
        this.bonus = bonus;
    }

    public void setBudget(double budget){
        this.budget = budget;
    }

    public Accountant getAccountant() {
        return accountant;
    }

    public void setAccountant(Accountant accountant){
        this.accountant = accountant;
    }

    public abstract String employeeStatus();
}
