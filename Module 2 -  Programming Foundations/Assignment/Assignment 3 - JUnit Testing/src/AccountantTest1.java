import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AccountantTest1 {
    BusinessLead BL = new BusinessLead("Amy Wood");
    TechnicalLead TL = new TechnicalLead("Satya Nadela");
    SoftwareEngineer SE = new SoftwareEngineer("Kasey");
    Accountant AC = new Accountant("Niky");

    @Test
    void approveBonusFalse() {
        TL.addReport(SE);
        BL.addReport(AC, TL);
        assertFalse(AC.approveBonus(20000000));
    }
    @Test
    void approveBonusTrue() {
        TL.addReport(SE);
        BL.addReport(AC, TL);
        assertTrue(AC.approveBonus(1000));
    }
}