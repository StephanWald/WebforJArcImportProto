VERSION "4.0"

WINDOW 1 "Car Catalogue Maintenance" 5 84 835 505
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287287308
    NAME "FrmMaintCarCat"
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
        DISABLED
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png"
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png"
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png"
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 111, "", 148, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png"
        NAME "tbnSearch"
        SHORTCUE "Open the search dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 112, "", 795, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 765, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TABCONTROL 10008, "tclAll", 5, 100, 820, 400
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        NAME "tclAll"
        TAB "Car" 0 51
        TAB "Owner " 0 52
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 7, 122
    BEGIN
        NAME "chd_frmCar"
    END

    CHILD-WINDOW 102, 52, 7, 122
    BEGIN
        NAME "chd_frmOwner"
    END

    STATICTEXT 1002, "License :", 10, 44, 125, 19
    BEGIN
        NAME "txtLicense"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 1004, "Car info. :", 10, 64, 125, 19
    BEGIN
        NAME "txtCar_info"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 1006, "Owner info. :", 255, 44, 125, 19
    BEGIN
        NAME "txtOwner_info"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1008, "", 2, 24, 830, 70
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11002, "", 135, 42, 100, 19
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

    CUSTOMEDIT 11004, "", 135, 62, 650, 19
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

    CUSTOMEDIT 11005, "", 370, 42, 450, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Ownerinfo"
        CLIENTEDGE
    END
END

