sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/mindset/vendorrequestcapapplication/test/integration/FirstJourney',
		'com/mindset/vendorrequestcapapplication/test/integration/pages/VendorRequestDetailsList',
		'com/mindset/vendorrequestcapapplication/test/integration/pages/VendorRequestDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, VendorRequestDetailsList, VendorRequestDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/mindset/vendorrequestcapapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheVendorRequestDetailsList: VendorRequestDetailsList,
					onTheVendorRequestDetailsObjectPage: VendorRequestDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);