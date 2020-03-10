// FadebarPpg.cpp : Implementation of the CFadebarPropPage property page class.

#include "stdafx.h"
#include "fadebar.h"
#include "FadebarPpg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


IMPLEMENT_DYNCREATE(CFadebarPropPage, COlePropertyPage)


/////////////////////////////////////////////////////////////////////////////
// Message map

BEGIN_MESSAGE_MAP(CFadebarPropPage, COlePropertyPage)
	//{{AFX_MSG_MAP(CFadebarPropPage)
	// NOTE - ClassWizard will add and remove message map entries
	//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CFadebarPropPage, "FADEBAR.FadebarPropPage.1",
	0x8019b264, 0x2fff, 0x11d0, 0xb8, 0x50, 0, 0, 0, 0, 0, 0)


/////////////////////////////////////////////////////////////////////////////
// CFadebarPropPage::CFadebarPropPageFactory::UpdateRegistry -
// Adds or removes system registry entries for CFadebarPropPage

BOOL CFadebarPropPage::CFadebarPropPageFactory::UpdateRegistry(BOOL bRegister)
{
	if (bRegister)
		return AfxOleRegisterPropertyPageClass(AfxGetInstanceHandle(),
			m_clsid, IDS_FADEBAR_PPG);
	else
		return AfxOleUnregisterClass(m_clsid, NULL);
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarPropPage::CFadebarPropPage - Constructor

CFadebarPropPage::CFadebarPropPage() :
	COlePropertyPage(IDD, IDS_FADEBAR_PPG_CAPTION)
{
	//{{AFX_DATA_INIT(CFadebarPropPage)
	// NOTE: ClassWizard will add member initialization here
	//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA_INIT
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarPropPage::DoDataExchange - Moves data between page and properties

void CFadebarPropPage::DoDataExchange(CDataExchange* pDX)
{
	//{{AFX_DATA_MAP(CFadebarPropPage)
	// NOTE: ClassWizard will add DDP, DDX, and DDV calls here
	//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA_MAP
	DDP_PostProcessing(pDX);
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarPropPage message handlers
