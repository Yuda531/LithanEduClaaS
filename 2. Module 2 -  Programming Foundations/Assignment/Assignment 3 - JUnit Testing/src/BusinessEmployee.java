public class BusinessEmployee extends Employee {

    double bonusBudget;
    public BusinessEmployee(String name){
        super(name, 50000.00);
    }
    public double getBonusBudget(){
        return bonusBudget;
    }
    public void setBonusBudget(double bonusBudget){
        this.bonusBudget = bonusBudget;
    }
    public String employeeStatus(){
        return this.getEmployeeId()+" "+this.getName()+" with a budget of  " +this.getBonusBudget();
    }
}
