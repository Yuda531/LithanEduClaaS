public class SoftwareEngineer extends TechincalEmployee {

    private boolean codeAccess;

    public SoftwareEngineer(String name){
        super(name);
        this.checkIns = 0;
        codeAccess = false;
    }

    public boolean getCodeAccess(){
        return codeAccess;
    }

    public void setCodeAccess(boolean codeAccess){
        this.codeAccess = codeAccess;
    }

    public int getSuccessfulCheckins(){
        return this.checkIns;
    }

    public boolean checkInCode(){
        TechnicalLead manager =(TechnicalLead) this.getManager();
        if (manager.approveCheckIn(this)){
            ++checkIns;
            return true;
        }
        else {
            setCodeAccess(false);
            return false;
        }
    }
}
