VERSION "4.0"

WINDOW 1 "Activity Maintenance" 5 80 1085 475
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 29360132
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActMain"

    STATUSBAR 10199
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stbActMain"
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
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 1045, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 1015, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TABCONTROL 10008, "tclAll", 7, 121, 1075, 345
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "Activity" 0 51
        TAB "Explosion Lines" 0 52
    END

    CHILD-WINDOW 101, 51, 9, 143
    BEGIN
        NAME "chd_frmActivity" 
    END

    CHILD-WINDOW 102, 52, 9, 143
    BEGIN
        NAME "chd_frmExplLines" 
    END

    GROUPBOX 1008, "", 2, 24, 1081, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    STATICTEXT 1000, "Activity number :", 15, 40, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtActivity"
    END

    CUSTOMEDIT 1002, "", 120, 38, 111, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Act_id"
        CLIENTEDGE
    END

    CUSTOMEDIT 1012, "", 120, 58, 330, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Act_descr_1"
        CLIENTEDGE
    END

    STATICTEXT 1010, "Descriptions :", 15, 60, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescriptions"
    END

    CUSTOMEDIT 1015, "", 120, 78, 330, 19
    BEGIN
        IGNORETABS
        READONLY
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Act_descr_2"
        CLIENTEDGE
    END

    TOOLBUTTON 110, "", 179, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar039.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMultiLang"
        DISABLED
        SHORTCUE "Open the multi language dialogue"
    END

    STATICTEXT 10200, "&Actual make", 260, 9, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtActMake"
    END

    LISTBUTTON 10201, "", 370, 7, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMakes"
        SHORTCUE "Choose the make"
    END

    STATICTEXT 10203, "Model code :", 490, 40, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModelCode"
    END

    STATICTEXT 10204, "Derivative code :", 490, 60, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDerivativeCode"
    END

    STATICTEXT 10205, "Production from :", 870, 40, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProdFrom"
    END

    STATICTEXT 10206, "Production to :", 870, 60, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProdTo"
    END

    CUSTOMEDIT 10208, "", 595, 40, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Model_descr"
        CLIENTEDGE
    END

    CUSTOMEDIT 10210, "", 595, 58, 250, 32
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "P5_dc_descr"
        CLIENTEDGE
    END

    CUSTOMEDIT 10211, "", 990, 38, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "P5_con_per_from"
        CLIENTEDGE
    END

    CUSTOMEDIT 10212, "", 990, 58, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "P5_con_per_to"
        CLIENTEDGE
    END
END

