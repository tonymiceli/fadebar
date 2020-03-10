@echo off
REM -- First, make map file from resource.h
echo // MAKEHELP.BAT generated Help Map file.  Used by FADEBAR.HPJ. >hlp\fadebar.hm
echo. >>hlp\fadebar.hm
echo // Commands (ID_* and IDM_*) >>hlp\fadebar.hm
makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>hlp\fadebar.hm
echo. >>hlp\fadebar.hm
echo // Prompts (IDP_*) >>hlp\fadebar.hm
makehm IDP_,HIDP_,0x30000 resource.h >>hlp\fadebar.hm
echo. >>hlp\fadebar.hm
echo // Resources (IDR_*) >>hlp\fadebar.hm
makehm IDR_,HIDR_,0x20000 resource.h >>hlp\fadebar.hm
echo. >>hlp\fadebar.hm
echo // Dialogs (IDD_*) >>hlp\fadebar.hm
makehm IDD_,HIDD_,0x20000 resource.h >>hlp\fadebar.hm
echo. >>hlp\fadebar.hm
echo // Frame Controls (IDW_*) >>hlp\fadebar.hm
makehm IDW_,HIDW_,0x50000 resource.h >>hlp\fadebar.hm
REM -- Make help for Project FADEBAR
call hc31 fadebar.hpj
echo.
