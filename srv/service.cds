using {vendorrequestbpa as my} from '../db/schema';

service VendorReqService {
    entity VendorRequestDetails          as projection on my.VendorRequestDetails;
    entity AccountsPayableHistory        as projection on my.AccountsPayableHistory;
    entity AccountsPayableHistoryComment as projection on my.AccountsPayableHistoryComment;
    entity VPorControllerHistory         as projection on my.VPorControllerHistory;
    entity ASMSecurityHistory            as projection on my.ASMSecurityHistory;
    entity TreasurerHistory              as projection on my.TreasurerHistory;
    entity LegalforMSAHistory            as projection on my.LegalforMSAHistory;
    entity FreeUseTreasuryHistory        as projection on my.FreeUseTreasuryHistory;
    entity VPorControllerHistoryComment  as projection on my.VPorControllerHistoryComment;
    entity ASMSecurityHistoryComment     as projection on my.ASMSecurityHistoryComment;
    entity TreasurerHistoryComment       as projection on my.TreasurerHistoryComment;
    entity LegalforMSAHistoryComment     as projection on my.LegalforMSAHistoryComment;
    entity FreeUseTreasuryHistoryComment as projection on my.FreeUseTreasuryHistoryComment;
    entity FreePerPayemntHistory         as projection on my.FreePerPayemntHistory;
    entity FreePerPayemntHistoryComment  as projection on my.FreePerPayemntHistoryComment;
}