CHILD-WINDOW 101 0 0 814 374
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 2176844804
    NAME "chd_wdwCar"

    STATICTEXT 10100, "Cha&ssis number", 5, 12, 125, 19
    BEGIN
        NAME "txtChassis_number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10101, "", 145, 10, 210, 19
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

    STATICTEXT 10104, "&License", 5, 32, 125, 19
    BEGIN
        NAME "txtLicense"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10105, "", 145, 30, 150, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "License"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the license number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10108, "&Importer number", 5, 52, 125, 19
    BEGIN
        NAME "txtImporter_number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10109, "", 145, 50, 210, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Importer_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the importer number "
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10112, "Ma&ke", 5, 72, 125, 19
    BEGIN
        NAME "txtMake"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10113, "", 145, 70, 210, 380
    BEGIN
        NAME "lbnMake_code"
        DISABLED
        SHORTCUE "Choose the car make"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10114, "&Model", 5, 93, 125, 19
    BEGIN
        NAME "txtModel"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10115, "", 145, 91, 210, 380
    BEGIN
        NAME "Model_code"
        DISABLED
        SHORTCUE "Choose the car model"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10116, "&Model year / Model", 5, 93, 110, 19
    BEGIN
        NAME "txtModelYear"
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10117, "", 145, 91, 60, 380
    BEGIN
        NAME "lbnModel_year"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model year"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10118, "", 205, 91, 150, 380
    BEGIN
        NAME "lbnModel_code"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the model"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10119, "&Type code", 5, 114, 125, 19
    BEGIN
        NAME "txtType_code"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10120, "", 145, 112, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_type_id"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the type code"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10121, "", 275, 112, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_type"
        DISABLED
        SHORTCUE "Search for a type code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10122, "&Type description", 5, 134, 125, 19
    BEGIN
        NAME "txtType_descr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10123, "", 145, 132, 300, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_descr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the description of the type of this car"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10126, "", 145, 152, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 17
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Add_on_id_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the code of the primary colour"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10125, "C&olour code 1", 5, 154, 125, 19
    BEGIN
        NAME "txtCodeColour_1"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10127, "", 275, 152, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_colour"
        DISABLED
        SHORTCUE "Search for colour code 1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10128, "C&olour description", 5, 174, 125, 19
    BEGIN
        NAME "txtCol_1_descr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10129, "", 145, 172, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_col_1_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The description of the primary colour"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10130, "C&olour code 2", 5, 194, 125, 19
    BEGIN
        NAME "txtCodeColour_2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10131, "", 145, 192, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Add_on_id_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the code of the secondary colour"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10132, "", 275, 192, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_color"
        DISABLED
        SHORTCUE "Search for colour code 2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10133, "C&olour description", 5, 214, 125, 19
    BEGIN
        NAME "txtCol_2_descr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10134, "", 145, 212, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_col_2_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The description of the secondary colour"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10135, "&Trim code", 5, 234, 125, 19
    BEGIN
        NAME "txtTrim"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10136, "", 145, 232, 125, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Add_on_id_3 "
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the trim code"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10137, "", 275, 232, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_trim"
        DISABLED
        SHORTCUE "Search for the trim code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10138, "&Trim description", 5, 254, 125, 19
    BEGIN
        NAME "txtTrim_Descr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10139, "", 145, 252, 300, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_trim_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The description of the trim"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10140, "Tax calc. &date", 5, 274, 125, 19
    BEGIN
        NAME "txtTaxCalcDate"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10141, "", 145, 272, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_tax_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the calculation date of the tax"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10142, "Tax &base amount", 6, 294, 125, 19
    BEGIN
        NAME "txtTaxBaseAmount"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 10143, " ", 145, 292, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_base_tax"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the base amount subject to tax"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10144, "Tax &amount", 6, 315, 125, 19
    BEGIN
        NAME "txtTaxAmount"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 10145, " ", 145, 312, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_tax_amnt"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the tax amount"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 10146, "&Used car", 5, 335, 109, 19
    BEGIN
        CHECKED
        NAME "Car_new_used"
        DISABLED
        SHORTCUE "Check if it is a used car"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10150, "E&ngine number", 475, 12, 125, 19
    BEGIN
        NAME "txtEngine_number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10151, "", 610, 10, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_engine_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the engine number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10154, "&Key number -1-", 475, 32, 125, 19
    BEGIN
        NAME "txtKey_number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10155, "", 610, 30, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_key_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter key number 1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10156, "Ke&y number -2-", 475, 52, 125, 19
    BEGIN
        NAME "txtKey_number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10157, "", 610, 50, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_key_nr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter key number 2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10158, "&Security code", 475, 72, 125, 19
    BEGIN
        NAME "txtSecur_code"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10159, "", 610, 70, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_secur_code"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the security code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10162, "&Radio code", 475, 92, 125, 19
    BEGIN
        NAME "txtRadio_code"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10163, "", 610, 90, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_radio_code"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the radio code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10164, "&Kind of vehicle", 475, 112, 125, 19
    BEGIN
        NAME "txtKindOfVehicle"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10165, "", 610, 110, 175, 380
    BEGIN
        NAME "lbnVehicle_code"
        DISABLED
        SHORTCUE "Choose the kind of vehicle"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10166, "F&uel", 475, 134, 125, 19
    BEGIN
        NAME "txtFuel"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10167, "", 610, 132, 175, 380
    BEGIN
        NAME "lbnFuel_code"
        DISABLED
        SHORTCUE "Choose the kind of fuel"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10170, "&Tires", 475, 156, 125, 19
    BEGIN
        NAME "txtTires"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10171, "", 610, 154, 175, 380
    BEGIN
        NAME "lbnTire_code"
        DISABLED
        SHORTCUE "Choose the type of tires"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10174, "&Gear Box", 475, 178, 125, 19
    BEGIN
        NAME "txtGearCode"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10175, "", 610, 176, 175, 380
    BEGIN
        NAME "lbnGear_code"
        DISABLED
        SHORTCUE "Choose the gear box"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10176, "&Body style", 475, 200, 125, 19
    BEGIN
        NAME "txtBodyStyle"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10177, "", 610, 198, 175, 380
    BEGIN
        NAME "lbnBody_style"
        DISABLED
        SHORTCUE "Choose the body style"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10178, "&Motor type", 475, 222, 125, 19
    BEGIN
        NAME "txtMotorType"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10179, "", 610, 220, 175, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Ct_motor_type"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the motor type"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10180, "&Drive train", 475, 242, 125, 19
    BEGIN
        NAME "txtDriveTrain"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10181, "", 610, 240, 175, 380
    BEGIN
        NAME "lbnDrive_train"
        DISABLED
        SHORTCUE "Choose the drive train"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10184, "Empty/Max. &weight", 475, 284, 125, 19
    BEGIN
        NAME "txtWeight"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10190, "&Construction yyyy/mm", 475, 304, 125, 19
    BEGIN
        NAME "txtConstr_year"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10191, "", 610, 302, 75, 19
    BEGIN
        MASK  "0000/00"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_con_yyyymm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the year and month of construction"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10192, "&Registration date", 475, 324, 125, 19
    BEGIN
        NAME "txtRegDate"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10193, "", 610, 322, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_reg_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the registration date"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10182, "Number of &seats", 475, 263, 125, 19
    BEGIN
        NAME "txtSeats"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10183, "", 610, 261, 175, 380
    BEGIN
        NAME "lbnSeats"
        DISABLED
        SHORTCUE "Choose the number of seats"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 10185, "", 610, 282, 75, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_weight"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the empty weight of the car"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 10186, "", 685, 282, 75, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_weight_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the maximum weight of the car"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10194, "&Car document no.", 475, 344, 125, 19
    BEGIN
        NAME "txtCarDocNo"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10195, "", 610, 342, 75, 19
    BEGIN
        MASK  "UUUUUUUU"
        PADCHARACTER 32
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Car_doc_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the car document number"
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 102 0 0 814 374
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287300
    NAME "chd_wdwOwner"

    STATICTEXT 10200, "&Title 1 + 2", 5, 12, 125, 19
    BEGIN
        NAME "txtTitle"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10201, "", 145, 10, 100, 380
    BEGIN
        NAME "lbnTitle"
        DISABLED
        SHORTCUE "Choose title 1"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10202, "", 250, 10, 100, 380
    BEGIN
        NAME "lbnTitle2"
        DISABLED
        SHORTCUE "Choose title 2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10204, "First &name + prefix", 5, 33, 125, 19
    BEGIN
        NAME "txtFirstName"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10205, "", 145, 31, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_first_name"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the first name"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10206, "", 250, 31, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 15
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_name_prefix"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the prefix"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10208, "&Name", 5, 53, 125, 19
    BEGIN
        NAME "txtName"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10209, "", 145, 51, 325, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_name"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the name"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10212, "Name &2", 5, 73, 125, 19
    BEGIN
        NAME "txtName_2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10213, "", 145, 71, 325, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_name_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter an additional name"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10216, "&Street", 5, 93, 125, 19
    BEGIN
        NAME "txtAddress"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10217, "", 145, 91, 325, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 55
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_address"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the street name"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10220, "&Number + suffix", 5, 113, 125, 19
    BEGIN
        NAME "txtNumbers"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10221, "", 145, 111, 50, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_address_nr_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the street number"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10222, "", 195, 111, 50, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_address_nr_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the suffix"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10224, "P&ostcode ", 5, 133, 125, 19
    BEGIN
        NAME "txtPc"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10225, "", 145, 131, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cu_pc"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the postcode"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10228, "&City", 5, 153, 125, 19
    BEGIN
        NAME "txtCity"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10229, "", 145, 151, 325, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 40
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "cu_city"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the city"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10232, "Countr&y", 5, 173, 125, 19
    BEGIN
        NAME "txtCountry"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10233, "", 145, 171, 205, 380
    BEGIN
        NAME "lbnCountry"
        DISABLED
        SHORTCUE "Choose the country "
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10236, "Lan&guage", 5, 194, 125, 19
    BEGIN
        NAME "txtLanguage"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10237, "", 145, 192, 205, 380
    BEGIN
        NAME "lbnLang_code"
        DISABLED
        SHORTCUE "Choose the preferred language"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10240, "Se&arch code", 5, 215, 125, 19
    BEGIN
        NAME "txtMatchcode"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10241, "", 145, 213, 75, 19
    BEGIN
        MASK  "UUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 8
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "cu_matchcode"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter a search code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10244, "E-&mail address", 5, 235, 125, 19
    BEGIN
        NAME "txtEmail"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10245, "", 145, 233, 450, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 75
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "cu_email"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the e-mail address"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10207, "", 250, 31, 100, 380
    BEGIN
        NAME "lbnName_prefix_code"
        DISABLED
        INVISIBLE
        SHORTCUE "Choose the prefix"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10246, "&Home page URL", 5, 255, 125, 19
    BEGIN
        NAME "txtHomepage"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10247, "", 145, 253, 450, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 75
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "cu_homepage"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the home page URL of this customer"
        FONT "Microsoft Sans Serif" 9
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
