VERSION "4.0"

WINDOW 1 "Cars" 5 70 1002 780
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287287308
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmMaintCar"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status Bar"
    END

    TOOLBUTTON 100, "", 63, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        DISABLED
        SHORTCUE "Create a new item"
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
    END

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
    END

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 962, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 932, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 120, "", 230, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar038.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoMain"
        DISABLED
        SHORTCUE "Open the maintenance program to maintain the memo's on this car"
    END

    TOOLBUTTON 121, "", 258, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoView"
        DISABLED
        SHORTCUE "View the memo('s) on this car"
    END

    TOOLBUTTON 122, "", 379, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm021.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnTireReg"
        INVISIBLE
        SHORTCUE "Open the Tire Registration dialogue"
    END

    TOOLBUTTON 123, "", 295, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm031.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnAttach"
        SHORTCUE "Open the attachment dialogue"
    END

    TOOLBUTTON 126, "", 469, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm083.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCallValSNW"
        INVISIBLE
        SHORTCUE "Call SchwackeNet to valuate the car"
    END

    TABCONTROL 10008, "tclAll", 5, 95, 992, 681
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "General" 0 51
        TAB "Various" 0 52
        TAB "Details" 0 53
        TAB "Intervals" 0 54
        TAB "Make Dependent" 0 55
        TAB "Previous owners" 0 56
        TAB "Finance/Insurance" 0 57
        TAB "Free fields" 0 58
    END

    CHILD-WINDOW 101, 51, 7, 117
    BEGIN
        NAME "chd_frmGeneral" 
    END

    CHILD-WINDOW 102, 52, 7, 117
    BEGIN
        NAME "chd_frmVarious" 
    END

    CHILD-WINDOW 103, 53, 7, 117
    BEGIN
        NAME "chd_frmDetails" 
    END

    CHILD-WINDOW 104, 54, 7, 117
    BEGIN
        NAME "chd_frmInterval" 
    END

    CHILD-WINDOW 105, 55, 7, 117
    BEGIN
        NAME "chd_frmMake" 
    END

    STATICTEXT 1002, "License :", 10, 40, 80, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense"
    END

    STATICTEXT 1004, "Car info. :", 10, 60, 62, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCar_info"
    END

    STATICTEXT 1006, "Customer info. :", 210, 40, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_info"
    END

    GROUPBOX 1008, "", 2, 24, 998, 65
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    CUSTOMEDIT 11004, "", 90, 58, 520, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Carinfo"
        CLIENTEDGE
    END

    CUSTOMEDIT 11005, "", 310, 38, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Customerinfo"
        CLIENTEDGE
    END

    TOOLBUTTON 11006, "", 205, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar030.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnChaLic"
        SHORTCUE "Open the license dialogue"
    END

    TOOLBUTTON 11007, "", 409, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar044.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSDOnline"
        INVISIBLE
        SHORTCUE "Start the DAT SDOnline application"
    END

    CHILD-WINDOW 106, 56, 7, 117
    BEGIN
        NAME "chd_frmPrevOwn" 
    END

    TOOLBUTTON 11008, "", 349, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar065.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDamage"
        SHORTCUE "Open the damage information dialogue"
    END

    TOOLBUTTON 11009, "", 902, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar054.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnRetCallProg"
        SHORTCUE "Return to the calling program, but don't close this one."
    END

    TOOLBUTTON 114, "", 169, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar067.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearchCar"
        DISABLED
        SHORTCUE "Open the Search Car dialogue"
    END

    CHILD-WINDOW 107, 57, 7, 117
    BEGIN
        NAME "chd_frmFinance" 
    END

    CHILD-WINDOW 108, 58, 7, 117
    BEGIN
        NAME "chd_frmFreeField" 
    END

    STATICTEXT 11010, "No. of attachments : ", 840, 40, 120, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNoAttach"
    END

    STATICTEXT 11011, "", 960, 40, 25, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Nof_cars"
    END

    STATICTEXT 11012, "Importer number :", 615, 40, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImpNo"
    END

    CUSTOMEDIT 11013, "", 725, 38, 110, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Importer_nr"
        CLIENTEDGE
    END

    STATICTEXT 11014, "Chassis number :", 615, 60, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassis_nr"
    END

    CUSTOMEDIT 11015, "", 725, 58, 190, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Chassis_nr"
        CLIENTEDGE
    END

    CUSTOMEDIT 11002, "", 90, 38, 110, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    TOOLBUTTON 11016, "", 439, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm084.png" 
        NAME "tbnCallEasyArch"
        INVISIBLE
        SHORTCUE "Click to view all documents of this case in Easy Archive"
    END

    TOOLBUTTON 11017, "", 319, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar073.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnVinAttach"
        DISABLED
        SHORTCUE "Open the VIN attachment folder"
    END

    TOOLBUTTON 11018, "", 409, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm022.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnAutoTelex"
        INVISIBLE
        SHORTCUE "Retrieve car information from AutoTelex to enrich the car data"
    END
END

WINDOW 2 "Print a Car List" 1 70 323 255
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287748
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmPrintCar"

    STATICTEXT 12003, "&From license", 15, 30, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense_from"
    END

    STATICTEXT 12006, "&To license", 15, 50, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense_to"
    END

    STATICTEXT 12027, "List &date", 15, 173, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrd_date"
    END

    BUTTON 12032, "&Print", 113, 223, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnPrint"
        SHORTCUE "Print specified range"
    END

    BUTTON 2, "Cancel", 183, 223, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    GROUPBOX 2000, "", 5, 8, 313, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    INPUTE 12028, "", 125, 171, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineOrd_date"
        CLIENTEDGE
        SHORTCUE "Enter the list date"
    END

    BUTTON 3, "&Help", 253, 223, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    LISTBUTTON 12021, "", 125, 108, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnForm"
        DISABLED
        SHORTCUE "Choose the type of form"
    END

    STATICTEXT 12020, "T&ype of form", 15, 110, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtForm"
    END

    INPUTE 12004, "", 125, 28, 150, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineLicense_from"
        CLIENTEDGE
        SHORTCUE "Enter the first license in the range"
    END

    INPUTE 12007, "", 125, 48, 150, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineLicense_to"
        CLIENTEDGE
        SHORTCUE "Enter the last license in the range"
    END

    TOOLBUTTON 12005, "", 281, 28, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnLicense_from"
        SHORTCUE "Search for an item"
    END

    TOOLBUTTON 12008, "", 281, 48, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnLicense_to"
        SHORTCUE "Search for an item"
    END

    STATICTEXT 12024, "P&rint device", 15, 152, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPrintDevice"
    END

    LISTBUTTON 12025, "", 125, 150, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPrintDevice"
        DISABLED
        SHORTCUE "Choose printing device"
    END

    BUTTON 12030, "&View", 43, 223, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnView "
        SHORTCUE "View specified range"
    END

    STATICTEXT 12022, "Vie&w device", 15, 131, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtViewDevice"
    END

    LISTBUTTON 12023, "", 125, 129, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnViewDevice"
        DISABLED
        SHORTCUE "Choose viewing device"
    END

    STATICTEXT 12010, "From &customer", 15, 70, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCustomer_from"
    END

    INPUTE 12011, "", 125, 68, 150, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineCustomer_from"
        CLIENTEDGE
        SHORTCUE "Enter the first customer in the range"
    END

    INPUTE 12015, "", 125, 88, 150, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineCustomer_to"
        CLIENTEDGE
        SHORTCUE "Enter the last customer in the range"
    END

    TOOLBUTTON 12013, "", 281, 68, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCustomer_from"
        SHORTCUE "Search for an item"
    END

    TOOLBUTTON 12016, "", 281, 88, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCustomer_to"
        SHORTCUE "Search for an item"
    END

    STATICTEXT 12014, "To c&ustomer", 15, 90, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCustomer_to"
    END
END

WINDOW 3 "Change License" 20 200 291 126
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287748
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmChangeLic"

    BUTTON 1, "OK", 58, 95, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 128, 95, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Help", 198, 95, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    GROUPBOX 3000, "", 5, 8, 282, 78
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    STATICTEXT 3002, "Old license :", 15, 30, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense_old"
    END

    CUSTOMEDIT 3003, "", 125, 28, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    STATICTEXT 13001, "&New license", 15, 50, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense_new"
    END

    INPUTE 13002, "", 125, 48, 150, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "License_New"
        CLIENTEDGE
        SHORTCUE "Enter the new license"
    END