CHILD-WINDOW 101 0 0 1075 320
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 62915588
    NAME "chd_wdwActivity"

    STATICTEXT 10149, "Activity number", 5, 10, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_id"
    END

    INPUTE 10150, "", 115, 8, 100, 19
    BEGIN
        MASK  "UUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 13
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_id"
        CLIENTEDGE
        SHORTCUE "Enter the activity number"
    END

    STATICTEXT 10151, "&Descriptions", 5, 30, 110, 18
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_descr"
    END

    CUSTOMEDIT 10152, "", 115, 28, 225, 32
    BEGIN
        LIMIT 70
        BORDER
        IGNORETABS
        ONEPARAGRAPH
        WORDWRAP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_descr_1"
        CLIENTEDGE
        DISABLED
    END

    TOOLBUTTON 10153, "", 345, 28, 20, 20
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDescrMaint"
        INVISIBLE
        SHORTCUE "Search descriptions"
    END

    INPUTE 10154, "", 115, 61, 225, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 35
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_descr_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Additional description"
    END

    STATICTEXT 10155, "&Search code", 5, 83, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMatchcode"
    END

    INPUTE 10156, "", 115, 81, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_matchcode"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter a search code"
    END

    STATICTEXT 10157, "Ma&ke code", 5, 103, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake_code"
    END

    LISTBUTTON 10158, "", 115, 101, 225, 410
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_Makecode"
        DISABLED
        SHORTCUE "Choose the make code"
    END

    STATICTEXT 10159, "&VAT code", 5, 124, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVat_code"
    END

    LISTBUTTON 10160, "", 115, 122, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vatcode"
        DISABLED
        SHORTCUE "Choose the VATcode"
    END

    STATICTEXT 10161, "&Integration code", 5, 145, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFin_int_code"
    END

    LISTBUTTON 10162, "", 115, 143, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_fin_int_code"
        DISABLED
        SHORTCUE "Choose the integration code"
    END

    STATICTEXT 10163, "Dis&count code", 5, 166, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_disc_code"
    END

    LISTBUTTON 10164, "", 115, 164, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_disc_code"
        DISABLED
        SHORTCUE "Choose the discount code"
    END

    STATICTEXT 10165, "Departme&nt code", 5, 187, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_dep_code"
    END

    LISTBUTTON 10166, "", 115, 185, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_dep_code"
        DISABLED
        SHORTCUE "Choose the department code"
    END

    CHECKBOX 10171, "&Create a job for this activity in the order program", 5, 235, 400, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_cre_job_yn"
        DISABLED
        SHORTCUE "Check to create a job in the order program"
    END

    CHECKBOX 10172, "Check &history if this activity is posted on an order", 5, 255, 400, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_his_check_yn"
        DISABLED
        SHORTCUE "Check to check history if activity is posted on an order"
    END

    CHECKBOX 10173, "&Update inspection date in the car if this activity is posted on an order", 5, 275, 400, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_upd_insp_yn"
        DISABLED
        SHORTCUE "Check to update inspection date in the car"
    END

    CHECKBOX 10174, "&Update emission test date in the car if this activity is posted on an order", 5, 295, 475, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_upd_emis_yn"
        DISABLED
        SHORTCUE "Check to update emission test date in the car"
    END

    STATICTEXT 10175, "Standar&d time", 377, 10, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStd_std_time"
    END

    INPUTN 10176, " ", 487, 8, 50, 19
    BEGIN
        MASK "###0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_std_time"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the quantity of time"
    END

    STATICTEXT 10177, "&Warranty time", 377, 30, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStd_std_time_war"
    END

    INPUTN 10178, " ", 487, 28, 50, 19
    BEGIN
        MASK "###0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_std_time_war"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the quantity of time for warranty lines"
    END

    STATICTEXT 10181, "&Rate code", 377, 50, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRate_code"
    END

    LISTBUTTON 10182, "", 487, 48, 225, 256
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_code"
        DISABLED
        SHORTCUE "Choose the rate code"
    END

    STATICTEXT 10183, "&Time search code", 377, 71, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_search_code"
    END

    LISTBUTTON 10184, "", 487, 69, 225, 234
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_search_code"
        DISABLED
        SHORTCUE "Choose the time search code"
    END

    STATICTEXT 10185, "Maint. fre&q. code", 377, 92, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAct_main_freq_cd"
    END

    LISTBUTTON 10186, "", 487, 90, 225, 217
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_main_freq_cd"
        DISABLED
        SHORTCUE "Choose the maintenance frequency code"
    END

    STATICTEXT 10187, "Char&ge ID", 377, 113, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCharge_Id"
    END

    LISTBUTTON 10188, "", 487, 111, 225, 195
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Charge_id"
        DISABLED
        SHORTCUE "Choose the charge ID"
    END

    STATICTEXT 10189, "Interva&l", 377, 134, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInterval"
    END

    LISTBUTTON 10190, "", 487, 132, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnInterval"
        DISABLED
        SHORTCUE "Choose the interval for this activity"
    END

    STATICTEXT 10191, "E&xplosion code", 377, 155, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtExpl_code"
    END

    LISTBUTTON 10192, "", 487, 153, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_expl_code"
        DISABLED
        SHORTCUE "Choose the explosion code"
    END

    STATICTEXT 10193, "Fixed &amount", 377, 175, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFixed_amount"
    END

    INPUTN 10194, "", 487, 174, 100, 19
    BEGIN
        MASK "-#######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_expl_fix_am"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the fixed amount"
    END

    STATICTEXT 10195, "Profit amount :", 377, 194, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProfitAmnt"
    END

    STATICTEXT 10196, "", 487, 194, 100, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Profit_Amnt"
        CLIENTEDGE
    END

    STATICTEXT 10197, "", 588, 194, 50, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Profit_Perc"
        CLIENTEDGE
    END

    STATICTEXT 10238, "&Default workgroup", 740, 172, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWorkgroup"
    END

    LISTBUTTON 10239, "", 850, 170, 200, 131
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWorkgroup"
        DISABLED
        SHORTCUE "Choose the default workgroup for the workshop planning"
    END

    CHECKBOX 10203, "Use activity in the &Tire Registration module", 487, 235, 350, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_tire_reg_yn"
        DISABLED
        SHORTCUE "Check to use this activity in the Tire Registration module (Max. of 10 activities is possible)"
    END

    CHECKBOX 10205, "Activity for &Opel Assistance Plus (OAP)", 487, 275, 350, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Opi_int_code"
    END

    GROUPBOX 10220, "External workshop order", 730, 8, 335, 75
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxExternal"
    END

    STATICTEXT 10221, "&Default section type", 740, 30, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInvSectionExternal"
    END

    LISTBUTTON 10222, "", 850, 28, 200, 270
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSectionExternal"
        DISABLED
        SHORTCUE "Choose the default invoice section for the workshop order"
    END

    STATICTEXT 10223, "&Default cost code", 740, 51, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCostCodeExternal"
    END

    LISTBUTTON 10224, "", 850, 49, 200, 190
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCostCodeExternal"
        DISABLED
        SHORTCUE "Choose the default cost code for the internal workshop order"
    END

    GROUPBOX 10230, "Internal workshop order", 730, 90, 335, 75
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInternal"
    END

    STATICTEXT 10231, "&Default section type", 740, 113, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInvSectionInternal"
    END

    LISTBUTTON 10232, "", 850, 111, 200, 193
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSectionInternal"
        DISABLED
        SHORTCUE "Choose the default invoice section for the workshop order"
    END

    STATICTEXT 10233, "&Default cost code", 740, 134, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCostCodeInternal"
    END

    LISTBUTTON 10234, "", 850, 132, 200, 175
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCostCodeInternal"
        DISABLED
        SHORTCUE "Choose the default cost code for the internal workshop order"
    END

    CHECKBOX 10204, "&Call Tire Registration module when activity is used on an order", 487, 255, 350, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_tire_call_yn"
        DISABLED
        SHORTCUE "When the order is released and the activity was posted on the order the Tire Registration module is started"
    END

    STATICTEXT 10167, "&Complexity level", 5, 208, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtComplexcityLevel"
    END

    LISTBUTTON 10241, "", 115, 206, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_compl_level"
        DISABLED
        SHORTCUE "Choose the complexity level for this activity"
    END
