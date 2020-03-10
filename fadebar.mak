# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=fadebar - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to fadebar - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "fadebar - Win32 Release" && "$(CFG)" !=\
 "fadebar - Win32 Debug" && "$(CFG)" != "fadebar - Win32 Unicode Debug" &&\
 "$(CFG)" != "fadebar - Win32 Unicode Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "fadebar.mak" CFG="fadebar - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "fadebar - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "fadebar - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "fadebar - Win32 Unicode Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "fadebar - Win32 Unicode Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "fadebar - Win32 Debug"
RSC=rc.exe
CPP=cl.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "fadebar - Win32 Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP BASE Target_Ext "ocx"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# PROP Target_Ext "ocx"
OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\fadebar.ocx" "$(OUTDIR)\regsvr32.trg" "$(OUTDIR)\fadebar.lic"

CLEAN : 
	-@erase ".\Release\fadebar.lib"
	-@erase ".\Release\FadebarCtl.obj"
	-@erase ".\Release\fadebar.pch"
	-@erase ".\Release\StdAfx.obj"
	-@erase ".\Release\fadebar.obj"
	-@erase ".\Release\fadebar.res"
	-@erase ".\Release\fadebar.tlb"
	-@erase ".\Release\fadebar.exp"
	-@erase ".\Release\regsvr32.trg"
	-@erase ".\Release\fadebar.ocx"
	-@erase ".\Release\fadebar.lic"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/fadebar.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0xc09 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0xc09 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0xc09 /fo"$(INTDIR)/fadebar.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fadebar.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 /nologo /subsystem:windows /dll /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/fadebar.pdb" /machine:I386 /def:".\fadebar.def"\
 /out:"$(OUTDIR)/fadebar.ocx" /implib:"$(OUTDIR)/fadebar.lib" 
DEF_FILE= \
	".\fadebar.def"
LINK32_OBJS= \
	"$(INTDIR)/FadebarCtl.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/fadebar.obj" \
	"$(INTDIR)/fadebar.res"

"$(OUTDIR)\fadebar.ocx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Registering OLE control...
OutDir=.\Release
TargetPath=.\Release\fadebar.ocx
InputPath=.\Release\fadebar.ocx
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP BASE Target_Ext "ocx"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# PROP Target_Ext "ocx"
OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\fadebar.ocx" "$(OUTDIR)\regsvr32.trg" "$(OUTDIR)\fadebar.lic"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\vc40.idb"
	-@erase ".\Debug\fadebar.ilk"
	-@erase ".\Debug\StdAfx.obj"
	-@erase ".\Debug\FadebarCtl.obj"
	-@erase ".\Debug\fadebar.pch"
	-@erase ".\Debug\fadebar.obj"
	-@erase ".\Debug\fadebar.res"
	-@erase ".\Debug\fadebar.tlb"
	-@erase ".\Debug\fadebar.lib"
	-@erase ".\Debug\fadebar.exp"
	-@erase ".\Debug\fadebar.pdb"
	-@erase ".\Debug\regsvr32.trg"
	-@erase ".\Debug\fadebar.ocx"
	-@erase ".\Debug\fadebar.lic"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/fadebar.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0xc09 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0xc09 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0xc09 /fo"$(INTDIR)/fadebar.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fadebar.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/fadebar.pdb" /debug /machine:I386 /def:".\fadebar.def"\
 /out:"$(OUTDIR)/fadebar.ocx" /implib:"$(OUTDIR)/fadebar.lib" 
DEF_FILE= \
	".\fadebar.def"
LINK32_OBJS= \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/FadebarCtl.obj" \
	"$(INTDIR)/fadebar.obj" \
	"$(INTDIR)/fadebar.res"

"$(OUTDIR)\fadebar.ocx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Registering OLE control...
OutDir=.\Debug
TargetPath=.\Debug\fadebar.ocx
InputPath=.\Debug\fadebar.ocx
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "DebugU"
# PROP BASE Intermediate_Dir "DebugU"
# PROP BASE Target_Dir ""
# PROP BASE Target_Ext "ocx"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugU"
# PROP Intermediate_Dir "DebugU"
# PROP Target_Dir ""
# PROP Target_Ext "ocx"
OUTDIR=.\DebugU
INTDIR=.\DebugU
# Begin Custom Macros
OutDir=.\DebugU
# End Custom Macros

ALL : "$(OUTDIR)\fadebar.ocx" "$(OUTDIR)\regsvr32.trg" "$(OUTDIR)\fadebar.lic"

