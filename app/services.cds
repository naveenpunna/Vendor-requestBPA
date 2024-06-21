
using from './vendor/annotations';

annotate VendorReqService.AccountsPayableHistoryComment with @(
    UI.LineItem #accomments: [
        {
            $Type : 'UI.DataField',
            Value : comment,
            Label : 'Description',
            ![@UI.Importance] : #High,
        },
    ]
);



annotate VendorReqService.VPorControllerHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value :  comment,
            Label : 'Description',
        },
    ]
);

annotate VendorReqService.FreePerPayemntHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : comment,
            Label : 'Description',
        },
    ]
);

annotate VendorReqService.ASMSecurityHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value :  comment,
            Label : 'Description',
        },
    ]
);

annotate VendorReqService.TreasurerHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value :  comment,
            Label : 'Description',
        },
    ]
);

annotate VendorReqService.LegalforMSAHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : comment,
            Label : 'Description',
        },
    ]
);

annotate VendorReqService.FreeUseTreasuryHistoryComment with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : comment,
            Label : 'Description',
        },
    ]
);

