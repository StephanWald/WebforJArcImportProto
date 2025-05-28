VERSION "4.0"

WINDOW 1 "CarIT configurator" 150 150 1270 750
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCarConfigurator"

    BUTTON 1, "Finish", 960, 722, 90, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnFinish"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 1070, 722, 90, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Help", 1170, 722, 90, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    CHILD-WINDOW 101, 51, 7, 167
    BEGIN
        NAME "chd_frmStandard" 
    END

    CHILD-WINDOW 102, 52, 7, 167
    BEGIN
        NAME "chd_frmPackages" 
    END

    CHILD-WINDOW 103, 53, 7, 167
    BEGIN
        NAME "chd_frmColour" 
    END

    CHILD-WINDOW 104, 54, 7, 167
    BEGIN
        NAME "chd_frmTrim" 
    END

    CHILD-WINDOW 105, 55, 7, 167
    BEGIN
        NAME "chd_frmOptions" 
    END

    CHILD-WINDOW 106, 56, 7, 167
    BEGIN
        NAME "chd_frmFactAcc" 
    END

    GROUPBOX 10000, "Car Information", 5, 5, 706, 130
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo1"
    END

    STATICTEXT 10002, "Ma&ke", 15, 26, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    LISTBUTTON 10003, "", 140, 24, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Makecode"
        SHORTCUE "Choose the make"
    END

    STATICTEXT 10004, "&Pricing date", 500, 26, 115, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPriceDate"
    END

    INPUTE 10005, "", 615, 24, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cas_price_date"
        CLIENTEDGE
        SHORTCUE "Enter the price date to use for this configaration"
    END

    STATICTEXT 10006, "&Model range", 15, 47, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModel"
    END

    LISTBUTTON 10007, "", 140, 45, 300, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModel"
        SHORTCUE "Choose the model"
    END

    STATICTEXT 10010, "&Car type", 15, 68, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarType"
    END

    LISTBUTTON 10011, "", 140, 66, 550, 600
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCartype"
        SHORTCUE "Choose the model"
    END

    STATICTEXT 10014, "Fuel :", 15, 88, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFuel"
    END

    CUSTOMEDIT 10015, "", 140, 86, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "fuelTypeDescr"
        CLIENTEDGE
    END

    STATICTEXT 10016, "Transmission :", 15, 108, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTransmission"
    END

    CUSTOMEDIT 10017, "", 140, 104, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "kindOfGearDescr"
        CLIENTEDGE
    END

    STATICTEXT 10018, "CO2 emission : ", 375, 88, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEmission"
    END

    CUSTOMEDIT 10019, "", 500, 86, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "emissionCO2"
        CLIENTEDGE
    END

    STATICTEXT 10020, "Capacity / Hp / Watt :", 375, 108, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCapHpWatt"
    END

    CUSTOMEDIT 10021, "", 500, 106, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "combi3"
        CLIENTEDGE
    END

    GROUPBOX 10030, "Price  Information", 960, 5, 305, 158
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo1"
    END

    STATICTEXT 10032, "Car (incl. colour and trim) :", 970, 24, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCarPrice"
    END

    STATICTEXT 10033, "0.00", 1145, 24, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntCarColTrim"
    END

    STATICTEXT 10034, "Factory options :", 970, 44, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFactOptions"
    END

    STATICTEXT 10035, "0.00", 1145, 44, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntFactOpt"
    END

    STATICTEXT 10036, "Factory accessories :", 970, 64, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFactAcc"
    END

    STATICTEXT 10037, "0.00", 1144, 62, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntFactAcc"
    END

    STATICTEXT 10038, "Dealer accessories :", 970, 84, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDeaAcc"
        INVISIBLE
    END

    STATICTEXT 10039, "0.00", 1145, 84, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntDeaAcc"
        INVISIBLE
    END

    STATICTEXT 10042, "Miscellaneous :", 970, 104, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMisellaneous"
        INVISIBLE
    END

    STATICTEXT 10043, "0.00", 1145, 104, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntMisc"
        INVISIBLE
    END

    STATICTEXT 10046, "-----------------------------", 1154, 80, 90, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLine"
    END

    STATICTEXT 10050, "Total price :", 970, 94, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTotprice"
    END

    STATICTEXT 10051, "0.00", 1145, 94, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntTotPrice"
    END

    STATICTEXT 10052, "Total VAT amount", 970, 118, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVATAmount"
    END

    STATICTEXT 10053, "0.00", 1145, 118, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntVAT"
    END

    STATICTEXT 10054, "Total TAX amount", 970, 138, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTAXAmount"
    END

    STATICTEXT 10055, "0.00", 1145, 138, 95, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "amntTAX"
    END

    STATICTEXT 10060, "Configuration overview:", 960, 166, 272, 22
    BEGIN
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 12, Bold
        NAME "txtOverview"
    END

    GRID 10061, "Grid", 960, 192, 305, 524
    BEGIN
        ROWS 250
        COLUMNHEAD 0, 10062
        COLUMNS 5
        VSCROLLBAR
        GRIDCOLWIDTH 0, 190
        GRIDCOLTITLE 0, "Description"
        GRIDCOLWIDTH 1, 90
        GRIDCOLTITLE 1, "Price"
        GRIDCOLWIDTH 2, 90
        GRIDCOLTITLE 2, "PriceVat"
        GRIDCOLWIDTH 3, 90
        GRIDCOLTITLE 3, "PriceTax"
        GRIDCOLWIDTH 4, 90
        GRIDCOLTITLE 4, "PriceVatTax"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclTotalOverview"
        CLIENTEDGE
    END

    TABCONTROL 10070, "tclConfiguration", 5, 138, 945, 578
    BEGIN
        AUTOMANAGEMENT
        FONT "Microsoft Sans Serif" 11, Normal
        NAME "tclConfiguration"
        TAB "Standards" 0 51
        TAB "Packages" 0 52
        TAB "Colour" 0 53
        TAB "Trim" 0 54
        TAB "Options" 0 55
        TAB "Factory accessories" 0 56
    END

    CHECKBOX 10071, "&Display amounts without VAT", 5, 722, 250, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbxNoVAT"
        SHORTCUE "Display prices exclusive VAT"
    END

    CHECKBOX 10072, "&Display amounts without TAX ", 300, 722, 240, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbxNoTAX"
        SHORTCUE "Display prices exclusive TAX"
    END