CLEAN : 
	-@erase ".\DebugU\vc40.pdb"
	-@erase ".\DebugU\vc40.idb"
	-@erase ".\DebugU\fadebar.ilk"
	-@erase ".\DebugU\StdAfx.obj"
	-@erase ".\DebugU\FadebarCtl.obj"
	-@erase ".\DebugU\fadebar.pch"
	-@erase ".\DebugU\fadebar.obj"
	-@erase ".\DebugU\fadebar.res"
	-@erase ".\DebugU\fadebar.tlb"
	-@erase ".\DebugU\fadebar.lib"
	-@erase ".\DebugU\fadebar.exp"
	-@erase ".\DebugU\fadebar.pdb"
	-@erase ".\DebugU\regsvr32.trg"
	-@erase ".\DebugU\fadebar.ocx"
	-@erase ".\DebugU\fadebar.lic"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Fp"$(INTDIR)/fadebar.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\DebugU/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0xc09 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0xc09 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0xc09 /fo"$(INTDIR)/fadebar.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fadebar.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/fadebar.pdb" /debug /machine:I386 /def:".\fadebar.def"\
 /out:"$(OUTDIR)/fadebar.ocx" /implib:"$(OUTDIR)/fadebar.lib" 
DEF_FILE= \
	".\fadebar.def"
LINK32_OBJS= \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/FadebarCtl.obj" \
	"$(INTDIR)/fadebar.obj" \
	"$(INTDIR)/fadebar.res"

"$(OUTDIR)\fadebar.ocx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Registering OLE control...
OutDir=.\DebugU
TargetPath=.\DebugU\fadebar.ocx
InputPath=.\DebugU\fadebar.ocx
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseU"
# PROP BASE Intermediate_Dir "ReleaseU"
# PROP BASE Target_Dir ""
# PROP BASE Target_Ext "ocx"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseU"
# PROP Intermediate_Dir "ReleaseU"
# PROP Target_Dir ""
# PROP Target_Ext "ocx"
OUTDIR=.\ReleaseU
INTDIR=.\ReleaseU
# Begin Custom Macros
OutDir=.\ReleaseU
# End Custom Macros

ALL : "$(OUTDIR)\fadebar.ocx" "$(OUTDIR)\regsvr32.trg" "$(OUTDIR)\fadebar.lic"

CLEAN : 
	-@erase ".\ReleaseU\fadebar.lib"
	-@erase ".\ReleaseU\FadebarCtl.obj"
	-@erase ".\ReleaseU\fadebar.pch"
	-@erase ".\ReleaseU\fadebar.obj"
	-@erase ".\ReleaseU\StdAfx.obj"
	-@erase ".\ReleaseU\fadebar.res"
	-@erase ".\ReleaseU\fadebar.tlb"
	-@erase ".\ReleaseU\fadebar.exp"
	-@erase ".\ReleaseU\regsvr32.trg"
	-@erase ".\ReleaseU\fadebar.ocx"
	-@erase ".\ReleaseU\fadebar.lic"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Fp"$(INTDIR)/fadebar.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\ReleaseU/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0xc09 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0xc09 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0xc09 /fo"$(INTDIR)/fadebar.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fadebar.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 /nologo /subsystem:windows /dll /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/fadebar.pdb" /machine:I386 /def:".\fadebar.def"\
 /out:"$(OUTDIR)/fadebar.ocx" /implib:"$(OUTDIR)/fadebar.lib" 
DEF_FILE= \
	".\fadebar.def"
LINK32_OBJS= \
	"$(INTDIR)/FadebarCtl.obj" \
	"$(INTDIR)/fadebar.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/fadebar.res"

"$(OUTDIR)\fadebar.ocx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Registering OLE control...
OutDir=.\ReleaseU
TargetPath=.\ReleaseU\fadebar.ocx
InputPath=.\ReleaseU\fadebar.ocx
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "fadebar - Win32 Release"
# Name "fadebar - Win32 Debug"
# Name "fadebar - Win32 Unicode Debug"
# Name "fadebar - Win32 Unicode Release"

!IF  "$(CFG)" == "fadebar - Win32 Release"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "fadebar - Win32 Release"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "fadebar - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/fadebar.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\fadebar.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/fadebar.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\fadebar.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Fp"$(INTDIR)/fadebar.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\fadebar.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_USRDLL" /D "_UNICODE" /Fp"$(INTDIR)/fadebar.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\fadebar.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\fadebar.cpp
DEP_CPP_FADEB=\
	".\StdAfx.h"\
	".\fadebar.h"\
	

!IF  "$(CFG)" == "fadebar - Win32 Release"


"$(INTDIR)\fadebar.obj" : $(SOURCE) $(DEP_CPP_FADEB) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"


"$(INTDIR)\fadebar.obj" : $(SOURCE) $(DEP_CPP_FADEB) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"


"$(INTDIR)\fadebar.obj" : $(SOURCE) $(DEP_CPP_FADEB) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"


"$(INTDIR)\fadebar.obj" : $(SOURCE) $(DEP_CPP_FADEB) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\fadebar.def

!IF  "$(CFG)" == "fadebar - Win32 Release"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\fadebar.rc

!IF  "$(CFG)" == "fadebar - Win32 Release"

DEP_RSC_FADEBA=\
	".\icon1.ico"\
	".\FadebarCtl.bmp"\
	".\bitmap1.bmp"\
	
NODEP_RSC_FADEBA=\
	".\Release\fadebar.tlb"\
	