END

WINDOW 4 "Auto Dialog response" 20 200 720 360
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmADresponse"

    BUTTON 1, "OK", 409, 320, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnUpdate"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 479, 320, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel operation"
    END

    BUTTON 4, "&Help", 549, 320, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 14005, "License :", 14, 16, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense"
    END

    CUSTOMEDIT 14010, "", 120, 14, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        OVERSTRIKE
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    STATICTEXT 14014, "Make : ", 14, 36, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    CUSTOMEDIT 14015, "", 120, 34, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "brand"
        CLIENTEDGE
    END

    STATICTEXT 14016, "Model :", 14, 56, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModel"
    END

    STATICTEXT 14017, "Model year / Model :", 14, 56, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModelYear"
        INVISIBLE
    END

    CUSTOMEDIT 14018, "", 120, 54, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "modelcomm"
        CLIENTEDGE
    END

    STATICTEXT 14019, "Type code :", 14, 76, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTypeCode"
    END

    CUSTOMEDIT 14020, "", 120, 74, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "marketingmodel"
        CLIENTEDGE
    END

    STATICTEXT 14021, "Type description :", 14, 96, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTypeDescr"
    END

    CUSTOMEDIT 14022, "", 120, 94, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "descr"
        CLIENTEDGE
    END

    STATICTEXT 14023, "Chassis number :", 14, 116, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassisNr"
    END

    CUSTOMEDIT 14024, "", 120, 114, 175, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "vin"
        CLIENTEDGE
    END

    CUSTOMEDIT 14026, "", 120, 134, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "colorcode"
        CLIENTEDGE
    END

    STATICTEXT 14027, "Colour code 1 :", 14, 136, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtColorCode"
    END

    CUSTOMEDIT 14028, "", 120, 154, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "descrColor"
        CLIENTEDGE
    END

    STATICTEXT 14029, "Colour description :", 14, 156, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtColourDescr"
    END

    CUSTOMEDIT 14030, "", 120, 174, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "trimcode"
        CLIENTEDGE
    END

    STATICTEXT 14031, "Trim code :", 14, 176, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrimCode"
    END

    CUSTOMEDIT 14032, "", 120, 194, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "descrTrim"
        CLIENTEDGE
    END

    STATICTEXT 14033, "Trim description :", 14, 196, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrimDescr"
    END

    CUSTOMEDIT 14034, "", 120, 214, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "engingenr"
        CLIENTEDGE
    END

    STATICTEXT 14035, "Engine number :", 14, 216, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEngine_number"
    END

    STATICTEXT 14036, "&Motor type", 14, 236, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMotorType"
    END

    STATICTEXT 14038, "Fuel :", 14, 256, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFuel"
    END

    CUSTOMEDIT 14037, "", 120, 234, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "descrtech"
        CLIENTEDGE
    END

    CUSTOMEDIT 14039, "", 120, 254, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "fuel"
        CLIENTEDGE
    END

    STATICTEXT 14040, "Registration date :", 14, 276, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtReg_date"
    END

    CUSTOMEDIT 14041, "", 120, 274, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "registrationdate"
        CLIENTEDGE
    END

    LISTBUTTON 14050, "", 409, 34, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMake"
        SHORTCUE "Choose the make"
    END

    LISTBUTTON 14051, "", 409, 54, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel"
        SHORTCUE "Choose the model"
    END

    LISTBUTTON 14052, "", 409, 54, 60, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_year"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model year"
    END

    LISTBUTTON 14053, "", 469, 54, 170, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_code"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model"
    END

    INPUTE 14054, "", 409, 74, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_type"
        CLIENTEDGE
        SHORTCUE "Enter the type code"
    END

    TOOLBUTTON 14055, "", 539, 74, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_type"
        SHORTCUE "Search for a type code"
    END

    INPUTE 14056, "", 409, 94, 300, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_descr_1"
        CLIENTEDGE
        SHORTCUE "Enter the type description"
    END

    INPUTE 14057, "", 409, 114, 200, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Chassis_nr"
        CLIENTEDGE
        SHORTCUE "Enter the chassis number"
    END

    INPUTE 14058, "", 409, 134, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Add_on_code_1"
        CLIENTEDGE
        SHORTCUE "Enter colour code 1"
    END

    TOOLBUTTON 14059, "", 539, 134, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_colour"
        SHORTCUE "Search for a colour code"
    END

    INPUTE 14060, "", 409, 154, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_col_1_descr"
        CLIENTEDGE
        SHORTCUE "Enter the colour description "
    END

    INPUTE 14061, "", 409, 174, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Add_on_code_3 "
        CLIENTEDGE
        SHORTCUE "Enter the trim code "
    END

    TOOLBUTTON 14062, "", 539, 174, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_trim"
        SHORTCUE "Search for a trim code"
    END

    INPUTE 14063, "", 409, 194, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_trim_descr"
        CLIENTEDGE
        SHORTCUE "Enter the trim description "
    END

    INPUTE 14064, "", 409, 214, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 15
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_engine_nr"
        CLIENTEDGE
        SHORTCUE "Enter the motor type"
    END

    LISTBUTTON 14066, "", 409, 254, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFuel"
        SHORTCUE "Choose the type of fuel"
    END

    STATICTEXT 14067, "UNKNOWN", 322, 258, 75, 19
    BEGIN
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtUnknown_Fuel"
        INVISIBLE
    END

    INPUTE 14068, "", 409, 274, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_reg_date"
        CLIENTEDGE
        SHORTCUE "Enter the first registration date"
    END

    INPUTE 14065, "", 409, 234, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 15
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ct_motor_type"
        CLIENTEDGE
        SHORTCUE "Enter the motor type"
    END
END

