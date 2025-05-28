VERSION "4.0"

WINDOW 1 "Leeuwkes Maintenance" 5 85 565 570
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 62914564
    NAME "FrmLeeuwkesMain"
    DIALOGBEHAVIOR
    DEFAULTFONT "Microsoft Sans Serif" 9

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  ""
        NAME "Status Bar"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 100, "", 63, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png"
        NAME "tbnNew"
        SHORTCUE "Create a new item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png"
        NAME "tbnEdit"
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png"
        NAME "tbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png"
        NAME "tbnSave"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png"
        NAME "tbnDelete"
        SHORTCUE "Delete current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 111, "", 140, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png"
        NAME "tbnSearch"
        SHORTCUE "Open the search dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 112, "", 525, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 495, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        INVISIBLE
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1000, "", -2, 24, 575, 10
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11002, "&Workshop :", 15, 45, 110, 19
    BEGIN
        NAME "txtWorkshop"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11003, "", 125, 43, 200, 380
    BEGIN
        NAME "lbnWorkshop"
        SHORTCUE "Choose the workshop"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11006, "&Leeuwkes seq. no.", 15, 66, 110, 19
    BEGIN
        NAME "txtLeeSeqNo"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11007, "", 125, 64, 100, 19
    BEGIN
        MASK  "00000"
        PADCHARACTER 0
        MAXLENGTH 20
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_seq_nr"
        CLIENTEDGE
        SHORTCUE "Enter the Leeuwkes sequence number"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11010, "Car information", 5, 90, 554, 145
    BEGIN
        NAME "gbxCarInfo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11012, "License :", 15, 110, 110, 19
    BEGIN
        NAME "txtLicense"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11013, "", 125, 108, 110, 19
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

    STATICTEXT 11016, "Case number :", 15, 130, 90, 19
    BEGIN
        NAME "txtCaseNr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11017, "", 125, 128, 110, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "case_nr"
        CLIENTEDGE
    END

    STATICTEXT 11020, "Car info :", 15, 150, 90, 19
    BEGIN
        NAME "txtCarInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11021, "", 125, 148, 400, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "car_info"
        CLIENTEDGE
    END

    STATICTEXT 11024, "Chassis number :", 15, 170, 90, 19
    BEGIN
        NAME "txtChassisNr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11025, "", 125, 168, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "chassis_nr"
        CLIENTEDGE
    END

    STATICTEXT 11028, "Order type :", 15, 190, 90, 19
    BEGIN
        NAME "txtOrdType"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11029, "", 125, 188, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "ord_type_descr"
        CLIENTEDGE
    END

    STATICTEXT 11032, "Arrival date :", 15, 210, 110, 19
    BEGIN
        NAME "txtArrDate"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11033, "", 125, 208, 110, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blh_arr_date"
        CLIENTEDGE
    END

    GROUPBOX 11040, "Print information", 5, 310, 274, 120
    BEGIN
        NAME "gbxPrintInfo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11042, "Print date list -1- :", 15, 330, 110, 19
    BEGIN
        NAME "txtPrintDate1"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11043, "", 125, 328, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blh_list1_date"
        CLIENTEDGE
    END

    STATICTEXT 11044, "Page no.  list -1- :", 15, 350, 110, 19
    BEGIN
        NAME "txtPageNr1"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11045, "", 125, 348, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blh_list1_pagenr"
        CLIENTEDGE
    END

    STATICTEXT 11046, "Print date list -2- :", 15, 370, 110, 19
    BEGIN
        NAME "txtPrintDate2"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11047, "", 125, 368, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blh_list2_date"
        CLIENTEDGE
    END

    STATICTEXT 11048, "Page no.  list -2- :", 15, 390, 110, 19
    BEGIN
        NAME "txtPageNr2"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11049, "", 125, 388, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blh_list2_pagenr"
        CLIENTEDGE
    END

    GROUPBOX 11050, "Customer information", 5, 240, 554, 65
    BEGIN
        NAME "gbxCuInfo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11051, "Customer number :", 15, 260, 110, 19
    BEGIN
        NAME "txtCuNr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11052, "", 125, 258, 110, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_nr"
        CLIENTEDGE
    END

    STATICTEXT 11053, "Customer info :", 15, 280, 90, 19
    BEGIN
        NAME "txtCuInfo"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11054, "", 125, 278, 400, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "cu_info"
        CLIENTEDGE
    END

    GROUPBOX 11060, "Order information", 285, 310, 274, 120
    BEGIN
        NAME "gbxOrderInfo"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11061, "", 300, 328, 248, 90
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 11062
        COLUMNS 3
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "Order no."
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Invoice no."
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "Invoice date"
        NAME "gclOrderInfo"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11080, "&Departure date", 15, 440, 110, 19
    BEGIN
        NAME "txtDepDate"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11081, "", 125, 438, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blh_dep_date"
        CLIENTEDGE
        SHORTCUE "Enter the departure date"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11083, "R&eason", 32, 482, 90, 19
    BEGIN
        NAME "txtReaNoInv"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11084, "", 125, 480, 325, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blh_ninv_reason"
        CLIENTEDGE
        SHORTCUE "Enter the reason why there was no invoice for this visit"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 11082, "&No invoice for this order", 15, 460, 250, 19
    BEGIN
        NAME "blh_ninv"
        SHORTCUE "Check if there was no invoice for this order"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 11090, "O&ut of workshop", 15, 500, 400, 19
    BEGIN
        NAME "blh_of_wks"
        SHORTCUE "Check if the reason for no invoice is because the car is out of workshop"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11091, "&Reason", 32, 522, 90, 19
    BEGIN
        NAME "txtReaCarOut"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11092, "", 125, 520, 325, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blh_of_reason"
        CLIENTEDGE
        SHORTCUE "Enter the reason why the car is out of the workshop"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 11095, "&Only warranty", 15, 540, 400, 19
    BEGIN
        NAME "blh_only_war"
        SHORTCUE " Check if no invoice because job is only warranty"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11008, "", -100, 85, 50, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "dummy"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END
END

MENU 101
BEGIN
    MENU-ITEM 30100 "&File"
    BEGIN
        NAME "menFil"
        MENU-ITEM 30010 "E&xit"
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
        SEPARATOR
        MENU-ITEM 30399 "P&rint screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
    END
    MENU-ITEM 30400 "&Windows"
    BEGIN
        NAME "menWindows"
    END
    MENU-ITEM 30500 "&Help"
    BEGIN
        NAME "menHelpIssues"
        MENU-ITEM 30501 "&Help Topics\tF1" 331
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
