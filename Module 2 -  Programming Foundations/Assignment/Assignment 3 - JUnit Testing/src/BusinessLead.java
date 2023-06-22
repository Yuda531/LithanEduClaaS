import java.util.ArrayList;

public class BusinessLead extends BusinessEmployee{
    public int headCount;

    ArrayList<Accountant> team = new ArrayList<Accountant>();

    public BusinessLead(String name){
        super(name);
        this.setBaseSalary(this.getBaseSalary()*2);
        this.headCount = 10;
    }
    public boolean hasHeadCount(){
        if (this.team.size()<this.headCount){
            return true;
        }
        else {
            return false;
        }
    }

    public boolean addReport(Accountant e, TechnicalLead supportTeam){
        if (hasHeadCount()){
            this.team.add(e);
            e.setManager(this);
            this.bonusBudget = this.bonusBudget + (e.getBaseSalary() + (e.getBaseSalary() * 0.10));
            e.supportTeam(supportTeam);
            supportTeam.setAccountant(e);
            return true;
        }
        else {
            return false;
        }
    }

    public boolean requestBonus(Employee e, double bonus){
        if (bonus < this.bonusBudget){
            e.setBonus(bonus);
            this.setBudget(this.getBudget()-bonus);
            return true;
        }
        else {
            return false;
        }
    }

    public boolean approveBonus(Employee e, double bonus) {
        for (int i = 0; i < team.size(); i++) {
            if (team.get(i).getTeamSupport().equals(e.getManager()) && team.get(i).approveBonus(bonus)) {
                e.setBonus(e.getBonus() + bonus);
                team.get(i).bonusBudget -= bonus;
                return true;
            }
        }
        return false;
    }

    public String getTeamStatus (){
        if (team.size()==0){
            return this.employeeStatus()+" and no direct reports yet";
        }
        else {
            String teamStatus = "";
            for (int i=0; i<team.size(); i++){
                teamStatus = teamStatus + team.get(i). employeeStatus() + "\n";
            }
            return this.employeeStatus() + " and managing: \n" + teamStatus;
        }
    }
}
