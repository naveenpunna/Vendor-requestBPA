using { vendorrequestbpa as my } from '../db/schema';

service VendorReqService { 
    entity VendorRequestDetails as projection on my.VendorRequestDetails;
    entity AccountsPayableHistory as projection on my.AccountsPayableHistory;
    entity VPorControllerHistory as projection on my.VPorControllerHistory;
    entity ASMSecurityHistory as projection on my.ASMSecurityHistory;
    entity TreasurerHistory as projection on my.TreasurerHistory;
    entity LegalforMSAHistory as projection on my.LegalforMSAHistory;
}