WINDOW 5 "Order without car creation" 100 100 500 500
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmOrdCarType"

    BUTTON 1, "OK", 282, 462, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 352, 462, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 4, "&Help", 422, 462, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    GROUPBOX 15005, "Car information", 14, 7, 470, 150
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclcarInfo"
    END

    STATICTEXT 15006, "&License", 24, 29, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense :"
    END

    CUSTOMEDIT 15007, "", 140, 27, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    STATICTEXT 15010, "Ma&ke", 24, 70, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    LISTBUTTON 15011, "", 140, 68, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Makecode"
        SHORTCUE "Choose the make"
    END

    STATICTEXT 15014, "&Model", 24, 91, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModel"
    END

    STATICTEXT 15015, "&Model year / Model", 24, 91, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModelYear"
        INVISIBLE
    END

    LISTBUTTON 15016, "", 140, 89, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel"
        SHORTCUE "Choose the model"
    END

    LISTBUTTON 15017, "", 140, 89, 60, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_year"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model year"
    END

    LISTBUTTON 15018, "", 200, 89, 170, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_code"
        DISABLED
        SHORTCUE "Choose the model"
    END

    STATICTEXT 15020, "&Type code", 24, 112, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_code"
    END

    INPUTE 15021, "", 140, 110, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_type"
        CLIENTEDGE
        SHORTCUE "Enter the type code"
    END

    STATICTEXT 15024, "&Type description", 24, 132, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_descr"
    END

    INPUTE 15025, "", 140, 130, 300, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_descr_1"
        CLIENTEDGE
        SHORTCUE "Enter the type description"
    END

    STATICTEXT 15008, "Cha&ssis number", 24, 50, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassis_number"
    END

    INPUTE 15009, "", 140, 48, 210, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Chassis_nr"
        CLIENTEDGE
        SHORTCUE "Enter the chassis number"
    END

    TOOLBUTTON 15030, "", 270, 110, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_type"
        SHORTCUE "Search for a type code"
    END

    GROUPBOX 15040, "Payer/owner", 14, 161, 470, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPayerOwner"
    END

    STATICTEXT 15042, "&Customer number ", 24, 184, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr"
    END

    INPUTE 15043, "", 140, 182, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr"
        CLIENTEDGE
        SHORTCUE "Enter the customer number "
    END

    STATICTEXT 15046, "Name :", 24, 204, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_payer"
    END

    CUSTOMEDIT 15047, "", 140, 202, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_payer"
        CLIENTEDGE
    END

    TOOLBUTTON 15141, "", 245, 182, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 15142, "", 267, 182, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 15143, "", 289, 182, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 15144, "", 311, 182, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu"
        SHORTCUE "View the memo('s) on this customer"
    END

    GROUPBOX 15050, "Contractual owner", 14, 234, 470, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclContrOwner"
    END

    STATICTEXT 15052, "&Customer number ", 24, 257, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_1"
    END

    INPUTE 15053, "", 140, 255, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_1"
        CLIENTEDGE
        SHORTCUE "Enter the customer number"
    END

    STATICTEXT 15056, "Name :", 24, 277, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_driver"
    END

    CUSTOMEDIT 15057, "", 140, 275, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_owner"
        CLIENTEDGE
    END

    TOOLBUTTON 15151, "", 245, 255, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_1"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 15152, "", 267, 255, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_1"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 15153, "", 289, 255, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_1"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 15154, "", 311, 255, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_1"
        SHORTCUE "View the memo('s) on this customer"
    END

    GROUPBOX 15060, "Driver", 14, 307, 470, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclDriver"
    END

    STATICTEXT 15062, "&Customer number ", 24, 330, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_2"
    END

    INPUTE 15063, "", 140, 328, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_2"
        CLIENTEDGE
        SHORTCUE "Enter the customer number "
    END

    STATICTEXT 15066, "Name :", 24, 350, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_driver"
    END

    CUSTOMEDIT 15067, "", 140, 348, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_driver"
        CLIENTEDGE
    END

    TOOLBUTTON 15161, "", 245, 328, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_2"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 15162, "", 267, 328, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_2"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 15163, "", 289, 328, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_2"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 15164, "", 311, 328, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_2"
        SHORTCUE "View the memo('s) on this customer"
    END

    GROUPBOX 15070, "Car contact person", 14, 380, 470, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclProspect"
    END

    STATICTEXT 15072, "&Customer number ", 24, 403, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_3"
    END

    INPUTE 15073, "", 140, 401, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_3"
        CLIENTEDGE
        SHORTCUE "Enter the customer number "
    END

    STATICTEXT 15076, "Name :", 24, 423, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_contact"
    END

    CUSTOMEDIT 15077, "", 140, 421, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_contact"
        CLIENTEDGE
    END

    TOOLBUTTON 15171, "", 245, 401, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_3"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 15172, "", 267, 401, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_3"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 15173, "", 289, 401, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_3"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 15174, "", 311, 401, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_3"
        SHORTCUE "View the memo('s) on this customer"
    END

    TOOLBUTTON 15031, "", 350, 48, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_chassis"
        SHORTCUE "Search for a chassis number"
    END

    STATICTEXT 15044, "&Business partner ", 24, 184, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid"
    END

    INPUTE 15045, "", 140, 182, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid"
        CLIENTEDGE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 15054, "&Business partner ", 24, 257, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_1"
    END

    INPUTE 15055, "", 140, 255, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_1"
        CLIENTEDGE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 15064, "&Business partner ", 24, 330, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_2"
    END

    INPUTE 15065, "", 140, 328, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_2"
        CLIENTEDGE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 15074, "&Business partner", 24, 403, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_3"
    END

    INPUTE 15075, "", 140, 401, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_3"
        CLIENTEDGE
        SHORTCUE "Enter the business partner Id"
    END
END

WINDOW 6 "Previous owner Details" 20 200 720 238
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmPrevOwn"

    STATICTEXT 10601, "Cha&ssis number", 14, 16, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassis_number"
    END

    CUSTOMEDIT 10602, "", 115, 12, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        OVERSTRIKE
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Chassis_nr"
        CLIENTEDGE
    END

    STATICTEXT 10605, "Car info", 14, 36, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarDescr"
    END

    CUSTOMEDIT 10606, "", 115, 34, 450, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        OVERSTRIKE
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Mmc_descr"
        CLIENTEDGE
    END

    STATICTEXT 10634, "&Business partner", 14, 161, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid"
    END

    INPUTE 10635, "", 115, 159, 70, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid"
        CLIENTEDGE
        SHORTCUE "Enter the business partner Id of the previous payer/owner"
    END

    TOOLBUTTON 10636, "", 190, 159, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_bupaid"
        SHORTCUE "Search for the previous payer / owner"
    END

    STATICTEXT 10611, "Start date", 14, 80, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFromDate"
    END

    GROUPBOX 10610, "Car ownership details", 4, 60, 710, 136
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarOwn"
    END

    STATICTEXT 10615, "Start mileage", 14, 100, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStartMil"
    END

    INPUTE 10612, "", 115, 78, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Pcr_own_frm_date"
        CLIENTEDGE
        SHORTCUE "Enter the start date of ownership"
    END

    INPUTN 10616, "", 115, 98, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Pcr_sta_mileage"
        CLIENTEDGE
        SHORTCUE "Enter the start mileage of ownership"
    END

    STATICTEXT 10619, "End date", 230, 80, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtToDate"
    END

    STATICTEXT 10623, "End mileage", 230, 100, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEndMil"
    END

    INPUTE 10620, "", 331, 78, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Pcr_own_to_date"
        CLIENTEDGE
        SHORTCUE "Enter the end date of ownership"
    END

    INPUTN 10624, "", 331, 98, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Pcr_end_mileage"
        CLIENTEDGE
        SHORTCUE "Enter the end mileage of ownership"
    END

    CUSTOMEDIT 10637, "", 225, 159, 450, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        OVERSTRIKE
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bupaid_name"
        CLIENTEDGE
    END

    BUTTON 1, "OK", 511, 210, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 581, 210, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 4, "&Help", 651, 210, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 10630, "&Role", 14, 140, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid"
    END

    LISTBUTTON 10631, "", 115, 138, 230, 100
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPcrRole"
        SHORTCUE "Choose the make"
    END
END

