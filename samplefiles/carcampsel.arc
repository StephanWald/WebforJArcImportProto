VERSION "4.0"

WINDOW 1 "Peugeot recall campaigns" 140 80 855 665
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287287500
    NAME "frmRecallCampSys1"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "&Post lines", 675, 635, 75, 22
    BEGIN
        NAME "pbnPost"
        INVISIBLE
        SHORTCUE "Display the statistic information"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Close", 675, 635, 75, 22
    BEGIN
        NAME "pbnClose"
        SHORTCUE "Close the form"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 760, 635, 75, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11000, "&Chassis number", 15, 14, 110, 19
    BEGIN
        NAME "txtChassisNr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11001, "", 130, 12, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Chassis_nr"
        CLIENTEDGE
        SHORTCUE "Enter the chassis number"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11002, "", 310, 12, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_chassis"
        SHORTCUE "Search for a chassis number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11004, "Model :", 15, 34, 110, 19
    BEGIN
        NAME "txtModelInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11005, "", 130, 32, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Model_info"
        CLIENTEDGE
    END

    STATICTEXT 11008, "Car type :", 15, 54, 110, 19
    BEGIN
        NAME "txtCartypeInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11009, "", 130, 52, 325, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cartype_info"
        CLIENTEDGE
    END

    STATICTEXT 11012, "License :", 460, 14, 110, 19
    BEGIN
        NAME "txtLicense"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11013, "", 575, 12, 150, 19
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

    STATICTEXT 11016, "Engine number :", 460, 34, 110, 19
    BEGIN
        NAME "txtEngine"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11017, "", 575, 32, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_engine_nr"
        CLIENTEDGE
    END

    STATICTEXT 11020, "Fuel :", 460, 54, 110, 19
    BEGIN
        NAME "txtFuelInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11021, "", 575, 52, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Fuel_info"
        CLIENTEDGE
    END

    GROUPBOX 11030, "Campaign(s)", 5, 75, 845, 140
    BEGIN
        NAME "gbxCampaigns"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11031, "", 14, 98, 818, 110
    BEGIN
        ROWS 10
        COLUMNHEAD 20, 11032
        COLUMNS 3
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Campaign code"
        GRIDCOLWIDTH 1, 325
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 370
        GRIDCOLTITLE 2, "Reason skipping this campaign"
        NAME "gclCampaigns"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11035, "Intervention(s)", 5, 220, 845, 170
    BEGIN
        NAME "gbxInterventions"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11036, "", 15, 245, 568, 135
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 11037
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLTITLE 0, "Model"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Cause code"
        GRIDCOLTITLE 2, "Defect"
        GRIDCOLWIDTH 3, 250
        GRIDCOLTITLE 3, "Description"
        GRIDCOLWIDTH 4, 20
        GRIDCOLTITLE 4, "S"
        GRIDCOLWIDTH 5, 100
        GRIDCOLTITLE 5, "Order number"
        NAME "gclInterventions"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11040, "Intervention details", 5, 396, 845, 208
    BEGIN
        NAME "gbxInDet"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11041, "", 15, 416, 723, 172
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 11042
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 125
        GRIDCOLTITLE 0, "Posting type"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "ID"
        GRIDCOLWIDTH 2, 250
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Stock Qty"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Units/Qty"
        GRIDCOLWIDTH 5, 75
        GRIDCOLTITLE 5, "Amount"
        NAME "gclInDet"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11050, "&Invoice section", 15, 612, 110, 19
    BEGIN
        NAME "txtInvSect"
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11051, "", 125, 610, 200, 380
    BEGIN
        NAME "lbnInvSect"
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END
END

