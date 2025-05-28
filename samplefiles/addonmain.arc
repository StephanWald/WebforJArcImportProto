VERSION "4.0"

WINDOW 1 "Add-on Maintenance" 5 84 964 600
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3284141580
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAddonMain"

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

    TOOLBUTTON 105, "", 135, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar034.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnMultDelete"
        SHORTCUE "Multi delete"
    END

    TOOLBUTTON 111, "", 170, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 924, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 894, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 114, "", 200, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END

    CHILD-WINDOW 101, 51, 7, 112
    BEGIN
        NAME "chd_frmMake" 
    END

    CHILD-WINDOW 103, 53, 7, 112
    BEGIN
        NAME "chd_frmCarType" 
    END

    STATICTEXT 1002, "Add-on type :", 12, 44, 68, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAddonType"
    END

    STATICTEXT 1004, "Add-on descr :", 230, 44, 78, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAddonDescr"
    END

    GROUPBOX 1008, "", 2, 24, 960, 50
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    TABCONTROL 10008, "tclAll", 5, 90, 954, 510
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "Add-ons" 0 51
        TAB "Related Car Types" 0 53
    END

    CUSTOMEDIT 11004, "", 330, 42, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Ao_descr"
        CLIENTEDGE
    END

    CUSTOMEDIT 11002, "", 96, 42, 123, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Add_on_type"
        CLIENTEDGE
    END
END

WINDOW 2 "Print Add-ons" 1 80 400 444
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    RADIOGROUP 2000, 2001, 2004, 2002, 2003
    RADIOGROUP 2020, 2021
    NAME "frmAddonPrint"

    GROUPBOX 2998, "Type of add-on for the print", 5, 8, 390, 110
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    GROUPBOX 2999, "Print via", 5, 133, 390, 115
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxPrintinf"
    END

    RADIOBUTTON 2000, "&Colours", 15, 28, 110, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnColors"
        SHORTCUE "Print colour add-ons"
    END

    RADIOBUTTON 2001, "Tri&ms", 15, 48, 110, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnTrims"
        SHORTCUE "Print trim add-ons"
    END

    RADIOBUTTON 2004, "&Accessories", 125, 88, 92, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnAccessories"
        SHORTCUE "Print accessory add-ons"
    END

    RADIOBUTTON 2002, "&Options", 15, 68, 110, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnOptions"
        SHORTCUE "Print option add-ons"
    END

    RADIOBUTTON 2003, "&Various", 15, 88, 110, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnVarious"
        SHORTCUE "Print various add-ons"
    END

    RADIOBUTTON 2020, "The &car types", 15, 154, 110, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnCartypes"
        SHORTCUE "Print via car type"
    END

    RADIOBUTTON 2021, "The a&dd-ons", 15, 194, 110, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnAddons"
        SHORTCUE "Print via add-on"
    END

    STATICTEXT 2024, "&From car type", 125, 156, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFromCartype"
    END

    INPUTE 2025, "", 235, 154, 125, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_type_from"
        CLIENTEDGE
        SHORTCUE "Enter the first car type in the range"
    END

    TOOLBUTTON 2026, "", 365, 154, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_Car_type_from"
        SHORTCUE "Search for a car type"
    END

    STATICTEXT 2028, "&To car type", 124, 176, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtToCarType"
    END

    INPUTE 2029, "", 235, 174, 125, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Car_type_to"
        CLIENTEDGE
        SHORTCUE "Enter the last car type in the range"
    END

    TOOLBUTTON 2030, "", 365, 174, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_Car_type_to"
        SHORTCUE "Search for a car type"
    END

    TOOLBUTTON 2038, "", 365, 214, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_Addon_To"
        DISABLED
        SHORTCUE "Search for an add-on"
    END

    TOOLBUTTON 2034, "", 365, 194, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_Addon_from"
        DISABLED
        SHORTCUE "Search for an add-on"
    END

    INPUTE 2037, "", 235, 214, 125, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Addon_to"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last add-on in the range"
    END

    STATICTEXT 2032, "F&rom add-on", 124, 196, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFromAddon"
    END

    STATICTEXT 2036, "T&o add-on", 124, 216, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtToAddon"
    END

    INPUTE 2033, "", 235, 194, 125, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Addon_from"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the first add-on in the range"
    END

    STATICTEXT 2050, "T&ype of form", 15, 285, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtForm"
    END

    LISTBUTTON 2051, "", 125, 283, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnForm"
        DISABLED
        SHORTCUE "Choose type of form"
    END

    LISTBUTTON 2058, "", 125, 325, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPrintDevice"
        SHORTCUE "Choose printing device"
    END

    LISTBUTTON 2054, "", 125, 304, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnViewDevice"
        SHORTCUE "Choose viewing device"
    END

    STATICTEXT 2059, "&List date", 15, 348, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtListdate"
    END

    STATICTEXT 2061, "Pr&ice date", 15, 368, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPriceDate"
    END

    INPUTE 2060, "", 125, 346, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "List_date"
        CLIENTEDGE
        SHORTCUE "Enter list date "
    END

    INPUTE 2062, "", 125, 366, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Price_date"
        CLIENTEDGE
        SHORTCUE "Enter price date"
    END

    STATICTEXT 2053, "Vie&w device", 15, 306, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtViewDevice"
    END

    STATICTEXT 2057, "P&rint device", 15, 327, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtViewDevice"
    END

    BUTTON 2091, "&Print", 140, 412, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnPrint"
        SHORTCUE "Print specified range"
    END

    BUTTON 2, "Cancel", 225, 412, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Help", 310, 412, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    BUTTON 2090, "&View", 55, 412, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnView "
        SHORTCUE "View range"
    END

    GROUPBOX 2097, "Print information", 5, 263, 390, 134
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxPrintInfo"
    END