CHILD-WINDOW 101 0 21 986 655
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 2176844804
    NAME "chd_wdwGeneral"

    STATICTEXT 10100, "&License", 5, 12, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense"
    END

    INPUTE 10101, "", 120, 10, 150, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "License"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the license number"
    END

    STATICTEXT 10102, "C&ase number", 5, 32, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCase_number"
    END

    INPUTE 10103, "", 120, 30, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Case_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the case number"
    END

    STATICTEXT 10106, "&Importer number", 5, 52, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImporter_number"
    END

    INPUTE 10107, "", 120, 50, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Importer_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the importer number "
    END

    STATICTEXT 10108, "&Reorder number", 5, 72, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtReoNr"
    END

    INPUTE 10109, "", 120, 70, 100, 19
    BEGIN
        MASK  "UUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cas_reo_ord_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the case reorder number"
    END

    STATICTEXT 10112, "Cha&ssis number", 5, 92, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassis_number"
    END

    INPUTE 10113, "", 120, 90, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Chassis_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the chassis number"
    END

    TOOLBUTTON 10114, "", 301, 90, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_chassis"
        DISABLED
        SHORTCUE "Search for a chassis number"
    END

    STATICTEXT 10115, "Kin&d of car", 5, 132, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKIndOfCar"
    END

    LISTBUTTON 10116, "", 120, 130, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_code"
        DISABLED
        SHORTCUE "Choose kind of car"
    END

    STATICTEXT 10119, "Ma&ke", 5, 193, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    LISTBUTTON 10120, "", 120, 191, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Makecode"
        DISABLED
        SHORTCUE "Choose the make"
    END

    STATICTEXT 10121, "&Model", 5, 214, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModel"
    END

    STATICTEXT 10122, "&Model year / Model", 5, 214, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModelYear"
        INVISIBLE
    END

    LISTBUTTON 10123, "", 120, 212, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel"
        DISABLED
        SHORTCUE "Choose the model"
    END

    LISTBUTTON 10124, "", 120, 212, 60, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_year"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model year"
    END

    LISTBUTTON 10125, "", 180, 212, 170, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel_code"
        DISABLED
        SHORTCUE "Choose the model"
    END

    GROUPBOX 10990, "Payer/owner", 450, 7, 530, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPayerOwner"
    END

    STATICTEXT 10130, "&Type code", 5, 235, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_code"
    END

    INPUTE 10131, "", 120, 233, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_type"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the type code"
    END

    TOOLBUTTON 10132, "", 251, 233, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_type"
        DISABLED
        SHORTCUE "Search for a type code"
    END

    STATICTEXT 10133, "&Type description", 5, 255, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_descr"
    END

    INPUTE 10134, "", 120, 253, 300, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_descr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the type description"
    END

    STATICTEXT 10135, "C&olour code 1", 5, 275, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCodeColour_1"
    END

    INPUTE 10136, "", 120, 273, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Add_on_code_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter colour code 1"
    END

    TOOLBUTTON 10137, "", 251, 273, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_colour"
        DISABLED
        SHORTCUE "Search for a colour code"
    END

    STATICTEXT 10138, "C&olour description", 5, 295, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCol_1_descr"
    END

    INPUTE 10139, "", 120, 293, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_col_1_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the colour description "
    END

    STATICTEXT 10140, "C&olour code 2", 5, 316, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCodeColour_2"
    END

    INPUTE 10141, "", 120, 314, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Add_on_code_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the code of the secondary colour"
    END

    TOOLBUTTON 10142, "", 250, 314, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_color"
        DISABLED
        SHORTCUE "Search for a colour code"
    END

    STATICTEXT 10143, "C&olour description", 5, 336, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCol_2_descr"
    END

    INPUTE 10144, "", 120, 334, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_col_2_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The description of the secondary colour"
    END

    STATICTEXT 10147, "&Trim code", 5, 376, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrim"
    END

    INPUTE 10148, "", 120, 374, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Add_on_code_3 "
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the trim code "
    END

    TOOLBUTTON 10149, "", 250, 374, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_trim"
        DISABLED
        SHORTCUE "Search for a trim code"
    END

    STATICTEXT 10150, "&Trim description", 5, 396, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrim_Descr"
    END

    INPUTE 10151, "", 120, 394, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_trim_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the trim description "
    END

    CHECKBOX 10154, "&Used car", 5, 454, 109, 19
    BEGIN
        CHECKED
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_new_used"
        DISABLED
        SHORTCUE "Check if it is a used car"
    END

    CHECKBOX 10155, "&Difference tax", 120, 454, 109, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cas_dif_tax_yn"
        DISABLED
        SHORTCUE "Check if subject to difference tax"
    END

    CHECKBOX 10156, "&Imported car", 5, 474, 201, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_foreign_yn"
        DISABLED
        SHORTCUE "Check if it is an imported car"
    END

    CHECKBOX 10157, "&Miles instead of kilometers", 5, 494, 201, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_ind_km_mil"
        DISABLED
        SHORTCUE "Check if the odometer reading is in miles instead of kilometers"
    END

    CHECKBOX 10158, "&Involved in accident", 5, 514, 201, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_accident"
        DISABLED
        SHORTCUE "Check if the the car has been involved in an accident"
    END

    CHECKBOX 10159, "This car is a &commercial vehicle", 5, 534, 425, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_com_vehi_yn"
        SHORTCUE "Check this option when this car is a commercial vehicle"
    END

    CHECKBOX 10160, "&This car is a part of the stock in the Commerce Delta Rental module", 5, 554, 425, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cdr_stock_yn"
        SHORTCUE "Check this option "
    END

    STATICTEXT 10161, "&Customer number :", 460, 29, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr"
    END

    INPUTE 10162, "", 575, 27, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the customer number "
    END

    TOOLBUTTON 10163, "", 724, 27, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 10164, "", 746, 27, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu"
        SHORTCUE "View the memo('s) on this customer"
    END

    STATICTEXT 10165, "Name :", 460, 49, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_payer"
    END

    CUSTOMEDIT 10166, "", 575, 47, 350, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_payer"
        CLIENTEDGE
    END

    GROUPBOX 10170, "Contractual owner", 450, 80, 530, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclContrOwner"
    END

    STATICTEXT 10171, "&Customer number :", 460, 102, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_1"
    END

    INPUTE 10172, "", 575, 100, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the customer number"
    END

    TOOLBUTTON 10173, "", 724, 100, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_1"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 10174, "", 746, 100, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_1"
        SHORTCUE "View the memo('s) on this customer"
    END

    STATICTEXT 10175, "Name :", 460, 122, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_driver"
    END

    CUSTOMEDIT 10176, "", 575, 120, 350, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_owner"
        CLIENTEDGE
    END

    GROUPBOX 10180, "Driver", 450, 153, 530, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclDriver"
    END

    STATICTEXT 10181, "&Customer number :", 460, 175, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_2"
    END

    INPUTE 10182, "", 575, 173, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the customer number "
    END

    TOOLBUTTON 10183, "", 724, 173, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_2"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 10184, "", 746, 173, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_2"
        SHORTCUE "View the memo('s) on this customer"
    END

    STATICTEXT 10185, "Name :", 460, 195, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_driver"
    END

    CUSTOMEDIT 10186, "", 575, 193, 350, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_driver"
        CLIENTEDGE
    END

    GROUPBOX 10190, "Car contact person", 450, 226, 530, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclProspect"
    END

    STATICTEXT 10191, "&Customer number :", 460, 248, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCu_nr_3"
    END

    INPUTE 10192, "", 575, 246, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_nr_3"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the customer number "
    END

    TOOLBUTTON 10193, "", 724, 246, 22, 22
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cu_nr_3"
        DISABLED
        SHORTCUE "Search for a customer number"
    END

    TOOLBUTTON 10194, "", 746, 246, 22, 22
    BEGIN
        IMAGEFILE "Butfrm005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMemoViewCu_3"
        SHORTCUE "View the memo('s) on this customer"
    END

    STATICTEXT 10195, "Name :", 460, 268, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtName_contact"
    END

    CUSTOMEDIT 10196, "", 575, 266, 350, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name_contact"
        CLIENTEDGE
    END

    STATICTEXT 10498, "P&ublic Reg. No.", 460, 536, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLegRegNr"
    END

    INPUTE 10499, "", 575, 534, 100, 19
    BEGIN
        MASK  "UUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Mx_legal_reg_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of the public registration of vehicles"
    END

    INPUTE 10495, "", 575, 514, 100, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_dea_nr_sel"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the dealer number of the dealer that sold the car"
    END

    STATICTEXT 10494, "&Selling dealer no.", 460, 516, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSelDeaNr"
    END

    TOOLBUTTON 10300, "", 680, 27, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 10301, "", 702, 27, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 10302, "", 702, 100, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_1"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 10303, "", 702, 173, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_2"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 10304, "", 702, 246, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCha_cust_3"
        DISABLED
        SHORTCUE "Change the customer information"
    END

    TOOLBUTTON 10500, "", 680, 100, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_1"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 10501, "", 680, 173, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_2"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 10502, "", 680, 246, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCre_cust_3"
        DISABLED
        SHORTCUE "Enter a new customer"
    END

    TOOLBUTTON 10503, "", 768, 27, 22, 22
    BEGIN
        IMAGEFILE "Butbar052.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSMSEmailCu"
        SHORTCUE "Start SMS/Email program for this customer"
    END

    TOOLBUTTON 10504, "", 768, 100, 22, 22
    BEGIN
        IMAGEFILE "Butbar052.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSMSEmailCu_1"
        SHORTCUE "Start SMS/Email program for this customer"
    END

    TOOLBUTTON 10505, "", 768, 173, 22, 22
    BEGIN
        IMAGEFILE "Butbar052.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSMSEmailCu_2"
        SHORTCUE "Start SMS/Email program for this customer"
    END

    TOOLBUTTON 10506, "", 768, 246, 22, 22
    BEGIN
        IMAGEFILE "Butbar052.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSMSEmailCu_3"
        SHORTCUE "Start SMS/Email program for this customer"
    END

    STATICTEXT 10167, "&Business partner :", 460, 29, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid"
    END

    INPUTE 10168, "", 575, 27, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 10177, "&Business partner :", 460, 102, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_1"
    END

    INPUTE 10178, "", 575, 100, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_1"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 10187, "&Business partner :", 460, 175, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_2"
    END

    INPUTE 10188, "", 575, 173, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_2"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the business partner Id"
    END

    STATICTEXT 10197, "&Business partner :", 460, 248, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBupaid_3"
    END

    INPUTE 10198, "", 575, 246, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bupaid_3"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the business partner Id"
    END

    TOOLBUTTON 10507, "", 270, 8, 22, 22
    BEGIN
        IMAGEFILE "Butbar068.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMailMergeCar"
        DISABLED
        SHORTCUE "Open the mail merge program for this car"
    END

    TOOLBUTTON 10508, "", 790, 27, 22, 22
    BEGIN
        IMAGEFILE "Butbar068.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMailMergeCu"
        DISABLED
        SHORTCUE "Open the mail merge program for this customer"
    END

    TOOLBUTTON 10509, "", 790, 100, 22, 22
    BEGIN
        IMAGEFILE "Butbar068.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMailMergeCu_1"
        DISABLED
        SHORTCUE "Open the mail merge program for this customer"
    END

    TOOLBUTTON 10510, "", 790, 173, 22, 22
    BEGIN
        IMAGEFILE "Butbar068.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMailMergeCu_2"
        DISABLED
        SHORTCUE "Open the mail merge program for this customer"
    END

    TOOLBUTTON 10511, "", 790, 246, 22, 22
    BEGIN
        IMAGEFILE "Butbar068.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMailMergeCu_3"
        DISABLED
        SHORTCUE "Open the mail merge program for this customer"
    END

    STATICTEXT 10117, "&Car class", 5, 152, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarClass"
    END

    LISTBUTTON 10118, "", 120, 150, 230, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_class"
        DISABLED
        SHORTCUE "Choose the car class"
    END

    GROUPBOX 10200, "Commercial info", 450, 299, 530, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCommerc"
    END

    STATICTEXT 10201, "&Commercial type", 460, 321, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCct_id"
    END

    INPUTE 10202, "", 575, 319, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cct_id"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the commercial type code"
    END

    TOOLBUTTON 10203, "", 702, 319, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_cct"
        DISABLED
        SHORTCUE "Search for a type code"
    END

    CUSTOMEDIT 10204, "", 575, 339, 395, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cct_descr"
        CLIENTEDGE
    END

    STATICTEXT 10209, "&Exp. replace date", 460, 363, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCar_exp_rep_date"
    END

    INPUTE 10210, "", 575, 361, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_exp_rep_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the expected replacement date of the car"
    END

    STATICTEXT 10213, "&Exp. replace mil.", 460, 383, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCar_exp_rep_mil"
    END

    INPUTN 10214, "", 575, 381, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_exp_rep_mil"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the expected replacement mileage"
    END

    CHECKBOX 10217, "&Expected replacement info manually entered", 702, 381, 265, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_exp_rep_man"
        DISABLED
        SHORTCUE "If checked the expected replacement data was entered manually"
    END

    STATICTEXT 10220, "&Configuration date", 460, 403, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCar_conf_date"
    END

    INPUTE 10221, "", 575, 401, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_conf_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the original car configuration date"
    END

    CHECKBOX 10231, "&Sold with guaranteed price conditions", 460, 440, 250, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_price_gar"
        DISABLED
        SHORTCUE "Check if the car is sold with a guaranteed price"
    END

    STATICTEXT 10145, "&Basic colour", 5, 356, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAo_basic_code_1"
    END

    LISTBUTTON 10512, "", 120, 354, 230, 300
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAo_basic_code_1"
        DISABLED
        SHORTCUE "Choose the basic colour of this car"
    END

    STATICTEXT 10152, "&Basic trim", 5, 416, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAo_basic_code_3"
    END

    LISTBUTTON 10153, "", 120, 414, 230, 300
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAo_basic_code_3"
        DISABLED
        SHORTCUE "Choose the basic trim of this car"
    END

    TOOLBUTTON 10513, "", 350, 191, 22, 22
    BEGIN
        IMAGEFILE "Butbar059.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnGMEESA"
        SHORTCUE "Open Electronic Service Assistant dialogue"
    END

    STATICTEXT 10280, "Sold by :", 460, 468, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtUserSal"
    END

    CUSTOMEDIT 10281, "", 575, 466, 395, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "UserFullname"
        CLIENTEDGE
    END

    STATICTEXT 10514, "&Vehicle category", 460, 556, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarVehCat"
    END

    LISTBUTTON 10515, "", 575, 554, 275, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCarVehCat"
        DISABLED
        SHORTCUE "Choose the vehicle category"
    END

    CHECKBOX 10590, "&Inactive", 863, 27, 110, 19
    BEGIN
        READONLY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_obsolete_yn"
        DISABLED
        SHORTCUE "If checked the this business partner is inactive"
    END

    CHECKBOX 10591, "&Inactive", 863, 100, 110, 19
    BEGIN
        READONLY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_obsolete_yn_1"
        DISABLED
        SHORTCUE "If checked the this business partner is inactive"
    END

    CHECKBOX 10592, "&Inactive", 863, 173, 110, 19
    BEGIN
        READONLY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_obsolete_yn_2"
        DISABLED
        SHORTCUE "If checked the this business partner is inactive"
    END

    CHECKBOX 10593, "&Inactive", 863, 246, 110, 19
    BEGIN
        READONLY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cu_obsolete_yn_3"
        DISABLED
        SHORTCUE "If checked the this business partner is inactive"
    END

    STATICTEXT 10991, "&Euro standard", 460, 576, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCasEuroNorm"
    END

    INPUTE 10992, "", 575, 574, 275, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cas_euro_norm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the Euro standard for emission"
    END
