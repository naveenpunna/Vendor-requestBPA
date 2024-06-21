using {
    managed
    
} from '@sap/cds/common';

namespace vendorrequestbpa;

entity VendorRequestDetails : managed {
    key RequestNumber                 : UUID @Core.Computed; 
        VendorNumber                  : UUID @Core.Computed;
        VendorName                    : String(100);
        Currency                      : String(100);
        Country                       : String(100);
        CompanyCode                   : String(100);
        PurchaseOrganization          : String(100);
        AccountGroup                  : String(100);
        VendorTierType                : String(25);
        FieldManagerName              : String(100);
        RequestStatus                 : String(100);
        FieldManagerSubmittedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        accountsPayableHistory        : Association to one AccountsPayableHistory;
        vPorControllerHistory         : Association to one VPorControllerHistory;
        aSMSecurityHistory            : Association to one ASMSecurityHistory;
        treasurerHistory              : Association to one TreasurerHistory;
        legamforMSAHistory            : Association to one LegalforMSAHistory;
        freeUseTreasuryHistory        : Association to one FreeUseTreasuryHistory;
        freePerPayemntHistory         : Association to one FreePerPayemntHistory;
}

entity AccountsPayableHistory: managed {
    key RequestNumber                       : UUID;
    key ItemNo                              : UUID       @Core.Computed;
        AccountsPayableTeamName             : String(100);
        AccountsPayableTeamAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        AccountsPayableTeamActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        AccountingDocumentNumber            : String(100);
        DunningArea                         : String(100);
        CreditControlArea                   : String(100);
        accountsPayableHistoryComments      : Association to many AccountsPayableHistoryComment
                                                  on accountsPayableHistoryComments.comments = $self;
}

entity AccountsPayableHistoryComment: managed {
    key ACID       : UUID @Core.Computed;
        comment  : String(1000);
        comments : Association to AccountsPayableHistory;
}

entity VPorControllerHistory: managed {

    key RequestNumber                  : UUID;
    key ItemNo                         : UUID       @Core.Computed;
        VPorControllerName             : String(100);
        VPorControllerAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        VPorControllerActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        vPorControllerHistoryComments  : Association to many VPorControllerHistoryComment
                                             on vPorControllerHistoryComments.comments = $self;
}

entity VPorControllerHistoryComment: managed {
    key VPCID       : UUID @Core.Computed;
        comment  : String(1000);
        comments : Association to VPorControllerHistory;
}

entity ASMSecurityHistory : managed{
    key RequestNumber               : UUID;
    key ItemNo                      : UUID       @Core.Computed;
        ASMSecurityName             : String(100);
        Feedbacktype                : String(100);
        ASMSecurityAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        ASMSecurityActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        aSMSecurityHistoryComments  : Association to many ASMSecurityHistoryComment
                                          on aSMSecurityHistoryComments.comments = $self;
}

entity ASMSecurityHistoryComment : managed{
    key ASMCID          : UUID @Core.Computed;
        comment     : String(1000);
        comments : Association to ASMSecurityHistory;
}

entity TreasurerHistory: managed {
    key RequestNumber             : UUID;
    key ItemNo                    : UUID       @Core.Computed;
        TreasurerName             : String(100);
        Feedbacktype                : String(100);
        TreasurerAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        TreasurerActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        treasurerHistoryComments  : Association to many TreasurerHistoryComment
                                        on treasurerHistoryComments.comments = $self;
}

entity TreasurerHistoryComment : managed{
    key THCID         : UUID @Core.Computed;
        comment    : String(1000);
        comments : Association to TreasurerHistory;
}

entity LegalforMSAHistory : managed{
    key RequestNumber               : UUID;
    key ItemNo                      : UUID       @Core.Computed;
        LegalforMSAName             : String(100);
        Feedbacktype                : String(100);
        LegalforMSAAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        LegalforMSAActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        legalforMSAHistoryComments  : Association to many LegalforMSAHistoryComment
                                          on legalforMSAHistoryComments.comments = $self;
}

entity LegalforMSAHistoryComment: managed {
    key LID         : UUID @Core.Computed;
        comment    : String(1000);
        comments : Association to LegalforMSAHistory;
}

entity FreeUseTreasuryHistory: managed {
    key RequestNumber                   : UUID;
    key ItemNo                          : UUID       @Core.Computed;
        FreeUseTreasuryName             : String(100);
        FreeUseTreasuryAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        FreeUseTreasuryActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        freeUseTreasuryHistoryComments  : Association to many FreeUseTreasuryHistoryComment
                                              on freeUseTreasuryHistoryComments.comments = $self;
}
entity FreeUseTreasuryHistoryComment: managed {
    key ID          : UUID @Core.Computed;
        comment     : String(1000);
        comments : Association to FreeUseTreasuryHistory;
}

entity FreePerPayemntHistory: managed {
    key RequestNumber                   : UUID;
    key ItemNo                          : UUID       @Core.Computed;
        FreePerPayemntyName             : String(100);
        FreePerPayemntAssignedDateTime : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        FreePerPayemntActionDateTime   : Timestamp  @cds.on.insert: $now  @cds.on.update: $now;
        freePerPayemntHistoryComments  : Association to many FreePerPayemntHistoryComment
                                              on freePerPayemntHistoryComments.comments = $self;
}
entity FreePerPayemntHistoryComment: managed {
    key ID          : UUID @Core.Computed;
        comment     : String(1000);
        comments : Association to FreePerPayemntHistory;
}