END

WINDOW 3 "Multi Delete of Add-on Prices" 1 80 340 177
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 2160066564
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmMultiDelete"

    BUTTON 1, "OK", 85, 145, 75, 24
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Activate multi delete"
    END

    BUTTON 2, "Cancel", 170, 145, 75, 24
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel multi delete"
    END

    BUTTON 3, "&Help", 255, 145, 75, 24
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    GROUPBOX 13000, "", 5, 8, 330, 100
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo"
    END

    STATICTEXT 13002, "The prices will be deleted from the add-on prices up to the 'Delete date'.  At least one price will always remain in the price table.", 15, 25, 304, 45
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInfo"
    END

    STATICTEXT 13010, "&Delete date", 15, 80, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDeleteDate"
    END

    INPUTE 13011, "", 125, 78, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineDelete_date"
        CLIENTEDGE
        SHORTCUE "Enter delete date "
    END

    CHILD-WINDOW 106, 13015, 85, 120
    BEGIN
        NAME "chd_frmProgress" 
    END

    STATICTEXT 13014, "Progress:", 15, 120, 75, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProgress"
    END
END

WINDOW 4 "Add-on Details" 40 120 870 500
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141060
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmAddOnnDetails"

    BUTTON 1, "OK", 525, 470, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 610, 470, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    BUTTON 3, "&Edit", 695, 470, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current view"
    END

    BUTTON 4, "&Help", 780, 470, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    CHILD-WINDOW 102, 51, 10, 140
    BEGIN
        NAME "chd_frmPrices" 
    END

    STATICTEXT 14000, "Make:", 10, 10, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    CUSTOMEDIT 14001, "", 135, 8, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Make_descr"
        CLIENTEDGE
    END

    STATICTEXT 14002, "Type", 315, 10, 150, 19
    BEGIN
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Addon_type"
    END

    STATICTEXT 14006, "Add-on code:", 10, 30, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAddOn"
    END

    CUSTOMEDIT 14007, "", 135, 28, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Add_on_code"
        CLIENTEDGE
    END

    STATICTEXT 14010, "Description", 10, 53, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescr"
    END

    INPUTE 14011, "", 135, 51, 350, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ao_descr"
        CLIENTEDGE
        SHORTCUE "Enter description"
    END

    STATICTEXT 14012, "Search code", 10, 73, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSearchCode"
    END

    INPUTE 14014, "", 135, 71, 100, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ao_search_code"
        CLIENTEDGE
        SHORTCUE "Enter search code"
    END

    STATICTEXT 14018, "Integration code", 10, 93, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtIntCode"
    END

    LISTBUTTON 14019, "", 135, 91, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinIntCode"
        DISABLED
        SHORTCUE "Choose the integration code"
    END

    STATICTEXT 14020, "Source code", 10, 113, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSourceCode"
    END

    LISTBUTTON 14021, "", 135, 111, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSourceCode"
        DISABLED
        SHORTCUE "Choose the source code"
    END

    STATICTEXT 14022, "Opel SADE category", 505, 10, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOpelCat"
    END

    LISTBUTTON 14023, "", 640, 8, 175, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnOPcatCode"
        DISABLED
        SHORTCUE "Choose the category for SADE extraction"
    END

    STATICTEXT 14027, "Basic colour", 505, 50, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBasicCol"
        INVISIBLE
    END

    STATICTEXT 14030, "Basic trim", 505, 50, 120, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBasicTrim"
        INVISIBLE
    END

    LISTBUTTON 14028, "", 640, 48, 175, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBasicColCode"
        INVISIBLE
        SHORTCUE "Choose the basic colour code linked to this colour"
    END

    LISTBUTTON 14031, "", 640, 48, 175, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBasicTrimCode"
        INVISIBLE
        SHORTCUE "Choose the basic trim code linked to this trim"
    END

    STATICTEXT 14040, "Modix option id", 505, 93, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModixId"
    END

    LISTBUTTON 14041, "", 640, 91, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMxaId"
        DISABLED
        SHORTCUE "Choose the Modix option id for Modix upload"
    END

    STATICTEXT 14044, "Modix option value", 505, 113, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtModixDetId"
    END

    LISTBUTTON 14045, "", 640, 111, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMxdDetId"
        DISABLED
        SHORTCUE "Choose the option value for the selected Modix option id"
    END

    CHECKBOX 14032, "&Apply to all car types", 505, 70, 310, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Make_skip_sea_yn"
        SHORTCUE "When this flag is set, this add on will automatically be made available for all car types"
    END

    STATICTEXT 14024, "&Importer code", 505, 30, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImpOptCode"
    END

    INPUTE 14025, "", 640, 28, 220, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Imp_opt_code"
        CLIENTEDGE
        SHORTCUE "Enter the importer colour/trim/option code"
    END
