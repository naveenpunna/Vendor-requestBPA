sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ivp/vendor/test/integration/FirstJourney',
		'ivp/vendor/test/integration/pages/VendorRequestDetailsList',
		'ivp/vendor/test/integration/pages/VendorRequestDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, VendorRequestDetailsList, VendorRequestDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ivp/vendor') + '/index.html'
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