END

CHILD-WINDOW 102 0 0 986 655
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287300
    NAME "chd_wdwVarious"

    GROUPBOX 10229, "Car information", 5, 12, 430, 390
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarInfo"
    END

    STATICTEXT 10230, "&Construction yyyy/mm", 15, 34, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtConstr_year"
    END

    INPUTE 10231, "", 145, 32, 75, 19
    BEGIN
        MASK  "0000/00"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_con_yyyymm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the construction date"
    END

    STATICTEXT 10240, "&Registration date", 15, 54, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRegDate"
    END

    INPUTE 10241, "", 145, 52, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_reg_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the registration date"
    END

    INPUTE 10242, "", 225, 52, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_reg_1_date"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the re-registration date"
    END

    INPUTE 10243, "", 305, 52, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_reg_2_date"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the de-registration date"
    END

    STATICTEXT 10244, "&Actual mil. + date", 15, 74, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtActual_mileage"
    END

    INPUTN 10245, "", 145, 72, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_act_mileage"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the actual mileage"
    END

    INPUTE 10246, "", 225, 72, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_act_mil_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the date when this mileage was registered"
    END

    STATICTEXT 10248, "Del. &mileage + date", 15, 94, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDelivery_mileage"
    END

    INPUTN 10249, "", 145, 92, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_del_mileage"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the delivery mileage"
    END

    INPUTE 10250, "", 225, 92, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_del_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the delivery date"
    END

    STATICTEXT 10251, "&Inspection date ", 15, 114, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInspectDate"
    END

    INPUTE 10252, "", 145, 112, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_inspect_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the expected inspection date"
    END

    STATICTEXT 10254, "&Emission test date ", 15, 134, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEmTestDate"
    END

    INPUTE 10255, "", 145, 132, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_em_test_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The second inspection date, e.g. emission test date"
    END

    STATICTEXT 10256, "&Car document no.", 15, 154, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarDocNo"
    END

    INPUTE 10257, "", 145, 152, 75, 19
    BEGIN
        MASK  "UUUUUUUU"
        PADCHARACTER 32
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_doc_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the car document number"
    END

    STATICTEXT 10264, "E&ngine number", 15, 174, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEngine_number"
    END

    INPUTE 10265, "", 145, 172, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_engine_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the engine number"
    END

    STATICTEXT 10266, "&Key number -1-", 15, 194, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKey_number"
    END

    INPUTE 10267, "", 145, 192, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_key_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter key number 1"
    END

    STATICTEXT 10268, "Ke&y number -2-", 15, 214, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKey_number"
    END

    INPUTE 10269, "", 145, 212, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_key_nr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter key number 2"
    END

    STATICTEXT 10270, "&Security code", 15, 234, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSecur_code"
    END

    INPUTE 10271, "", 145, 232, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_secur_code"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the security code"
    END

    STATICTEXT 10272, "&Radio code", 15, 254, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRadio_code"
    END

    INPUTE 10273, "", 145, 252, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_radio_code"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the radio code "
    END

    STATICTEXT 10276, "Ser&vice contract no.", 15, 274, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtServ_contract"
    END

    INPUTE 10277, "", 145, 272, 175, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_serv_cont_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the service contract number"
    END

    STATICTEXT 10282, "&Usage of the car", 15, 314, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtUsage"
    END

    LISTBUTTON 10283, "", 145, 312, 280, 340
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCarUsage"
        DISABLED
        SHORTCUE "Choose the type of usage of the car"
    END

    STATICTEXT 10280, "&Additional code", 15, 294, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAddCode"
    END

    INPUTE 10281, "", 145, 292, 175, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_add_code"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the additional code for this type"
    END

    STATICTEXT 10284, "&Kind of vehicle", 15, 335, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKindOfVehicle"
    END

    LISTBUTTON 10285, "", 145, 333, 280, 320
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vehicle_code"
        DISABLED
        SHORTCUE "Choose the kind of vehicle"
    END

    STATICTEXT 10286, "&Rate group activities", 15, 356, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRate_group"
    END

    LISTBUTTON 10287, "", 145, 354, 280, 355
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnRate_group"
        DISABLED
        SHORTCUE "Choose the activity rate group"
    END

    INPUTN 10289, "", 145, 374, 25, 19
    BEGIN
        MASK "##"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_nof_prev_own"
        CLIENTEDGE
        SHORTCUE "Enter the number of previous owners"
    END

    STATICTEXT 10312, "F&uel", 15, 429, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFuel"
    END

    LISTBUTTON 10313, "", 145, 427, 280, 247
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Fuel_code"
        DISABLED
        SHORTCUE "Choose the type of fuel"
    END

    STATICTEXT 10314, "&Tires", 15, 449, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTires"
    END

    LISTBUTTON 10315, "", 145, 447, 280, 226
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Tire_code"
        DISABLED
        SHORTCUE "Choose the type of tires"
    END

    STATICTEXT 10324, "&Gear box", 15, 469, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtGearCode"
    END

    LISTBUTTON 10325, "", 145, 467, 280, 205
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gear_code"
        DISABLED
        SHORTCUE "Choose the type of gear box"
    END

    STATICTEXT 10328, "&Body style", 15, 489, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBodyStyle"
    END

    LISTBUTTON 10329, "", 145, 487, 280, 184
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "body_style"
        DISABLED
        SHORTCUE "Choose the body style"
    END

    STATICTEXT 10332, "&Motor type", 15, 509, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMotorType"
    END

    INPUTE 10333, "", 145, 507, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 15
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ct_motor_type"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the motor type"
    END

    STATICTEXT 10334, "&Drive train", 15, 529, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDriveTrain"
    END

    LISTBUTTON 10335, "", 145, 527, 280, 142
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnDrive_train"
        DISABLED
        SHORTCUE "Choose the drive train"
    END

    STATICTEXT 10336, "Number of &seats", 15, 549, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSeats"
    END

    LISTBUTTON 10337, "", 145, 547, 280, 121
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSeats"
        DISABLED
        SHORTCUE "Choose the number of seats"
    END

    STATICTEXT 10338, "Empty / Max. &weight", 15, 569, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWeight"
    END

    INPUTN 10339, "", 145, 567, 75, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_weight"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the empty weight of the car"
    END

    INPUTN 10340, "", 222, 567, 75, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_weight_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the maximum weight of the car"
    END

    STATICTEXT 10388, "&No. of prev. owners", 15, 376, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNofPrevOwn"
    END

    GROUPBOX 10500, "Warranty information", 450, 12, 520, 88
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclWarranty"
    END

    STATICTEXT 10502, "Kind of &warranty", 460, 34, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKind_of_warranty"
    END

    LISTBUTTON 10503, "", 590, 32, 280, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Warranty_code"
        DISABLED
        SHORTCUE "Choose the kind of warranty"
    END

    STATICTEXT 10506, "End &date", 460, 54, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEnd_date_warranty"
    END

    INPUTE 10507, "", 590, 53, 75, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_end_war_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the end date"
    END

    STATICTEXT 10510, "Ma&ximum mileage", 460, 75, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMax_mileage_warranty"
    END

    INPUTN 10511, "", 590, 73, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_war_mileage"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the maximum mileage"
    END

    GROUPBOX 10520, "Extended warranty information", 450, 104, 520, 88
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclExtendedWarranty"
    END

    STATICTEXT 10522, "Kind of ext. warranty", 460, 126, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKind_of_ext_warranty"
    END

    LISTBUTTON 10523, "", 590, 124, 280, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "War_code_1"
        DISABLED
        SHORTCUE "Choose the kind of extended warranty"
    END

    STATICTEXT 10526, "End date", 460, 146, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEnd_date_ext_warranty"
    END

    INPUTE 10527, "", 590, 145, 75, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_ew_end_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the end date"
    END

    STATICTEXT 10530, "Maximum mileage", 460, 167, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMax_mileage_ext_warranty"
    END

    INPUTN 10531, "", 590, 165, 75, 19
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_ew_end_mil"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the maximum mileage"
    END

    GROUPBOX 10540, "Luxury tax", 450, 196, 520, 72
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclLuxuryTax"
    END

    STATICTEXT 10542, "Tax &base amount", 460, 218, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTaxBaseAmount"
    END

    INPUTN 10543, " ", 590, 216, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_base_tax"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the base amount subject to tax"
    END

    STATICTEXT 10544, "Calculation &date", 460, 238, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTaxCalcDate"
    END

    INPUTE 10545, "", 590, 236, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_tax_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the calculation date"
    END

    GROUPBOX 10550, "Maintenance contract information", 450, 272, 520, 132
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclContract"
        INVISIBLE
    END

    STATICTEXT 10552, "Kind of &contract", 460, 294, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKind_of_contract"
        INVISIBLE
    END

    LISTBUTTON 10553, "", 590, 292, 280, 363
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Make_gc_code"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the kind of warranty"
    END

    STATICTEXT 10556, "&Start date", 460, 315, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStart_date"
        INVISIBLE
    END

    INPUTE 10557, "", 590, 313, 75, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_con_sta_date"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Enter the start date of the contract"
    END

    STATICTEXT 10560, "Number of months :", 460, 335, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNof_month"
        INVISIBLE
    END

    CUSTOMEDIT 10561, "", 590, 333, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Gc_month"
        CLIENTEDGE
        INVISIBLE
    END

    STATICTEXT 10562, "Maximum mileage :", 460, 355, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMax_mileage"
        INVISIBLE
    END

    CUSTOMEDIT 10563, "", 590, 353, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Gc_mileage"
        CLIENTEDGE
        INVISIBLE
    END

    BUTTON 10570, "&Valuation SDOnline", 835, 600, 125, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnSDOnline"
        SHORTCUE "Call the DAT SDOnline program"
    END

    GROUPBOX 10571, "Car type information", 5, 405, 964, 229
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarTypeInfo"
    END

    STATICTEXT 10360, "&Energy label", 460, 429, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_en_lable"
    END

    LISTBUTTON 10361, "", 590, 427, 280, 247
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_en_lable"
        DISABLED
        SHORTCUE "Choose the energy label of this car"
    END

    STATICTEXT 10344, "Power Watt / HP", 15, 589, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPower"
    END

    INPUTN 10345, "", 145, 587, 75, 19
    BEGIN
        MASK "####"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_power_watt"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the power watt of the car"
    END

    INPUTN 10346, "", 222, 587, 75, 19
    BEGIN
        MASK "####"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_power_hp"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the power (in horsepower units) of the car"
    END

    STATICTEXT 10350, "Wheels / Wheel base", 15, 609, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWheel"
    END

    INPUTN 10352, "", 222, 607, 75, 19
    BEGIN
        MASK "##########"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_wheel_base"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the wheel base of the car (in cm.)"
    END

    INPUTN 10351, "", 145, 607, 75, 19
    BEGIN
        MASK "##"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_wheels"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of wheels of the car"
    END

    STATICTEXT 10364, "CO2 emission", 460, 449, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_co2_emm"
    END

    INPUTN 10365, "", 590, 447, 75, 19
    BEGIN
        MASK "###"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_co2_emm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the CO2 emission of the car"
    END

    STATICTEXT 10368, "Cylinders", 460, 469, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_no_of_cyl"
    END

    INPUTN 10369, "", 590, 467, 75, 19
    BEGIN
        MASK "##"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_no_of_cyl"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of cylinders of the car"
    END

    STATICTEXT 10372, "Capacity", 460, 489, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_capacity"
    END

    INPUTN 10373, "", 590, 487, 75, 19
    BEGIN
        MASK "####"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_capacity"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the capacity of the car"
    END

    STATICTEXT 10376, "&Car type kind", 460, 509, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_kind"
    END

    INPUTE 10377, "", 590, 507, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 20
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ct_kind"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the kind of car type"
    END

    STATICTEXT 10380, "Disposal costs", 460, 529, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_disp_cost"
    END

    INPUTN 10381, "", 590, 527, 100, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_disp_cost"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the car disposal costs"
    END

    STATICTEXT 10384, "Disp. lithium battery", 460, 549, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCt_disp_lit_bat"
    END

    INPUTN 10385, "", 590, 547, 100, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_disp_lit_bat"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the lithium battery disposal costs"
    END

    CHECKBOX 10399, "&Hybrid car", 795, 547, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_hybrid"
        DISABLED
        SHORTCUE "Check if the car is a hybrid car"
    END

    INPUTE 10253, "", 225, 112, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_chkup_date_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last executed inspection date"
    END

    STATICTEXT 10410, "Fuel &urban area", 460, 569, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtUrbanArea"
    END

    INPUTN 10411, "", 590, 567, 75, 19
    BEGIN
        MASK "#0.0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_fuel_cons_urb"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the fuel consumption inside an urban area"
    END

    STATICTEXT 10415, "Fuel &outside urban ", 460, 589, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOutUrban"
    END

    INPUTN 10416, "", 590, 587, 75, 19
    BEGIN
        MASK "#0.0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_fuel_cons_out"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the fuel consumption outside an urban area"
    END

    STATICTEXT 10420, "Fuel &combined", 460, 609, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtComb"
    END

    INPUTN 10421, "", 590, 607, 75, 19
    BEGIN
        MASK "#0.0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_fuel_cons_com"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the combined fuel consumption"
    END