"$(INTDIR)\fadebar.res" : $(SOURCE) $(DEP_RSC_FADEBA) "$(INTDIR)"\
 "$(INTDIR)\fadebar.tlb"
   $(RSC) /l 0xc09 /fo"$(INTDIR)/fadebar.res" /i "Release" /d "NDEBUG" /d\
 "_AFXDLL" $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

DEP_RSC_FADEBA=\
	".\icon1.ico"\
	".\FadebarCtl.bmp"\
	".\bitmap1.bmp"\
	".\Debug\fadebar.tlb"\
	

"$(INTDIR)\fadebar.res" : $(SOURCE) $(DEP_RSC_FADEBA) "$(INTDIR)"\
 "$(INTDIR)\fadebar.tlb"
   $(RSC) /l 0xc09 /fo"$(INTDIR)/fadebar.res" /i "Debug" /d "_DEBUG" /d\
 "_AFXDLL" $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

DEP_RSC_FADEBA=\
	".\icon1.ico"\
	".\FadebarCtl.bmp"\
	".\bitmap1.bmp"\
	
NODEP_RSC_FADEBA=\
	".\DebugU\fadebar.tlb"\
	

"$(INTDIR)\fadebar.res" : $(SOURCE) $(DEP_RSC_FADEBA) "$(INTDIR)"\
 "$(INTDIR)\fadebar.tlb"
   $(RSC) /l 0xc09 /fo"$(INTDIR)/fadebar.res" /i "DebugU" /d "_DEBUG" /d\
 "_AFXDLL" $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

DEP_RSC_FADEBA=\
	".\icon1.ico"\
	".\FadebarCtl.bmp"\
	".\bitmap1.bmp"\
	
NODEP_RSC_FADEBA=\
	".\ReleaseU\fadebar.tlb"\
	

"$(INTDIR)\fadebar.res" : $(SOURCE) $(DEP_RSC_FADEBA) "$(INTDIR)"\
 "$(INTDIR)\fadebar.tlb"
   $(RSC) /l 0xc09 /fo"$(INTDIR)/fadebar.res" /i "ReleaseU" /d "NDEBUG" /d\
 "_AFXDLL" $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\fadebar.odl

!IF  "$(CFG)" == "fadebar - Win32 Release"


"$(OUTDIR)\fadebar.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "NDEBUG" /tlb "$(OUTDIR)/fadebar.tlb" /win32 $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"


"$(OUTDIR)\fadebar.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "_DEBUG" /tlb "$(OUTDIR)/fadebar.tlb" /win32 $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"


"$(OUTDIR)\fadebar.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "_DEBUG" /tlb "$(OUTDIR)/fadebar.tlb" /win32 $(SOURCE)


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"


"$(OUTDIR)\fadebar.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "NDEBUG" /tlb "$(OUTDIR)/fadebar.tlb" /win32 $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FadebarCtl.cpp
DEP_CPP_FADEBAR=\
	".\StdAfx.h"\
	".\fadebar.h"\
	".\FadebarCtl.h"\
	".\FadebarPpg.h"\
	".\AboutDlg.h"\
	

!IF  "$(CFG)" == "fadebar - Win32 Release"


"$(INTDIR)\FadebarCtl.obj" : $(SOURCE) $(DEP_CPP_FADEBAR) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"


"$(INTDIR)\FadebarCtl.obj" : $(SOURCE) $(DEP_CPP_FADEBAR) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"


"$(INTDIR)\FadebarCtl.obj" : $(SOURCE) $(DEP_CPP_FADEBAR) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"


"$(INTDIR)\FadebarCtl.obj" : $(SOURCE) $(DEP_CPP_FADEBAR) "$(INTDIR)"\
 "$(INTDIR)\fadebar.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\fadebar.lic

!IF  "$(CFG)" == "fadebar - Win32 Release"

# Begin Custom Build - Copying license file...
OutDir=.\Release
ProjDir=.
TargetName=fadebar
InputPath=.\fadebar.lic

"$(OutDir)\$(TargetName).lic" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy "$(ProjDir)\$(TargetName).lic" "$(OutDir)"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Debug"

# Begin Custom Build - Copying license file...
OutDir=.\Debug
ProjDir=.
TargetName=fadebar
InputPath=.\fadebar.lic

"$(OutDir)\$(TargetName).lic" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy "$(ProjDir)\$(TargetName).lic" "$(OutDir)"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Debug"

# Begin Custom Build - Copying license file...
OutDir=.\DebugU
ProjDir=.
TargetName=fadebar
InputPath=.\fadebar.lic

"$(OutDir)\$(TargetName).lic" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy "$(ProjDir)\$(TargetName).lic" "$(OutDir)"

# End Custom Build

!ELSEIF  "$(CFG)" == "fadebar - Win32 Unicode Release"

# Begin Custom Build - Copying license file...
OutDir=.\ReleaseU
ProjDir=.
TargetName=fadebar
InputPath=.\fadebar.lic

"$(OutDir)\$(TargetName).lic" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy "$(ProjDir)\$(TargetName).lic" "$(OutDir)"

# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