END

CHILD-WINDOW 101 0 0 948 484
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3284141572
    RADIOGROUP 11020, 11021, 11022, 11023
    NAME "chd_wdwAddon"

    LISTBUTTON 11012, "", 100, 15, 164, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMake"
        SHORTCUE "Choose the make of the add-ons"
    END

    RADIOBUTTON 11020, "&Colours", 310, 15, 73, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnColour"
        SHORTCUE "List colour add-ons"
    END

    RADIOBUTTON 11021, "Tri&ms", 400, 15, 73, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnTrim"
        SHORTCUE "List trim add-ons"
    END

    RADIOBUTTON 11022, "&Options", 490, 15, 73, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnOptions"
        SHORTCUE "List option add-ons"
    END

    RADIOBUTTON 11023, "&Various", 580, 15, 73, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnVarious"
        SHORTCUE "List various add-ons"
    END

    GROUPBOX 1000, "", 3, 3, 662, 42
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclMake"
    END

    CHILD-WINDOW 104, 11099, 5, 60
    BEGIN
        NAME "chd_frmgclAddon" 
    END

    STATICTEXT 11011, "Ma&ke", 15, 17, 81, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END
END

CHILD-WINDOW 102 0 0 850 310
BEGIN
    BORDERLESS
    EVENTMASK 12583940
    NAME "chd_wdwPrices"

    GRID 10201, "", 5, 10, 822, 270
    BEGIN
        ROWS 999
        COLUMNHEAD 25, 10202
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 250
        GRIDCOLTITLE 0, "Price group"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Price date"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Purchase price"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "VAT sales"
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Sales price"
        GRIDCOLWIDTH 5, 100
        GRIDCOLTITLE 5, "Sales prices incl."
        GRIDCOLWIDTH 6, 100
        GRIDCOLTITLE 6, "Tax amount"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPrices"
        CLIENTEDGE
    END

    LISTEDIT 10204, "", -800, -800, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "letPriceGroup"
    END

    LISTBUTTON 10205, "", -800, -800, 150, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnVat"
    END

    BUTTON 2, "Cancel", 10, 285, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    BUTTON 10210, "&New", 95, 285, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        SHORTCUE "Add a new line"
    END

    BUTTON 10211, "&Delete", 180, 285, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        SHORTCUE "Delete current line"
    END
END

