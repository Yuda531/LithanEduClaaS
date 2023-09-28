public class Accountant extends BusinessEmployee {
    private TechnicalLead teamSupp;

    public Accountant(String name){
        super(name);
        bonusBudget = 0;
    }
    public TechnicalLead getTeamSupport(){
        if (teamSupp == null){
            return null;
        }
        else {
            return teamSupp;
        }
    }

    public void supportTeam(TechnicalLead lead){
        for (int i=0; i<lead.team.size(); i++){
            this.bonusBudget = (lead.team.get(i).getBaseSalary())*1.1;
        }
        this.teamSupp = lead;
    }

    public boolean approveBonus (double bonus){
        if (bonus <= this.bonusBudget){
            return true;
        }
        else {
            System.out.println("There is no budget to support \n");
            return false;
        }
    }

    public String employeeStatus(){
        return this.toString() + " with a budget of " + this.bonusBudget + " is supporting " + this.teamSupp;
    }
}
