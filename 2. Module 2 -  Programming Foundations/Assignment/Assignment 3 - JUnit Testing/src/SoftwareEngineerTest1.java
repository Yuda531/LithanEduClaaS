import  org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class SoftwareEngineerTest1 {
    BusinessLead BL = new BusinessLead("Amy Wood");
    TechnicalLead TL = new TechnicalLead("Satya Nadela");
    SoftwareEngineer SE = new SoftwareEngineer("Kasey");
    Accountant AC = new Accountant("Niky");

    @Test
    void checkInCodeFalse() {
        TL.addReport(SE);
        SE.setCodeAccess(false);
        assertFalse(SE.checkInCode());
    }

    @Test
    void checkInCodeTrue() {
        TL.addReport(SE);
        SE.setCodeAccess(true);
        assertTrue(SE.checkInCode());
    }
}