END

WINDOW 2 "Please choose an action to proceed with the current rule" 8 54 710 465
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCarConfigRule"

    BUTTON 1, "OK", 430, 435, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 520, 435, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Save changes"
    END

    BUTTON 3, "&Help", 605, 435, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    GRID 10801, "Grid", 9, 10, 693, 420
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 10802
        COLUMNS 5
        USERSIZE
        VSCROLLBAR
        GRIDROWDEFAULTHEIGHT 18
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "ID"
        GRIDCOLTITLE 1, "Pack"
        GRIDCOLWIDTH 2, 375
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 150
        GRIDCOLTITLE 3, "Action type"
        GRIDCOLWIDTH 4, 20
        GRIDCOLTITLE 4, "S"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclRules"
        CLIENTEDGE
    END
END

CHILD-WINDOW 101 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwStandard"

    GRID 10101, "", 0, 0, 937, 546
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10102
        COLUMNS 2
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 755
        GRIDCOLTITLE 1, "Description"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclStandard"
        CLIENTEDGE
    END
END

CHILD-WINDOW 102 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwPackages"

    GRID 10201, "", 2, 0, 937, 310
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10202
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "Package ID"
        GRIDCOLWIDTH 1, 565
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "Incl. VAT / Excl. Tax"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "S"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclPackages"
        CLIENTEDGE
    END

    CHILD-WINDOW 107, 57, 0, 315
    BEGIN
        NAME "chd_frmPackDet" 
    END

    STATICTEXT 10203, "*Package Alternative Item :", 5, 522, 155, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPackageAltItem"
    END

    CUSTOMEDIT 10204, "", 160, 520, 790, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtPackageAltItemDescr"
        CLIENTEDGE
    END
END

CHILD-WINDOW 103 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwColour"

    GRID 10301, "", 0, 0, 937, 546
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10302
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 565
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "Incl. VAT / Excl. Tax"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "S"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclColour"
        CLIENTEDGE
    END
END

CHILD-WINDOW 104 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwTrim"

    GRID 10401, "", 0, 0, 937, 546
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10402
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 565
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "Incl. VAT / Excl. Tax"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "S"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclTrim"
        CLIENTEDGE
    END
END

CHILD-WINDOW 105 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwOptions"

    GRID 10501, "", 0, 0, 937, 546
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10502
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 565
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "PriceVat"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "S"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclOptions"
        CLIENTEDGE
    END
END

CHILD-WINDOW 106 0 0 939 546
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwFactAcc"

    GRID 10601, "", 0, 0, 937, 546
    BEGIN
        ROWS 200
        COLUMNHEAD 22, 10602
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 160
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 565
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "Incl. VAT / Excl. Tax"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "S"
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gclFactAcc"
        CLIENTEDGE
    END
END

CHILD-WINDOW 107 0 0 935 200
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwPackDet"

    GROUPBOX 10700, "Package details", 0, 0, 935, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxPackageDet"
    END

    GRID 10701, "", 10, 20, 917, 175
    BEGIN
        ROWS 200
        COLUMNHEAD 18, 10702
        COLUMNS 7
        VSCROLLBAR
        GRIDROWDEFAULTHEIGHT 18
        GRIDCOLWIDTH 0, 130
        GRIDCOLTITLE 0, "Option ID"
        GRIDCOLWIDTH 1, 575
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 160
        GRIDCOLTITLE 2, "Excl. VAT / Tax"
        GRIDCOLWIDTH 3, 160
        GRIDCOLTITLE 3, "Incl. VAT / Excl. Tax"
        GRIDCOLWIDTH 4, 160
        GRIDCOLTITLE 4, "Excl. VAT / Incl. Tax"
        GRIDCOLWIDTH 5, 160
        GRIDCOLTITLE 5, "Incl. VAT / Tax"
        GRIDCOLWIDTH 6, 30
        GRIDCOLTITLE 6, "Alt"
        FONT "Microsoft Sans Serif" 8, Normal
        NAME "gclPackDet"
        CLIENTEDGE
    END
END