END

CHILD-WINDOW 103 0 0 986 655
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwDetails"

    GRID 10301, "Grid", 5, 10, 772, 615
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 10302
        COLUMNS 5
        VSCROLLBAR
        GRIDCOLWIDTH 0, 125
        GRIDCOLTITLE 0, "Type"
        GRIDCOLWIDTH 1, 125
        GRIDCOLTITLE 1, "Add-on code"
        GRIDCOLWIDTH 2, 300
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Price excl."
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Price incl."
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclDetails"
        CLIENTEDGE
    END

    LISTBUTTON 10310, "", -800, 0, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnType"
        CLIENTEDGE
    END
END

CHILD-WINDOW 104 0 0 986 655
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwInterval"

    GRID 10401, "Grid", 5, 10, 972, 615
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 10402
        COLUMNS 8
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 125
        GRIDCOLTITLE 0, "Interval"
        GRIDCOLWIDTH 1, 85
        GRIDCOLTITLE 1, "Activity ID"
        GRIDCOLWIDTH 2, 300
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 200
        GRIDCOLTITLE 3, "Calculate via"
        GRIDCOLWIDTH 4, 60
        GRIDCOLTITLE 4, "Last date"
        GRIDCOLWIDTH 5, 60
        GRIDCOLTITLE 5, "Last mil."
        GRIDCOLWIDTH 6, 60
        GRIDCOLTITLE 6, "Next date"
        GRIDCOLWIDTH 7, 60
        GRIDCOLTITLE 7, "Next mil."
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclIntActDet"
        CLIENTEDGE
    END

    LISTBUTTON 10410, "", -800, 0, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnInterval"
        CLIENTEDGE
    END

    LISTBUTTON 10411, "", -800, 0, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCalcVia"
        CLIENTEDGE
    END
