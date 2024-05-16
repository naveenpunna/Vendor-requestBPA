using VendorReqService as service from '../../srv/service';
annotate service.VendorRequestDetails with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'RequestNumber',
                Value : RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VendorNumber',
                Value : VendorNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VendorName',
                Value : VendorName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : Currency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrganization',
                Value : PurchaseOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountGroup',
                Value : AccountGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VendorTierType',
                Value : VendorTierType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FieldManagerName',
                Value : FieldManagerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FieldManagerStatus',
                Value : FieldManagerStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FieldManagerSubmittedDateTime',
                Value : FieldManagerSubmittedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreasurerName',
                Value : TreasurerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreasurerStatus',
                Value : TreasurerStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreasurerRejectionComments',
                Value : TreasurerRejectionComments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreasurerAssignedDateTime',
                Value : TreasurerAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreasurerActionDateTime',
                Value : TreasurerActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountsPayableTeam',
                Value : AccountsPayableTeam,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountsPayableTeamStatus',
                Value : AccountsPayableTeamStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountsPayableTeamRejectionComment',
                Value : AccountsPayableTeamRejectionComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountsPayableTeamAssignedDateTime',
                Value : AccountsPayableTeamAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountsPayableTeamActionDateTime',
                Value : AccountsPayableTeamActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VPorControllerName',
                Value : VPorControllerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VPorControllerStatus',
                Value : VPorControllerStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VPorControllerRejectionComments',
                Value : VPorControllerRejectionComments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VPorControllerAssignedDateTime',
                Value : VPorControllerAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VPorControllerActionDateTime',
                Value : VPorControllerActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ASMSecurityName',
                Value : ASMSecurityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ASMSecurityStatus',
                Value : ASMSecurityStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ASMSecurityRejectionComments',
                Value : ASMSecurityRejectionComments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ASMSecurityAssignedDateTime',
                Value : ASMSecurityAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ASMSecurityActionDateTime',
                Value : ASMSecurityActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeUseTreasuryName',
                Value : FreeUseTreasuryName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeUseTreasuryStatus',
                Value : FreeUseTreasuryStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeUseTreasuryRejectionComments',
                Value : FreeUseTreasuryRejectionComments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeUseTreasuryAssignedDateTime',
                Value : FreeUseTreasuryAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeUseTreasuryActionDateTime',
                Value : FreeUseTreasuryActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalforMSAName',
                Value : LegalforMSAName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalforMSAStatus',
                Value : LegalforMSAStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalforMSARejectionComments',
                Value : LegalforMSARejectionComments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalforMSAAssignedDateTime',
                Value : LegalforMSAAssignedDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalforMSAActionDateTime',
                Value : LegalforMSAActionDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RequestStatus',
                Value : RequestStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'accountsPayableHistory_RequestNumber',
                Value : accountsPayableHistory_RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'accountsPayableHistory_ItemNo',
                Value : accountsPayableHistory_ItemNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vPorControllerHistory_RequestNumber',
                Value : vPorControllerHistory_RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vPorControllerHistory_ItemNo',
                Value : vPorControllerHistory_ItemNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aSMSecurityHistory_RequestNumber',
                Value : aSMSecurityHistory_RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aSMSecurityHistory_ItemNo',
                Value : aSMSecurityHistory_ItemNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'treasurerHistory_RequestNumber',
                Value : treasurerHistory_RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'treasurerHistory_ItemNo',
                Value : treasurerHistory_ItemNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'legamforMSAHistory_RequestNumber',
                Value : legamforMSAHistory_RequestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'legamforMSAHistory_ItemNo',
                Value : legamforMSAHistory_ItemNo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'RequestNumber',
            Value : RequestNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'VendorNumber',
            Value : VendorNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'VendorName',
            Value : VendorName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency',
            Value : Currency,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },
    ],
);

annotate service.VendorRequestDetails with {
    accountsPayableHistory @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'AccountsPayableHistory',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : accountsPayableHistory_ItemNo,
                ValueListProperty : 'ItemNo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'RequestNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AccountsPayableTeamStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AccountsPayableTeamRejectionComment',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AccountsPayableTeamAssignedDateTime',
            },
        ],
    }
};

annotate service.VendorRequestDetails with {
    vPorControllerHistory @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'VPorControllerHistory',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : vPorControllerHistory_ItemNo,
                ValueListProperty : 'ItemNo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'RequestNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'VPorControllerStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'VPorControllerRejectionComments',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'VPorControllerAssignedDateTime',
            },
        ],
    }
};

annotate service.VendorRequestDetails with {
    aSMSecurityHistory @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ASMSecurityHistory',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : aSMSecurityHistory_ItemNo,
                ValueListProperty : 'ItemNo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'RequestNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ASMSecurityStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ASMSecurityRejectionComments',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ASMSecurityAssignedDateTime',
            },
        ],
    }
};

annotate service.VendorRequestDetails with {
    treasurerHistory @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'TreasurerHistory',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : treasurerHistory_ItemNo,
                ValueListProperty : 'ItemNo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'RequestNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'TreasurerStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'TreasurerRejectionComments',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'TreasurerAssignedDateTime',
            },
        ],
    }
};

annotate service.VendorRequestDetails with {
    legamforMSAHistory @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'LegalforMSAHistory',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : legamforMSAHistory_ItemNo,
                ValueListProperty : 'ItemNo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'RequestNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LegalforMSAStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LegalforMSARejectionComments',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LegalforMSAAssignedDateTime',
            },
        ],
    }
};

