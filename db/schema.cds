using { cuid,managed,  } from '@sap/cds/common';
namespace vendorrequestbpa;
entity VendorRequestDetails :  managed
{
    key RequestNumber : UUID;
    VendorNumber : Integer;
    VendorName : String;
    Currency : Decimal;
    Country : String;
    CompanyCode : Integer;
    PurchaseOrganization : String;
    AccountGroup : String;
    VendorTierType : String;
}

// entity VendorRequestDetails : managed
// {
//     key RequestNumber : Integer;
//     VendorNumber : Integer;
//     VendorName : String(100);
//     Currency : Decimal(8,2);
//     Country : String(100);
//     CompanyCode : Integer;
//     PurchaseOrganization : String(100);
//     AccountGroup : String(100);
//     VendorTierType : String(1);
//     FieldManagerName : String(100);
//     FieldManagerStatus : String(1);
//     FieldManagerSubmittedDateTime : DateTime;
//     TreasurerName : String(100);
//     TreasurerStatus : String(1);
//     TreasurerRejectionComments : String(100);
//     TreasurerAssignedDateTime : DateTime;
//     TreasurerActionDateTime : DateTime;
//     AccountsPayableTeam : String(100);
//     AccountsPayableTeamStatus : String(1);
//     AccountsPayableTeamRejectionComment : String(1000);
//     AccountsPayableTeamAssignedDateTime : DateTime;
//     AccountsPayableTeamActionDateTime : DateTime;
//     VPorControllerName : String(100);
//     VPorControllerStatus : String(1);
//     VPorControllerRejectionComments : String(1000);
//     VPorControllerAssignedDateTime : DateTime;
//     VPorControllerActionDateTime : DateTime;
//     ASMSecurityName : String(100);
//     ASMSecurityStatus : String(1);
//     ASMSecurityRejectionComments : String(1000);
//     ASMSecurityAssignedDateTime : DateTime;
//     ASMSecurityActionDateTime : DateTime;
//     FreeUseTreasuryName : String(100);
//     FreeUseTreasuryStatus : String(1);
//     FreeUseTreasuryRejectionComments : String(1000);
//     FreeUseTreasuryAssignedDateTime : DateTime;
//     FreeUseTreasuryActionDateTime : DateTime;
//     LegalforMSAName : String(100);
//     LegalforMSAStatus : String(1);
//     LegalforMSARejectionComments : String(1000);
//     LegalforMSAAssignedDateTime : DateTime;
//     LegalforMSAActionDateTime : DateTime;
//     RequestStatus : String(1);
//     accountsPayableHistory : Association to one AccountsPayableHistory;
//     vPorControllerHistory : Association to one VPorControllerHistory;
//     aSMSecurityHistory : Association to one ASMSecurityHistory;
//     treasurerHistory : Association to one TreasurerHistory;
//     legamforMSAHistory : Association to one LegalforMSAHistory;
// }
// entity AccountsPayableHistory
// {
//     key RequestNumber : Integer;
//     key ItemNo : Integer;
//     AccountsPayableTeamStatus : String(1);
//     AccountsPayableTeamRejectionComment : String(1000);
//     AccountsPayableTeamAssignedDateTime : DateTime;
//     AccountsPayableTeamActionDateTime : DateTime;
// }
// entity VPorControllerHistory
// {
//     key RequestNumber : Integer;
//     key ItemNo : Integer;
//     VPorControllerStatus : String(1);
//     VPorControllerRejectionComments : String(1000);
//     VPorControllerAssignedDateTime : DateTime;
//     VPorControllerActionDateTime : DateTime;
// }
// entity ASMSecurityHistory
// {
//     key RequestNumber : Integer;
//     key ItemNo : Integer;
//     ASMSecurityStatus : String(1);
//     ASMSecurityRejectionComments : String(1000);
//     ASMSecurityAssignedDateTime : DateTime;
//     ASMSecurityActionDateTime : DateTime;
// }
// entity TreasurerHistory
// {
//     key RequestNumber : Integer;
//     key ItemNo : Integer;
//     TreasurerStatus : String(1);
//     TreasurerRejectionComments : String(100);
//     TreasurerAssignedDateTime : DateTime;
//     TreasurerActionDateTime : DateTime;
// }
// entity LegalforMSAHistory
// {
//     key RequestNumber : Integer;
//     key ItemNo : Integer;
//     LegalforMSAStatus : String(1);
//     LegalforMSARejectionComments : String(1000);
//     LegalforMSAAssignedDateTime : DateTime;
//     LegalforMSAActionDateTime : DateTime;
// }