CHILD-WINDOW 103 0 0 948 484
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287300
    RADIOGROUP 13006, 13007
    RADIOGROUP 13010, 13011
    NAME "chd_wdwRelatedCarTypes"

    GROUPBOX 3000, "Show available car types of", 3, 3, 260, 65
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclMake"
    END

    GROUPBOX 3002, "Show available car types of", 278, 3, 330, 65
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclModel"
    END

    RADIOBUTTON 13006, "&Make ", 13, 23, 73, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnMake"
        SHORTCUE "List car types of one make"
    END

    RADIOBUTTON 13007, "&All makes", 13, 43, 125, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnAllMakes"
        SHORTCUE "List car types of all makes"
    END

    LISTBUTTON 13008, "", 103, 23, 150, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMake"
        SHORTCUE "Choose make to list"
    END

    RADIOBUTTON 13010, "M&odel", 288, 23, 73, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnModel"
        SHORTCUE "List car types of one model"
    END

    RADIOBUTTON 13011, "All mo&dels", 288, 43, 125, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnAllModels"
        SHORTCUE "List car types of all models"
    END

    LISTBUTTON 13012, "", 378, 23, 220, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnModels"
        DISABLED
        SHORTCUE "Choose model to list"
    END

    STATICTEXT 3029, "Available car types:", 5, 83, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAvailable"
    END

    STATICTEXT 3030, "Selected car types:", 437, 83, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSelected"
    END

    STATICTEXT 13026, "&Default price group", 623, 25, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDefPriGrp"
    END

    LISTBUTTON 13027, "", 740, 23, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnDefPriGrp"
        SHORTCUE "Choose default price group"
    END

    SCROLLBAR 10330, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    GRID 10331, "", 5, 103, 352, 377
    BEGIN
        ROWS 20
        COLUMNHEAD 20, 10332
        COLUMNS 2
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 105
        GRIDCOLTITLE 0, "Car type"
        GRIDCOLWIDTH 1, 225
        GRIDCOLTITLE 1, "Description"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclAvailableCarTypes"
        CLIENTEDGE
    END

    SCROLLBAR 10334, -100, 153, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 10335, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    TOOLBUTTON 13036, "", 367, 130, 60, 20
    BEGIN
        IMAGEFILE "Next.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSelect"
        DISABLED
        SHORTCUE "Add selected car type"
    END

    TOOLBUTTON 13037, "", 367, 160, 60, 20
    BEGIN
        IMAGEFILE "Nextstep.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSelectAll"
        DISABLED
        SHORTCUE "Add all car types"
    END

    TOOLBUTTON 13038, "", 367, 200, 60, 20
    BEGIN
        IMAGEFILE "Previous.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDeselect"
        DISABLED
        SHORTCUE "Remove selected car type"
    END

    TOOLBUTTON 13039, "", 367, 230, 60, 20
    BEGIN
        IMAGEFILE "Prevstep.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDeselectAll"
        DISABLED
        SHORTCUE "Remove all car types"
    END

    CHILD-WINDOW 105, 13041, 437, 103
    BEGIN
        NAME "chd_frmgclSelCarType" 
    END

    GRID 13051, "", 437, 360, 502, 120
    BEGIN
        ROWS 99
        COLUMNHEAD 25, 13052
        COLUMNS 5
        VSCROLLBAR
        GRIDCOLWIDTH 0, 80
        GRIDCOLTITLE 0, "Price date"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "Purchase price"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Sales price"
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Sales price incl."
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Tax amount"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPrices"
        CLIENTEDGE
    END
END

CHILD-WINDOW 104 0 0 850 400
BEGIN
    BORDERLESS
    EVENTMASK 2163213316
    NAME "chd_wdwgclAddon"

    SCROLLBAR 14000, -100, 218, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    GRID 14001, "", 0, 0, 850, 400
    BEGIN
        ROWS 20
        COLUMNHEAD 20, 14002
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 110
        GRIDCOLTITLE 0, "Add-on code"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 150
        GRIDCOLTITLE 2, "Financial integration code"
        GRIDCOLWIDTH 3, 150
        GRIDCOLTITLE 3, "Source code"
        GRIDCOLWIDTH 4, 148
        GRIDCOLTITLE 4, "Search code"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "A"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclAddon"
        CLIENTEDGE
        SHORTCUE "A - automatically apply this add-on to every car type of this make"
    END

    SCROLLBAR 14004, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 14005, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    LISTBUTTON 14006, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinIntCode"
    END

    LISTBUTTON 14007, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSourceCode"
    END
END

CHILD-WINDOW 105 0 0 502 250
BEGIN
    BORDERLESS
    EVENTMASK 2213545476
    NAME "chd_wdwgclSelCarType"

    SCROLLBAR 15000, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    GRID 15001, "", 0, 0, 502, 250
    BEGIN
        ROWS 12
        COLUMNHEAD 20, 15002
        COLUMNS 3
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 105
        GRIDCOLTITLE 0, "Car type"
        GRIDCOLWIDTH 1, 225
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 150
        GRIDCOLTITLE 2, "Price group"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclSelCarType"
        CLIENTEDGE
    END

    SCROLLBAR 15004, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 15005, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    LISTBUTTON 15006, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPriceGroup"
    END
END

CHILD-WINDOW 106 0 0 200 19
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwProgress"

    EDIT 10601, "", 0, 0, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Progress "
        CLIENTEDGE
        DISABLED
        INVISIBLE
    END
END

MENU 101
BEGIN
    MENU-ITEM 30100 "&File"
    BEGIN
        NAME "menFile"
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
        SEPARATOR
        MENU-ITEM 30207 "&Details\tF10" 340
        BEGIN
            NAME "menDetails"
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
        MENU-ITEM 30303 "&Multi Delete\tF12" 342
        BEGIN
            NAME "menMultDelete"
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