END

CHILD-WINDOW 105 0 0 986 655
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 12582916
    NAME "chd_wdwMake "

    STATICTEXT 10501, "Dummy field", 15, 27, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Dummy field"
        DISABLED
        INVISIBLE
    END

    INPUTE 10502, "", 115, 28, 90, 25
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Dummy Field"
        CLIENTEDGE
        DISABLED
        INVISIBLE
    END

    CHILD-WINDOW 151, 51, 0, 0
    BEGIN
        NAME "chd_frmOpel" 
    END

    CHILD-WINDOW 152, 52, 0, 0
    BEGIN
        NAME "chd_frmFord" 
    END
END

CHILD-WINDOW 106 0 0 986 655
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwPrevOwn"

    GRID 10601, "Grid", 5, 10, 772, 615
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 10602
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 70
        GRIDCOLTITLE 0, "From date"
        GRIDCOLWIDTH 1, 70
        GRIDCOLTITLE 1, "Start mileage"
        GRIDCOLWIDTH 2, 322
        GRIDCOLTITLE 2, "Business Partner"
        GRIDCOLWIDTH 3, 150
        GRIDCOLTITLE 3, "Role"
        GRIDCOLWIDTH 4, 70
        GRIDCOLTITLE 4, "To date"
        GRIDCOLWIDTH 5, 70
        GRIDCOLTITLE 5, "End mileage"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPrevOwn"
        CLIENTEDGE
    END
END