WINDOW 2 "Recall campaigns Fiat - Alfa - Lancia" 140 80 730 665
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287287500
    NAME "frmRecallCampSys2"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "&Post lines", 460, 635, 75, 22
    BEGIN
        NAME "pbnPost"
        SHORTCUE "Display the statistic information"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Close", 550, 635, 75, 22
    BEGIN
        NAME "pbnClose"
        SHORTCUE "Close the form"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 640, 635, 75, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12000, "&Chassis number", 15, 14, 110, 19
    BEGIN
        NAME "txtChassisNr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12001, "", 130, 12, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Chassis_nr"
        CLIENTEDGE
        SHORTCUE "Enter the chassis number"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 12002, "", 310, 12, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_chassis"
        SHORTCUE "Search for a chassis number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12004, "MVS code :", 15, 34, 110, 19
    BEGIN
        NAME "txtModelInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12005, "", 130, 32, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "MVS_info"
        CLIENTEDGE
    END

    STATICTEXT 12008, "Car description :", 15, 54, 110, 19
    BEGIN
        NAME "txtCartypeInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12009, "", 130, 52, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cartype_info"
        CLIENTEDGE
    END

    STATICTEXT 12012, "License :", 440, 14, 110, 19
    BEGIN
        NAME "txtLicense"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12013, "", 550, 12, 150, 19
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

    STATICTEXT 12016, "Engine number :", 440, 34, 110, 19
    BEGIN
        NAME "txtEngine"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12017, "", 550, 32, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_engine_nr"
        CLIENTEDGE
    END

    STATICTEXT 12020, "Fuel :", 440, 54, 110, 19
    BEGIN
        NAME "txtFuelInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12021, "", 550, 52, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Fuel_info"
        CLIENTEDGE
    END

    GROUPBOX 12035, "Campaign details", 5, 220, 715, 170
    BEGIN
        NAME "gbxCampDet"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 12036, "", 14, 244, 593, 135
    BEGIN
        ROWS 26
        COLUMNHEAD 20, 12037
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 25
        GRIDCOLTITLE 0, "L"
        GRIDCOLWIDTH 1, 300
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Time"
        GRIDCOLWIDTH 3, 20
        GRIDCOLTITLE 3, "S"
        GRIDCOLWIDTH 4, 105
        GRIDCOLTITLE 4, "Order number"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "P"
        NAME "gclCampDets"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 12040, "Parts", 5, 396, 715, 208
    BEGIN
        NAME "gbxParts"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 12041, "", 15, 416, 573, 172
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 12042
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 150
        GRIDCOLTITLE 0, "Part number"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "Stock Qty"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Quantity"
        NAME "gclParts"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12050, "&Invoice section", 15, 612, 110, 19
    BEGIN
        NAME "txtInvSect"
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 12051, "", 125, 610, 200, 380
    BEGIN
        NAME "lbnInvSect"
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 5, 75
    BEGIN
        NAME "chd_frmCampaigns"
    END
END

WINDOW 5 "Open recalls for this car" 200 262 735 330
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287308
    NAME "frmRecallCampSys5"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 506, 299, 60, 22
    BEGIN
        NAME "pbnOK"
        SHORTCUE "Accept the selected entry"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 576, 299, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Cancel the search"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 646, 299, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10400, "Car information :", 10, 12, 100, 19
    BEGIN
        NAME "txtWhs"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10401, "", 110, 10, 513, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_info"
        CLIENTEDGE
    END

    GRID 10411, "", 10, 40, 718, 250
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 10412
        COLUMNS 7
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 125
        GRIDCOLTITLE 0, "Recall Id"
        GRIDCOLTITLE 1, "Sub Id"
        GRIDCOLWIDTH 2, 300
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Start date"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "End date"
        GRIDCOLTITLE 5, "Time"
        GRIDCOLWIDTH 6, 20
        GRIDCOLTITLE 6, "S"
        NAME "gclRecallSys5"
        CLIENTEDGE
        SHORTCUE "If the \042S\042 column is checked the recall information of this line is taken over in the order."
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 101 0 0 715 140
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwCampaigns"

    GROUPBOX 10100, "Campaign(s)", 0, 0, 715, 140
    BEGIN
        NAME "gbxCampaigns"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 10101, "", 6, 21, 698, 110
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 10102
        COLUMNS 3
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Campaign code"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 325
        GRIDCOLTITLE 2, "Warranty code"
        NAME "gclCampaigns"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10103, "", -100, -100, 90, 380
    BEGIN
        NAME "lbnWarCode"
        FONT "Microsoft Sans Serif" 9
    END
END
