using VendorReqService as service from '../../srv/service';

annotate service.VendorRequestDetails with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'VendorName',
                Value: VendorName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'RequestStatus',
                Value: RequestStatus,
            },
            {
                $Type: 'UI.DataField',
                Label: 'VendorNumber',
                Value: VendorNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Currency',
                Value: Currency,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Country',
                Value: Country,
            },
            {
                $Type: 'UI.DataField',
                Label: 'CompanyCode',
                Value: CompanyCode,
            },
            {
                $Type: 'UI.DataField',
                Label: 'PurchaseOrganization',
                Value: PurchaseOrganization,
            },
            {
                $Type: 'UI.DataField',
                Label: 'AccountGroup',
                Value: AccountGroup,
            },
            {
                $Type: 'UI.DataField',
                Label: 'VendorTierType',
                Value: VendorTierType,
            },
            {
                $Type: 'UI.DataField',
                Label: 'FieldManagerName',
                Value: FieldManagerName,
            },

            {
                $Type: 'UI.DataField',
                Label: 'FieldManagerSubmittedDateTime',
                Value: FieldManagerSubmittedDateTime,
            },

        ],
    },

    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'Account Payble',
            ID        : 'AccountPayble',
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Payment'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : 'AC General Information',
                ID    : 'ACGeneralInformation',
                Target: '@UI.FieldGroup#ACGeneralInformation',
            }, ],
        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'VP/Controller',
            ID        : 'VPController1',
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Payment'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : 'VP Controller',
                ID    : 'VPController',
                Target: '@UI.FieldGroup#VPController',
            }],
        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'ASM',
            ID        : 'ASM',
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Use'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : 'ASM',
                ID    : 'ASM',
                Target: '@UI.FieldGroup#ASM',
            }, ],
        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'Treasuary',
            ID        : 'T',
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : 'General Information',
                ID    : 'Treasuary',
                Target: '@UI.FieldGroup#Treasuary',
            }, ],
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Use'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'Legal for ASM',
            ID        : 'Legal',
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Use'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>GeneralInfromation}',
                ID    : 'LegalForMSA',
                Target: '@UI.FieldGroup#LegalForMSA',
            }, ],

        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'Approved For Use',
            ID        : 'Approved',
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Use'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : 'Approved For Use',
                ID    : 'ApprovedForUse',
                Target: '@UI.FieldGroup#ApprovedForUse',
            }],

        },
        {
            $Type     : 'UI.CollectionFacet',
            Label     : 'Free For Payments',
            ID        : 'FreeForPayments',
            Facets    : [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>GeneralInformation}',
                ID    : 'FreeForPayment',
                Target: '@UI.FieldGroup#FreeForPayment',
            }, ],
            @UI.Hidden: {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'VendorTierType'},
                    'Free for Payment'
                ]},
                false, // If in edit mode, set to hidden
                true
            ]}},
        }

    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'VendorName',
            Value: VendorName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Request Status',
            Value: RequestStatus,
        }
    ],
);


annotate service.VendorRequestDetails with @(UI.FieldGroup #ACGeneralInformation: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.AccountingDocumentNumber,
            Label: 'AccountingDocumentNumber',
        },
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.AccountsPayableTeamName,
            Label: 'AccountsPayableTeamName',
        },
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.CreditControlArea,
            Label: 'CreditControlArea',
        },
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.DunningArea,
            Label: 'DunningArea',
        },
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.AccountsPayableTeamActionDateTime,
            Label: 'AccountsPayableTeamActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: accountsPayableHistory.AccountsPayableTeamAssignedDateTime,
            Label: 'AccountsPayableTeamAssignedDateTime',
        },

    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #VPController: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: vPorControllerHistory.VPorControllerName,
            Label: 'VPorControllerName',
        },
        {
            $Type: 'UI.DataField',
            Value: vPorControllerHistory.ItemNo,
            Label: 'ItemNo',
        },
        {
            $Type: 'UI.DataField',
            Value: vPorControllerHistory.VPorControllerActionDateTime,
            Label: 'VPorControllerActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: vPorControllerHistory.VPorControllerAssignedDateTime,
            Label: 'VPorControllerAssignedDateTime',
        },


    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #ASM: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: aSMSecurityHistory.ASMSecurityName,
            Label: 'ASMSecurityName',
        },
        {
            $Type: 'UI.DataField',
            Value: aSMSecurityHistory.ASMSecurityActionDateTime,
            Label: 'ASMSecurityActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: aSMSecurityHistory.ASMSecurityAssignedDateTime,
            Label: 'ASMSecurityAssignedDateTime',
        },

        {
            $Type: 'UI.DataField',
            Value: aSMSecurityHistory.Feedbacktype,
            Label: 'Feedbacktype',
        },


    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #Treasuary: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: treasurerHistory.TreasurerName,
            Label: 'TreasurerName',
        },
        {
            $Type: 'UI.DataField',
            Value: treasurerHistory.Feedbacktype,
            Label: 'Feedbacktype',
        },
        {
            $Type: 'UI.DataField',
            Value: treasurerHistory.TreasurerActionDateTime,
            Label: 'TreasurerActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: treasurerHistory.TreasurerAssignedDateTime,
            Label: 'TreasurerAssignedDateTime',
        },


    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #LegalForMSA: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: legamforMSAHistory.LegalforMSAName,
            Label: 'LegalforMSAName',
        },
        {
            $Type: 'UI.DataField',
            Value: legamforMSAHistory.Feedbacktype,
            Label: 'Feedbacktype',
        },
        {
            $Type: 'UI.DataField',
            Value: legamforMSAHistory.ItemNo,
            Label: 'ItemNo',
        },
        {
            $Type: 'UI.DataField',
            Value: legamforMSAHistory.LegalforMSAActionDateTime,
            Label: 'LegalforMSAActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: legamforMSAHistory.LegalforMSAAssignedDateTime,
            Label: 'LegalforMSAAssignedDateTime',
        },


    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #FreeForPayment: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: freePerPayemntHistory.FreePerPayemntyName,
            Label: 'FreePerPayemntyName',
        },
        {
            $Type: 'UI.DataField',
            Value: freePerPayemntHistory.FreePerPayemntActionDateTime,
            Label: 'FreePerPayemntActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: freePerPayemntHistory.FreePerPayemntAssignedDateTime,
            Label: 'FreePerPayemntAssignedDateTime',
        },

    ],
});

annotate service.VendorRequestDetails with @(UI.FieldGroup #ApprovedForUse: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: freeUseTreasuryHistory.FreeUseTreasuryActionDateTime,
            Label: 'FreeUseTreasuryActionDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: freeUseTreasuryHistory.FreeUseTreasuryAssignedDateTime,
            Label: 'FreeUseTreasuryAssignedDateTime',
        },
        {
            $Type: 'UI.DataField',
            Value: freeUseTreasuryHistory.FreeUseTreasuryName,
            Label: 'FreeUseTreasuryName',
        },
        {
            $Type: 'UI.DataField',
            Value: freeUseTreasuryHistory.ItemNo,
            Label: 'ItemNo',
        }
    ],
});