END

CHILD-WINDOW 102 0 0 994 320
BEGIN
    BORDERLESS
    EVENTMASK 3287287300
    NAME "chd_wdwExplLine"

    GRID 12001, "", 5, 5, 673, 308
    BEGIN
        ROWS 99
        COLUMNHEAD 19, 12002
        COLUMNS 8
        VSCROLLBAR
        GRIDROWDEFAULTHEIGHT 19
        GRIDCOLTITLE 0, "Type"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "ID"
        GRIDCOLWIDTH 2, 225
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 60
        GRIDCOLTITLE 3, "Qty/time"
        GRIDCOLWIDTH 4, 20
        GRIDCOLTITLE 4, "F"
        GRIDCOLWIDTH 5, 60
        GRIDCOLTITLE 5, "%"
        GRIDCOLWIDTH 6, 60
        GRIDCOLTITLE 6, "Object %"
        GRIDCOLWIDTH 7, 75
        GRIDCOLTITLE 7, "Amount"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclExplLine"
        CLIENTEDGE
    END

    LISTBUTTON 12004, "", -100, -100, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnType"
    END

    LISTBUTTON 12006, "", -100, -100, 50, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnObjectperc"
    END

    LISTBUTTON 12007, "", -100, -100, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnDescr"
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
        MENU-ITEM 30303 "&Multi language\tCtrl+F10" 8532
        BEGIN
            NAME "menMultiLang"
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
