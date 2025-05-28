VERSION "4.0"

WINDOW 1 "Connect Direct parameter maintenance" 5 85 557 325
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    NAME "FrmCDParMain"
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
        DISABLED
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

    TOOLBUTTON 112, "", 517, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 487, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 114, "", 140, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png"
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue "
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1000, "", -2, 24, 567, 10
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11001, "Grid", 5, 45, 547, 275
    BEGIN
        ROWS 3000
        COLUMNHEAD 20, 11002
        COLUMNS 3
        USERSIZE
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "Appl. ID"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "Dealer number"
        GRIDCOLWIDTH 2, 350
        GRIDCOLTITLE 2, "Description"
        NAME "gclCDPar"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END
END

WINDOW 2 "Connect Direct Parameter Details" 165 90 440 505
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141572
    NAME "FrmCdParDetails"
    DEFAULTFONT "Microsoft Sans Serif" 9

    STATICTEXT 12000, "Application ID:", 5, 10, 100, 19
    BEGIN
        NAME "txtApplId"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12001, "", 110, 8, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bcp_app_id"
        CLIENTEDGE
    END

    CUSTOMEDIT 12002, "", 175, 8, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bcp_descr"
        CLIENTEDGE
    END

    STATICTEXT 12004, "Dealer number:", 5, 30, 100, 19
    BEGIN
        NAME "txtDealerNr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12005, "", 110, 28, 75, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bcp_dealer_nr"
        CLIENTEDGE
    END

    TABCONTROL 12006, "tclDetails", 5, 50, 430, 445
    BEGIN
        AUTOMANAGEMENT
        NAME "tclDetails"
        TAB "General" 0 51
        TAB "Header and trailer" 0 52
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 10, 80
    BEGIN
        NAME "chd_frmGeneral"
    END

    CHILD-WINDOW 102, 52, 10, 80
    BEGIN
        NAME "chd_frmHeaderTrailer"
    END
END

