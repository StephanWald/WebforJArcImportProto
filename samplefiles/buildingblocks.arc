VERSION "4.0"

WINDOW 101 "Building blocks" 100 100 1024 640
BEGIN
    DIALOGBEHAVIOR
	NOT MINIMIZABLE
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 10, Normal
    NAME "Form"

    STATICTEXT 100, "Business Partner:", 7, 7, 129, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "st1"
    END

    STATICTEXT 101, "LEAD Information:", 7, 35, 129, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "st2"
    END

    HTMLVIEW 102, "", 14, 109, 997, 488
    BEGIN
        NAME "hv1"
    END

    BUTTON 103, "OK", 921, 605, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "btnOk"
    END

    BUTTON 104, "Back", 15, 76, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "btnBack"
    END

    STATICTEXT 105, "<bupainfo>", 140, 7, 866, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "stBupa"
    END

    STATICTEXT 106, "<leadinfo>", 140, 35, 866, 62
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "stLead"
    END
END

CHILD-WINDOW 501 0 0 986 589
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287492
    NAME "cw1"

    STATICTEXT 101, "Multiple LEADs were found. Please select a single LEAD to continue!", 7, 1, 667, 20
    BEGIN
        NAME "tx1"
    END

    STATICTEXT 102, "You didn't replace all placeholders! Continue?", 7, 20, 667, 20
    BEGIN
        NAME "tx2"
    END

    STATICTEXT 103, "Yes - continue anyway", 7, 40, 667, 20
    BEGIN
        NAME "tx3"
    END

    STATICTEXT 104, "No - you have to replace all first", 7, 60, 667, 20
    BEGIN
        NAME "tx4"
    END

    STATICTEXT 105, "Building blocks", 7, 80, 667, 20
    BEGIN
        NAME "tx5"
    END

    STATICTEXT 106, "LeadID=LeadID ; Model1=Model ; Model2=Alternative Model1 ; Model3=Alternative Model2 ; FuelCode=Fuel-Code ; ERD=ERD ; OwnerType=Owner-Type ; BodyStyle=Body-Style ; Transmission=Transmission ; MonthlyBudget=Monthly Budget ; TotalBudget=Total Budget ; NewUsed=State ; FinanceRequired=Finance Required ; Version=Version", 7, 100, 667, 20
    BEGIN
        NAME "txOpelILeadMOIInfo"
    END

    STATICTEXT 107, "VIN=VIN ; RegistrationNumber=License ; RegistrationDate=Registration ; Brand=Brand ; Model=Model ; Trim=Trim ; BodyStyle=Body-Style ; EngineSize=Engine-Size ; FuelType=FuelType ; TransmissionType=Transmission ; CurrentMileage=Current Mileage ; Colour=Colour ; LastServiceDate=Last Service ; LastMOTDate=Last MOT Date ; TyreSize=Tyre-Size ; AnnualMileage=Annual Mileage ; WarrantyExpiryDate=Warranty Expiry-Date ; ERD=ERD ; CarBuildDate=Car Build-Date", 7, 120, 667, 20
    BEGIN
        NAME "txOpelCurrentCarInfo"
    END

    STATICTEXT 108, "Please wait", 7, 140, 667, 20
    BEGIN
        NAME "tx6"
    END

    STATICTEXT 109, "Model of interest", 7, 160, 667, 20
    BEGIN
        NAME "tx7"
    END

    STATICTEXT 110, "Current car", 7, 180, 667, 20
    BEGIN
        NAME "tx8"
    END

    STATICTEXT 111, "No LEAD information available", 7, 200, 667, 20
    BEGIN
        NAME "tx9"
    END

    STATICTEXT 112, "Please select a Business Partner first!", 7, 220, 667, 20
    BEGIN
        NAME "tx10"
    END
END