CHILD-WINDOW 107 0 0 986 655
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwFinance"

    GROUPBOX 10720, "Financing information", 5, 119, 480, 283
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclFinance"
    END

    GROUPBOX 10770, "Financial lease information", 495, 12, 480, 390
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclInsur"
    END

    STATICTEXT 10725, "F&inancing company", 24, 159, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinComp"
    END

    STATICTEXT 10721, "&Financing type", 24, 139, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinType"
    END

    LISTBUTTON 10722, "", 138, 137, 330, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinType"
        SHORTCUE "Choose the financing type"
    END

    LISTBUTTON 10726, "", 138, 157, 330, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinComp"
        SHORTCUE "Choose the financing company"
    END

    INPUTE 10730, "", 138, 197, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 30
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_contract_id"
        CLIENTEDGE
        SHORTCUE "Enter the financing contract Id"
    END

    STATICTEXT 10729, "&Contract Id", 24, 199, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinCont"
    END

    STATICTEXT 10733, "&Duration", 24, 219, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonth1"
    END

    INPUTN 10734, "", 138, 217, 30, 19
    BEGIN
        MASK "##0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_months"
        CLIENTEDGE
        SHORTCUE "Enter the duration of the financing contract in months"
    END

    STATICTEXT 10735, "months", 173, 219, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonth2"
    END

    STATICTEXT 10738, "Financed &amount", 24, 239, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinAmnt"
    END

    INPUTN 10739, "", 138, 237, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_amount"
        CLIENTEDGE
        SHORTCUE "Enter the total financed amount"
    END

    STATICTEXT 10742, "&Repayment amount", 24, 259, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonthAmnt1"
    END

    INPUTN 10743, "", 138, 257, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_month_amnt"
        CLIENTEDGE
        SHORTCUE "Enter the monthly repayment amount"
    END

    STATICTEXT 10744, "per month", 215, 259, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonthAmnt2"
    END

    STATICTEXT 10751, "&Start date financing", 24, 319, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinStart"
    END

    INPUTE 10752, "", 138, 317, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_date_sta"
        CLIENTEDGE
        SHORTCUE "Enter the start date of the financing contract"
    END

    STATICTEXT 10755, "&End date financing", 24, 339, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinEnd"
    END

    INPUTE 10758, "", 138, 337, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_date_end"
        CLIENTEDGE
        SHORTCUE "Enter the expiry date of the financing contract"
    END

    STATICTEXT 10701, "&Insurance type", 24, 32, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInsurType"
    END

    LISTBUTTON 10702, "", 138, 30, 330, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnInsurType"
        SHORTCUE "Choose the type of insurance"
    END

    STATICTEXT 10705, "I&nsurance company", 24, 52, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInsurComp"
    END

    LISTBUTTON 10706, "", 138, 50, 330, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnInsurComp"
        SHORTCUE "Choose the insurance company"
    END

    CHECKBOX 10710, "In&surance closed via dealer", 22, 72, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Insur_own_yn"
        SHORTCUE "Check if the insurance was closed via the dealer"
    END

    STATICTEXT 10747, "&Interest Rate", 24, 279, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinIntRate"
    END

    INPUTN 10748, "", 138, 277, 75, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_int_rate"
        CLIENTEDGE
        SHORTCUE "Enter the interest rate effective for this financing"
    END

    GROUPBOX 10700, "Insurance information", 5, 12, 480, 100
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclInsur"
    END

    CHECKBOX 10771, "Financial lease applied", 512, 32, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_lease_yn"
        SHORTCUE "Check if a financial lease contract is applied"
    END

    STATICTEXT 10772, "&Maximum mileage per year", 514, 52, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMaxMilYr"
    END

    STATICTEXT 10776, "&Calc. average mileage per month", 514, 92, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilClc"
    END

    STATICTEXT 10778, "&Actual average mileage per month", 514, 112, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilAct"
    END

    STATICTEXT 10774, "Mileage &tolerance", 514, 72, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilClc"
    END

    INPUTN 10773, "", 719, 50, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_max_mil_yr"
        CLIENTEDGE
        SHORTCUE "Enter the maximum allowed mileage per year"
    END

    INPUTN 10775, "", 719, 70, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_tol"
        CLIENTEDGE
        SHORTCUE "Enter the tolerance of the maximum allowed mileage per year (e.g. 500 km)"
    END

    INPUTN 10777, "", 719, 90, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mnth_mil_clc"
        CLIENTEDGE
        SHORTCUE "Enter the average calculated mileage per month based upon the maximum mileage per year"
    END

    INPUTN 10779, "", 719, 110, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mnth_mil_act"
        CLIENTEDGE
        SHORTCUE "Enter the actual average mileage per month based upon the actual mileage of the car"
    END

    STATICTEXT 10780, "&Initial / special payment amount", 514, 132, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleSpecPay"
    END

    INPUTN 10781, "", 719, 130, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_spec_pay"
        CLIENTEDGE
        SHORTCUE "Enter an Initial/special payment amount"
    END

    STATICTEXT 10782, "&Exceeding mileage surcharge", 514, 152, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMilCharge"
    END

    STATICTEXT 10784, "&Unexceeded mileage limit credit", 514, 172, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMilCredit"
    END

    INPUTN 10783, "", 719, 150, 75, 19
    BEGIN
        MASK "#0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_charge"
        CLIENTEDGE
        SHORTCUE "Enter the surcharge for each kilometer beyond maximum mileage in €"
    END

    INPUTN 10785, "", 719, 170, 75, 19
    BEGIN
        MASK "#0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_credit"
        CLIENTEDGE
        SHORTCUE "Enter the credit amount for each kilometer when the maximum mileage is not reached in €"
    END

    STATICTEXT 10786, "&Expected rest value of the car", 514, 192, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleExpRest"
    END

    INPUTN 10787, "", 719, 190, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_exp_rest"
        CLIENTEDGE
        SHORTCUE "Enter the expected rest value excl. VAT of the vehicle at the end of the leasing contract"
    END

    CHECKBOX 10788, "&Buy back guarantee", 512, 211, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_buy_back_yn"
        SHORTCUE "Check if the dealer is bound to buy back the vehicle when the contract is ended"
    END

    STATICTEXT 10789, "&Agreed customer sales price", 514, 232, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleCustPri"
    END

    INPUTN 10790, "", 719, 230, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_cust_pri"
        CLIENTEDGE
        SHORTCUE "Enter the agreed sales price of  the vehicle, when the customer wants to buy it after the contract is ended"
    END

    STATICTEXT 10791, "&Lease contract includes", 514, 252, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleIncludes"
    END

    LISTBUTTON 10792, "", 719, 250, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFleIncludes"
        SHORTCUE "Choose the lease including conditions"
    END

    STATICTEXT 10793, "Additional lease &info:", 514, 272, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleInfo"
    END

    CUSTOMEDIT 10794, "", 514, 292, 450, 98
    BEGIN
        LIMIT 500
        ONEPARAGRAPH
        WORDWRAP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_info"
        CLIENTEDGE
        SHORTCUE "Enter additional lease contract info and conditions"
    END
END

CHILD-WINDOW 108 0 0 986 655
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwFreeField"

    GRID 10801, "", 5, 10, 948, 600
    BEGIN
        ROWS 40
        COLUMNHEAD 20, 10802
        COLUMNS 2
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 300
        GRIDCOLTITLE 0, "Field description"
        GRIDCOLWIDTH 1, 625
        GRIDCOLTITLE 1, "Value"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclFreeFields"
        CLIENTEDGE
        SHORTCUE "Enter values in the value column"
    END
END

CHILD-WINDOW 151 0 0 986 655
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwOpel"

    GROUPBOX 15100, "Opel Assistance Plus (OAP) information", 5, 10, 690, 230
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOMSGInfo"
    END

    GRID 15101, "Grid", 15, 30, 668, 200
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 15102
        COLUMNS 8
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Order no."
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Release date"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "OAP card no."
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Main dealer"
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Rep. dealer"
        GRIDCOLWIDTH 5, 75
        GRIDCOLTITLE 5, "Exp. mileage"
        GRIDCOLWIDTH 6, 75
        GRIDCOLTITLE 6, "Exp. date"
        GRIDCOLWIDTH 7, 20
        GRIDCOLTITLE 7, "E"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclOMSGInfo"
        CLIENTEDGE
    END

    GROUPBOX 15103, "IVH Service Campaign information", 5, 245, 572, 230
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxIVHInfo"
    END

    GRID 15106, "Grid", 15, 261, 550, 200
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 15107
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Order no."
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "IVH date"
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "IVH time"
        GRIDCOLWIDTH 3, 275
        GRIDCOLTITLE 3, "IVH result"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclIVHInfo"
        CLIENTEDGE
    END
END

CHILD-WINDOW 152 0 0 986 655
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwFord"

    GROUPBOX 15200, "FSA information", 5, 10, 572, 230
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxFSAInfo"
    END

    GRID 15201, "Grid", 15, 27, 550, 200
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 15202
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Order no."
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "FSA date"
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "FSA time"
        GRIDCOLWIDTH 3, 275
        GRIDCOLTITLE 3, "FSA result"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclFSAInfo"
        CLIENTEDGE
    END
END

MENU 101
BEGIN
    MENU-ITEM 30100 "&File"
    BEGIN
        NAME "menFil"
        MENU-ITEM 30010 "E&xit" 16718
        BEGIN
            NAME "menExit"
        END
    END
    MENU-ITEM 30200 "&Edit"
    BEGIN
        NAME "menEditing"
        MENU-ITEM 30201 "&Save\tF2" 332
        BEGIN
            NAME "menSave"
        END
        MENU-ITEM 30202 "&Cancel\tEsc" 27
        BEGIN
            NAME "menCancel"
        END
        MENU-ITEM 30203 "&New\tF3" 333
        BEGIN
            NAME "menNew"
        END
        MENU-ITEM 30204 "&Edit\tF4" 334
        BEGIN
            NAME "menEdit"
        END
        MENU-ITEM 30205 "&Delete\tF5" 335
        BEGIN
            NAME "menDelete"
        END
    END
    MENU-ITEM 30300 "&Program"
    BEGIN
        NAME "menProgram"
        MENU-ITEM 30301 "&Search\tF8" 338
        BEGIN
            NAME "menSearch"
        END
        MENU-ITEM 30302 "&Print\tF9" 339
        BEGIN
            NAME "menPrint"
        END
        MENU-ITEM 30399 "P&rint screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
        SEPARATOR
        MENU-ITEM 30306 "Memo &maintenance\tF10" 340
        BEGIN
            NAME "menMemoMain"
        END
        MENU-ITEM 30307 "Memo &view\tCtrl+F10"
        BEGIN
            NAME "menMemoView"
        END
    END
    MENU-ITEM 30400 "&Windows"
    BEGIN
        NAME "menWindows"
    END
    MENU-ITEM 30500 "&Help"
    BEGIN
        NAME "menHelpIssues"
        MENU-ITEM 30501 "&Help Topics\tF1"
        BEGIN
            NAME "menHelp"
        END
        MENU-ITEM 30502 "&Reference Help\tCtrl+F1" 8523
        BEGIN
            NAME "menRefHelp"
        END
        SEPARATOR
        MENU-ITEM 30504 "&About Car IT DMS"
        BEGIN
            NAME "menAbout"
        END
    END
END