CHILD-WINDOW 101 0 0 420 410
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3824158660
    NAME "chd_wdwGeneral"

    BUTTON 1, "OK", 140, 380, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 210, 380, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Edit", 280, 380, 60, 22
    BEGIN
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 350, 380, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10100, "&Description", 10, 10, 110, 19
    BEGIN
        NAME "txtDescr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10101, "", 130, 8, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Description of this ID"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10104, "&Generation Number", 10, 30, 110, 19
    BEGIN
        NAME "txtGenNr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10105, "", 130, 28, 50, 19
    BEGIN
        MASK  "0000"
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_gen_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The generation number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10108, "&Application Control", 10, 50, 110, 19
    BEGIN
        NAME "txtAppContr"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10112, "&Usage control", 10, 70, 110, 19
    BEGIN
        NAME "txtUsageControl"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10109, "", 130, 48, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_app_control"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The application control"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10113, "", 130, 68, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_use_control"
        CLIENTEDGE
        DISABLED
        SHORTCUE "The usage control"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10116, "&Program send request", 10, 90, 110, 19
    BEGIN
        NAME "txtProgramOut"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10118, "&Program for return info", 10, 110, 110, 19
    BEGIN
        NAME "txtProgramOut"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10117, "", 130, 88, 150, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_program_out"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the program request"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10119, "", 130, 108, 150, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_program_in"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the program to process return information"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10121, "", 130, 128, 75, 19
    BEGIN
        MASK  "UUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Idf_id"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the import job"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10122, "", 210, 128, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearch_def"
        DISABLED
        SHORTCUE "Search for a job"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10148, "&Received files", 10, 310, 110, 19
    BEGIN
        NAME "txtImportJob"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10123, "Import description:", 10, 150, 110, 19
    BEGIN
        NAME "txtImportDescr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10124, "", 130, 148, 275, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Idf_descr"
        CLIENTEDGE
    END

    GROUPBOX 10125, "File names", 2, 170, 410, 70
    BEGIN
        NAME "gclFileNames"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10126, "&File to send", 10, 190, 110, 19
    BEGIN
        NAME "txtPathSend"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10127, "", 125, 188, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_send_file"
        CLIENTEDGE
        DISABLED
        SHORTCUE "File name of the send files"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10130, "F&ile to receive", 10, 210, 110, 19
    BEGIN
        NAME "txtFileReceive"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10131, "", 125, 208, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_return_file"
        CLIENTEDGE
        DISABLED
        SHORTCUE "File name of the receive files"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10139, "Path names", 3, 250, 410, 115
    BEGIN
        NAME "gclPathnames"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10140, "&Send files", 10, 270, 110, 19
    BEGIN
        NAME "txtPathSend"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10141, "", 125, 268, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_pa_send_org"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Path name for the send files"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10142, "&Import job", 10, 130, 110, 19
    BEGIN
        NAME "txtImportJob"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10144, "&Saved send files", 10, 290, 110, 19
    BEGIN
        NAME "txtImportJob"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10145, "", 125, 288, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_pa_send_save"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Path name to save the send files"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10149, "", 125, 308, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_pa_rec_org"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Path name for the received files"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10152, "Saved r&eceived files", 10, 330, 110, 19
    BEGIN
        NAME "txtImportJob"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10153, "", 125, 328, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_pa_rec_save"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Path name to save the received files"
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 102 0 0 420 410
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3824158660
    NAME "chd_wdwHeaderTrailer"

    BUTTON 1, "OK", 140, 380, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 210, 380, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Edit", 280, 380, 60, 22
    BEGIN
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 350, 380, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10200, "Header record -1-", 7, 10, 180, 84
    BEGIN
        NAME "gbxHeader_1"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10269, "Header record -2-", 225, 10, 180, 325
    BEGIN
        NAME "gbxHeader_2"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10220, "Trailer record -1-", 7, 110, 180, 125
    BEGIN
        NAME "gbxTrailer_1"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10250, "Trailer record -2-", 7, 250, 180, 85
    BEGIN
        NAME "gbxTrailer_2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10202, "&Start of block", 15, 30, 110, 19
    BEGIN
        NAME "txtStartOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10206, "&BMW header control", 15, 50, 110, 19
    BEGIN
        NAME "txtBMWHeader"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10210, "&End of block", 15, 70, 110, 19
    BEGIN
        NAME "txtEndOf"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10203, "", 135, 28, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_1_sta"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10207, "", 135, 48, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_1_con"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10211, "", 135, 68, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_1_end"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10222, "&Start of block", 15, 130, 110, 19
    BEGIN
        NAME "txtStartOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10226, "&Hash total def. -1-", 15, 150, 110, 19
    BEGIN
        NAME "txtTraHashDef1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10230, "H&ash total def. -2-", 15, 170, 110, 19
    BEGIN
        NAME "txtTraHashDef2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10234, "Ha&sh total def. -3-", 15, 190, 110, 19
    BEGIN
        NAME "txtTraHashDef2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10238, "&End of block", 15, 210, 110, 19
    BEGIN
        NAME "txtEndOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10252, "&Start of block", 15, 270, 110, 19
    BEGIN
        NAME "txtStartOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10256, "&BMW trailer control", 15, 290, 110, 19
    BEGIN
        NAME "txtBMWTrailer"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10260, "&End of block", 15, 310, 110, 19
    BEGIN
        NAME "txtEndOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10270, "&Start of block", 235, 30, 110, 19
    BEGIN
        NAME "txtStartOf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10272, "&Hash total def. -1-", 235, 50, 110, 19
    BEGIN
        NAME "txtHashTotal1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10274, "&Record type def. -1-", 235, 70, 110, 19
    BEGIN
        NAME "txtRecType1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10276, "&Field start pos. def. -1-", 235, 90, 110, 19
    BEGIN
        NAME "txtFieldStartPos1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10278, "&Field length def. -1-", 235, 110, 110, 19
    BEGIN
        NAME "txtFieldLentgh1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10280, "&Hash total def. -2-", 235, 130, 110, 19
    BEGIN
        NAME "txtHashTotal2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10282, "&Record type def. -2-", 235, 150, 110, 19
    BEGIN
        NAME "txtRecType1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10284, "&Field start pos. def. -2-", 235, 170, 110, 19
    BEGIN
        NAME "txtFieldStartPos2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10286, "&Field length def. -2-", 235, 190, 110, 19
    BEGIN
        NAME "txtFieldLentgh2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10288, "&Hash total def. -3-", 235, 210, 110, 19
    BEGIN
        NAME "txtHashTotal3"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10290, "&Record type def. -3-", 235, 230, 110, 19
    BEGIN
        NAME "txtRecType1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10292, "&Field start pos. def. -3-", 235, 250, 110, 19
    BEGIN
        NAME "txtFieldStartPos2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10294, "&Field length def. -3-", 235, 270, 110, 19
    BEGIN
        NAME "txtFieldLentgh3"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10296, "&Filler", 235, 290, 110, 19
    BEGIN
        NAME "txtFiller"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10298, "&End of block", 235, 310, 110, 19
    BEGIN
        NAME "txtEndOf"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10223, "", 135, 128, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_1_sta"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10227, "", 135, 148, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_1_ht_1"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10231, "", 135, 168, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_1_ht_2"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10235, "", 135, 188, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_1_ht_3"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10239, "", 135, 208, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_1_end"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10253, "", 135, 268, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_2_sta"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10257, "", 135, 288, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_2_con"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10261, "", 135, 308, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_tra_2_end"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10273, "", 355, 48, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_ht_1"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10271, "", 355, 28, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_sta"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10275, "", 355, 68, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_rt_1"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10277, "", 355, 88, 25, 19
    BEGIN
        MASK  "UUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_sp_1"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10279, "", 355, 108, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_le_1"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10281, "", 355, 128, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_ht_2"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10283, "", 355, 148, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_rt_2"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10285, "", 355, 168, 25, 19
    BEGIN
        MASK  "UUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_sp_2"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10287, "", 355, 188, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_le_2"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10289, "", 355, 208, 25, 19
    BEGIN
        MASK  "U"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_ht_3"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10291, "", 355, 228, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_rt_3"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10293, "", 355, 248, 25, 19
    BEGIN
        MASK  "UUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_sp_3"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10295, "", 355, 268, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_le_3"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10297, "", 355, 288, 35, 19
    BEGIN
        MASK  "UUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_filler"
        CLIENTEDGE
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10299, "", 355, 308, 25, 19
    BEGIN
        MASK  "UU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Bcp_hea_2_end"
        CLIENTEDGE
        DISABLED
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
        SEPARATOR
        MENU-ITEM 30207 "De&tails\tF10" 340
        BEGIN
            NAME "menDetails"
        END
    END
    MENU-ITEM 30300 "&Program"
    BEGIN
        NAME "menProgram"
        MENU-ITEM 30303 "&Print\tF9" 339
        BEGIN
            NAME "menPrint"
        END
        MENU-ITEM 30399 "Print &screen\tCtrl+F12"
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
