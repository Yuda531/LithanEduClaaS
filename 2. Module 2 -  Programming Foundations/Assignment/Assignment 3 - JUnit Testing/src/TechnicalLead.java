import java.util.ArrayList;

public class TechnicalLead extends TechincalEmployee{
    public int headCount;
    public ArrayList<SoftwareEngineer> team = new ArrayList<SoftwareEngineer>();
    public TechnicalLead(String name){
        super(name);
        this.setBaseSalary(1.3+this.getBaseSalary());
        this.headCount = 4;
    }
    public boolean hasHeadCount(){
        if (team.size()<this.headCount){
            return true;
        }
        else {
            return false;
        }
    }

    public boolean addReport(SoftwareEngineer e){
        if (this.hasHeadCount()){
            team.add(e);
            e.setManager(this);
            return true;
        }
        else {
            return false;
        }
    }
    public boolean approveCheckIn(SoftwareEngineer e){
        if (e.getManager()== this && e.getCodeAccess()== true){
            return true;
        }
        else{
            return false;
        }
    }

    public boolean requestBonus(Employee e, double bonus){
        BusinessLead lead = (BusinessLead)this.getAccountant().getManager();
        if (lead.approveBonus(e, bonus)){
            return true;
        }
        else {
            return false;
        }
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
