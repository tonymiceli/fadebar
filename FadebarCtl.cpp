// FadebarCtl.cpp : Implementation of the CFadebarCtrl OLE control class.

#include "stdafx.h"
#include "fadebar.h"
#include "FadebarCtl.h"
#include "FadebarPpg.h"
#include "AboutDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


IMPLEMENT_DYNCREATE(CFadebarCtrl, COleControl)

//static WNDPROC lpfnFormProc=NULL;

// Forward reference
void DrawCaptionFade(HDC hDC, RECT rcRect, BOOL bActive);
void PaintWindowCaption(HWND hwndWnd, BOOL bPaint, BOOL bActive);
LONG APIENTRY FadeWndProc(HWND hWnd, UINT uMsg, UINT wParam, LONG lParam);
CMapPtrToPtr m_hwndLookup;

/////////////////////////////////////////////////////////////////////////////
// Message map

BEGIN_MESSAGE_MAP(CFadebarCtrl, COleControl)
	//{{AFX_MSG_MAP(CFadebarCtrl)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
//	ON_OLEVERB(AFX_IDS_VERB_PROPERTIES, OnProperties)
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// Dispatch map

BEGIN_DISPATCH_MAP(CFadebarCtrl, COleControl)
	//{{AFX_DISPATCH_MAP(CFadebarCtrl)
	DISP_STOCKPROP_ENABLED()
	//}}AFX_DISPATCH_MAP
	DISP_FUNCTION_ID(CFadebarCtrl, "AboutBox", DISPID_ABOUTBOX, AboutBox, VT_EMPTY, VTS_NONE)
END_DISPATCH_MAP()


/////////////////////////////////////////////////////////////////////////////
// Event map

BEGIN_EVENT_MAP(CFadebarCtrl, COleControl)
	//{{AFX_EVENT_MAP(CFadebarCtrl)
	// NOTE - ClassWizard will add and remove event map entries
	//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_EVENT_MAP
END_EVENT_MAP()


/////////////////////////////////////////////////////////////////////////////
// Property pages

// TODO: Add more property pages as needed.  Remember to increase the count!
//BEGIN_PROPPAGEIDS(CFadebarCtrl, 1)
//	PROPPAGEID(CFadebarPropPage::guid)
//END_PROPPAGEIDS(CFadebarCtrl)


/////////////////////////////////////////////////////////////////////////////
// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CFadebarCtrl, "FADEBAR.FadebarCtrl.1",
	0x8019b263, 0x2fff, 0x11d0, 0xb8, 0x50, 0, 0, 0, 0, 0, 0)


/////////////////////////////////////////////////////////////////////////////
// Type library ID and version

IMPLEMENT_OLETYPELIB(CFadebarCtrl, _tlid, _wVerMajor, _wVerMinor)


/////////////////////////////////////////////////////////////////////////////
// Interface IDs

const IID BASED_CODE IID_DFadebar =
		{ 0x8019b261, 0x2fff, 0x11d0, { 0xb8, 0x50, 0, 0, 0, 0, 0, 0 } };
const IID BASED_CODE IID_DFadebarEvents =
		{ 0x8019b262, 0x2fff, 0x11d0, { 0xb8, 0x50, 0, 0, 0, 0, 0, 0 } };


/////////////////////////////////////////////////////////////////////////////
// Control type information

static const DWORD BASED_CODE _dwFadebarOleMisc =
//	OLEMISC_INVISIBLEATRUNTIME |
	OLEMISC_ACTIVATEWHENVISIBLE |
	OLEMISC_SETCLIENTSITEFIRST |
	OLEMISC_INSIDEOUT |
	OLEMISC_CANTLINKINSIDE |
	OLEMISC_RECOMPOSEONRESIZE;

IMPLEMENT_OLECTLTYPE(CFadebarCtrl, IDS_FADEBAR, _dwFadebarOleMisc)


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::CFadebarCtrlFactory::UpdateRegistry -
// Adds or removes system registry entries for CFadebarCtrl

BOOL CFadebarCtrl::CFadebarCtrlFactory::UpdateRegistry(BOOL bRegister)
{
	if (bRegister)
		return AfxOleRegisterControlClass(
			AfxGetInstanceHandle(),
			m_clsid,
			m_lpszProgID,
			IDS_FADEBAR,
			IDB_FADEBAR,
			FALSE,                      //  Not insertable
			_dwFadebarOleMisc,
			_tlid,
			_wVerMajor,
			_wVerMinor);
	else
		return AfxOleUnregisterClass(m_clsid, m_lpszProgID);
}


/////////////////////////////////////////////////////////////////////////////
// Licensing strings

static const TCHAR BASED_CODE _szLicFileName[] = _T("fadebar.lic");

static const WCHAR BASED_CODE _szLicString[] =
	L"Copyright (c) 1996 ";


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::CFadebarCtrlFactory::VerifyUserLicense -
// Checks for existence of a user license

BOOL CFadebarCtrl::CFadebarCtrlFactory::VerifyUserLicense()
{
	return AfxVerifyLicFile(AfxGetInstanceHandle(), _szLicFileName,
		_szLicString);
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::CFadebarCtrlFactory::GetLicenseKey -
// Returns a runtime licensing key

BOOL CFadebarCtrl::CFadebarCtrlFactory::GetLicenseKey(DWORD dwReserved,
	BSTR FAR* pbstrKey)
{
	if (pbstrKey == NULL)
		return FALSE;

	*pbstrKey = SysAllocString(_szLicString);
	return (*pbstrKey != NULL);
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::CFadebarCtrl - Constructor

CFadebarCtrl::CFadebarCtrl()
{
	InitializeIIDs(&IID_DFadebar, &IID_DFadebarEvents);

	// TODO: Initialize your control's instance data here.
    SetInitialSize(28, 28);
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::~CFadebarCtrl - Destructor

CFadebarCtrl::~CFadebarCtrl()
{
	// TODO: Cleanup your control's instance data here.
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::OnDraw - Drawing function

void CFadebarCtrl::OnDraw(CDC* pdc, 
                          const CRect& rcBounds, 
                          const CRect& rcInvalid)
{
    pdc->SetMapMode(MM_TEXT);
    pdc->SetWindowOrg(0,0) ;
    pdc->SetWindowExt(28,28) ;
   
    // Drawing code goes here.
    RECT rcRect = rcBounds;
    pdc->FillRect(&rcRect, CBrush::FromHandle((HBRUSH)GetStockObject(LTGRAY_BRUSH)));
	pdc->FrameRect(&rcRect, CBrush::FromHandle((HBRUSH)GetStockObject(BLACK_BRUSH)));
    InflateRect(&rcRect, -1, -1);
    pdc->Draw3dRect(&rcRect, GetSysColor(COLOR_3DHILIGHT), GetSysColor(COLOR_3DSHADOW));
    InflateRect(&rcRect, -1, -1);
    pdc->Draw3dRect(&rcRect, GetSysColor(COLOR_3DFACE), GetSysColor(COLOR_3DSHADOW));
    InflateRect(&rcRect, -1, -1);
    pdc->FillRect(&rcRect, CBrush::FromHandle((HBRUSH)GetStockObject(LTGRAY_BRUSH)));
    InflateRect(&rcRect, -2, -2);
    pdc->Draw3dRect(&rcRect, GetSysColor(COLOR_3DHILIGHT), GetSysColor(COLOR_3DDKSHADOW));
    InflateRect(&rcRect, -1, -1);
    pdc->Draw3dRect(&rcRect, GetSysColor(COLOR_3DSHADOW), GetSysColor(COLOR_3DSHADOW));
    
    rcRect.bottom = rcRect.top+min((rcRect.bottom-rcRect.top)/3, 20);
    DrawCaptionFade(pdc->m_hDC, rcRect, TRUE);
} 


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::DoPropExchange - Persistence support

void CFadebarCtrl::DoPropExchange(CPropExchange* pPX)
{
	ExchangeVersion(pPX, MAKELONG(_wVerMinor, _wVerMajor));
	COleControl::DoPropExchange(pPX);

	// TODO: Call PX_ functions for each persistent custom property.
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::OnResetState - Reset control to default state

void CFadebarCtrl::OnResetState()
{
	COleControl::OnResetState();  // Resets defaults found in DoPropExchange
}


/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::AboutBox - Display an "About" box to the user

void CFadebarCtrl::AboutBox()
{
	CDialog *dlgAbout = new CDialog(IDD_ABOUTBOX_FADEBAR);
    dlgAbout->DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl message handlers
int CFadebarCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    OSVERSIONINFO osVersion;
    osVersion.dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
   	bWinVersion4 = GetVersionEx(&osVersion) &&
        (osVersion.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS ||
         osVersion.dwPlatformId == VER_PLATFORM_WIN32_NT) &&
         osVersion.dwMajorVersion >= 4;

    if (COleControl::OnCreate(lpCreateStruct) == -1)
		return -1;

    // Subclass the form window
//    if (bWinVersion4 && AmbientUserMode() && GetEnabled())
    {
        // Get handle to control's parent window
//        if(!GetContainerWnd())
        hwndForm = ::GetParent((HWND)GetHwnd());//lpCreateStruct->hwndParent;
        ::MoveWindow(hwndForm, 10, 10, 100, 100, TRUE);
            
        if (hwndForm)
        {
            void *dummy;
            if (!m_hwndLookup.Lookup((void*)hwndForm, dummy))
            {
                m_hwndLookup.SetAt((void*)hwndForm, (void*)GetWindowLong(hwndForm, GWL_WNDPROC));
	            SetWindowLong(hwndForm, GWL_WNDPROC, (LONG)&FadeWndProc);
            }
        }
//        else
//        {
//            char txt[80];
//            wsprintf(txt, "hWindow = %ld", hwndForm);
//            ::MessageBox(0, txt, "hWindow", MB_OK);
//        }
    }

    return 0;
}

/*        if (!m_pInPlaceSite)
        {
            void *pInterface;
            if(m_pClientSite->QueryInterface(IID_IOleInPlaceSite, &pInterface))
                //m_pInPlaceSite->Release();
            m_pInPlaceSite = (LPOLEINPLACESITE) pInterface;
        }
*/

HWND CFadebarCtrl::GetContainerWnd()
{
    HWND hwndContainer = NULL;
    
    if ((_dwFadebarOleMisc & OLEMISC_INVISIBLEATRUNTIME == OLEMISC_INVISIBLEATRUNTIME)
    &&  m_pInPlaceSite)
    {
        LPOLEWINDOW lpOleWnd;
        HRESULT hRes = m_pInPlaceSite->QueryInterface(IID_IOleWindow,
                                                     (LPVOID *)&lpOleWnd);
        if (SUCCEEDED(hRes))
        {
            hRes = lpOleWnd->GetWindow(&hwndContainer);
            if (SUCCEEDED(hRes))
                lpOleWnd->Release();
        }
    }
    else
    {
        HWND hwndCtrl = (HWND)GetHwnd();
        if (::IsWindow(hwndCtrl))
            hwndContainer = ::GetParent(hwndCtrl);
    }

    return hwndContainer;
}

BOOL CFadebarCtrl::OnSetExtent(LPSIZEL lpSizeL)
{
    return TRUE;
}

void CFadebarCtrl::OnSetClientSite()
{
    RecreateControlWindow();
}

/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl::OnEnabledChanged - Hook/unhook form's window procedure 

void CFadebarCtrl::OnEnabledChanged()
{
	if (bWinVersion4 && AmbientUserMode())
    {
		if (GetEnabled())
        {
            void *dummy;
            if (!m_hwndLookup.Lookup((void*)hwndForm, dummy))
            {
                m_hwndLookup.SetAt((void*)hwndForm, (void*)GetWindowLong(hwndForm, GWL_WNDPROC));
	            SetWindowLong(hwndForm, GWL_WNDPROC, (LONG)&FadeWndProc);
            }
        }
        else
        {
            WNDPROC lpfnFormProc;
            if (m_hwndLookup.Lookup((void*)hwndForm, (void*&)lpfnFormProc))
            {
                SetWindowLong(hwndForm, GWL_WNDPROC, (LONG)lpfnFormProc);
                m_hwndLookup.RemoveKey((void*)hwndForm);
            }
        }
        ::SetWindowPos(hwndForm, NULL, 0, 0, 0, 0, SWP_DRAWFRAME|SWP_NOMOVE|SWP_NOSIZE|SWP_NOZORDER);
    }
}

/////////////////////////////////////////////////////////////////////////////
// Replacement form window procedure:

// Window procedure
LONG APIENTRY FadeWndProc(HWND hWnd, UINT uMsg, UINT wParam, LONG lParam)
{
	BOOL bRC;
    WNDPROC lpfnFormProc=NULL;

    switch (uMsg)
    {
    case WM_NCPAINT:
        PaintWindowCaption(hWnd, TRUE, ::GetActiveWindow()==hWnd);
        break;

    case WM_NCACTIVATE:
        if (m_hwndLookup.Lookup((void*)hWnd, (void*&)lpfnFormProc))
        {
            bRC = CallWindowProc(lpfnFormProc, hWnd, uMsg, wParam, lParam);
            PaintWindowCaption(hWnd, TRUE, (BOOL)wParam);
            return bRC;
        }   
        return TRUE;

    case WM_DESTROY:
        if (m_hwndLookup.Lookup((void*)hWnd, (void*&)lpfnFormProc))
        {
            SetWindowLong(hWnd, GWL_WNDPROC, (LONG)lpfnFormProc);
            m_hwndLookup.RemoveKey((void*)hWnd);
        }
        // Allow processing to pass through to form's window procedure

    default:
        if (lpfnFormProc || m_hwndLookup.Lookup((void*)hWnd, (void*&)lpfnFormProc))
            return CallWindowProc(lpfnFormProc, hWnd, uMsg, wParam, lParam);
    }
    return 0L;
}

// Routine to paint the non-client area with that
// office 95 colour fade.
void PaintWindowCaption(HWND hwndWnd, BOOL bPaint, BOOL bActive)
{
	long lStyle = GetWindowLong(hwndWnd, GWL_STYLE),
         lExStyle = GetWindowLong(hwndWnd, GWL_EXSTYLE);
    
    if (!(lStyle & WS_CAPTION))
        return; // No caption, nothing to paint.

    BOOL bIsSizeable = lStyle & WS_THICKFRAME,
         bIsToolWindow = lExStyle & WS_EX_TOOLWINDOW,
         bIsDialog = lExStyle & WS_EX_DLGMODALFRAME;
         
    // First get some dimensions
    int nCxFrame = GetSystemMetrics(bIsSizeable ? SM_CXSIZEFRAME : SM_CXFIXEDFRAME),
        nCyFrame = GetSystemMetrics(bIsSizeable ? SM_CYSIZEFRAME : SM_CYFIXEDFRAME),
        nCyCaption = GetSystemMetrics(bIsToolWindow ? SM_CYSMCAPTION : SM_CYCAPTION),
        nCxSize = GetSystemMetrics(bIsToolWindow ? SM_CXSMSIZE : SM_CXSIZE),
        nCySize = GetSystemMetrics(bIsToolWindow ? SM_CYSMSIZE : SM_CYSIZE),
		nCxBorder = GetSystemMetrics(SM_CXBORDER),
		nCyBorder = GetSystemMetrics(SM_CYBORDER),
		nCxSmIcon = GetSystemMetrics(SM_CXSMICON),
		nCySmIcon = GetSystemMetrics(SM_CYSMICON);

    // Retrieve small icon associated with window
    HICON hIcon = (HICON)::SendMessage(hwndWnd, WM_GETICON, FALSE, 0);
    if (!hIcon) // No small icon?  Then get the large icon
        hIcon = (HICON)::SendMessage(hwndWnd, WM_GETICON, TRUE, 0);
    if (!hIcon && !bIsDialog) // No large icon?  Settle for the windows logo small icon
   	    hIcon = LoadIcon(NULL, IDI_WINLOGO);

    BOOL bShowIcon = !bIsToolWindow && hIcon,
         bHasMaxBox = !bIsToolWindow && (lStyle & WS_MAXIMIZEBOX),
         bHasMinBox = !bIsToolWindow && (lStyle & WS_MINIMIZEBOX);

	LONG xpos, ypos;

	HDC hDC = GetWindowDC(hwndWnd); // Get DC for entire window
	CRect rect, captionTextRect;

    GetWindowRect(hwndWnd, rect);
	xpos = rect.left;
	ypos = rect.top;

	HRGN hRgn1, hRgn2;
		 hRgn1 = CreateRectRgnIndirect(rect);

    // Calculate bounding rectangle for caption area
	rect.left  += nCxFrame;
	rect.top   += nCyFrame;
    rect.right -= (nCxFrame /*+ nCxBorder*/ + nCxSize
                + (bHasMinBox ? nCxSize : 0)
                + (bHasMaxBox ? nCxSize : 0)
                /*+  nCxBorder*/);
	rect.bottom = rect.top + nCyCaption-1;
  	hRgn2 = CreateRectRgnIndirect(rect);

	CombineRgn(hRgn1, hRgn1, hRgn2, RGN_XOR);
    DefWindowProc(hwndWnd, WM_NCPAINT, (WPARAM)hRgn1, (LPARAM)0L);

	// Convert rect to window coordinates
    rect.top -= ypos;
    rect.bottom = rect.top + nCyCaption-1;
    rect.left -= xpos;
    rect.right -= xpos;

    // Calculate caption text rect for later
    captionTextRect.SetRect(rect.left + (nCxBorder<<1) + (bShowIcon ? nCxSize : 0),
   							rect.top,
                            rect.right,
                            rect.top+nCySize);

    // TODO:  Do we need these anymore ????
    xpos = rect.left;
    ypos = rect.top;

    // Now paint the color fade
    DrawCaptionFade(hDC, rect, bActive);

	// I'd rather use DrawCaption to do this, however it only supports
    // flat colour for background !
    if (bShowIcon)
        DrawIconEx(hDC, xpos+(nCxBorder<<1), ypos+nCyBorder, hIcon,
       	    			nCxSmIcon, nCySmIcon,
                        0,NULL,DI_NORMAL);

    int iOldBkMode = SetBkMode(hDC, TRANSPARENT);

	// Use grey for disabled text color to ensure visibility
    COLORREF crOldTextColor = SetTextColor(hDC, bActive ? GetSysColor(COLOR_CAPTIONTEXT)
														: RGB(192, 192, 192)); //COLOR_INACTIVECAPTIONTEXT));
    NONCLIENTMETRICS ncMetrics;
    ncMetrics.cbSize = sizeof(NONCLIENTMETRICS);
	SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, (PVOID)&ncMetrics, 0);
    HFONT hFont = CreateFontIndirect(bIsToolWindow ? &ncMetrics.lfSmCaptionFont : &ncMetrics.lfCaptionFont);
    if (hFont)
    {
	    HFONT hOldFont = (HFONT)SelectObject(hDC, hFont);
        TEXTMETRIC tm;
        GetTextMetrics(hDC, &tm);

        // Manually center the caption SINCE DrawTextEx's DT_VCENTER
        // SWITCH WON'T #$%#$% WORK !!
        captionTextRect.top += (((rect.bottom-rect.top)-tm.tmHeight)>>1);

		TCHAR lpCaption[100];
   	    int nChars = GetWindowText(hwndWnd, lpCaption, sizeof(lpCaption)-1);
        if (nChars)
	        DrawText(hDC, lpCaption, nChars, captionTextRect, DT_END_ELLIPSIS | DT_VCENTER);//, NULL);

        SelectObject(hDC, hOldFont);
        DeleteObject(hFont);
	}
    SetTextColor(hDC, crOldTextColor);
    SetBkMode(hDC, iOldBkMode);

    ReleaseDC(hwndWnd, hDC);
}

// Routine to paint Office 95 colour fade
void DrawCaptionFade(HDC hDC, RECT rcRect, BOOL bActive)
{
    LOGBRUSH logBrush;
    HBRUSH hBrush;
	logBrush.lbStyle = BS_SOLID;
    logBrush.lbHatch = 0;

    DWORD rgb = GetSysColor(bActive ? COLOR_ACTIVECAPTION
   								    : COLOR_INACTIVECAPTION);
    int nWidth = rcRect.right-rcRect.left;
    float fRectLeft = (float)rcRect.left,
          fRectWidth = (float)nWidth/64.0F,
          fRInc = (float)GetRValue(rgb)/64.0F,
     	  fGInc = (float)GetGValue(rgb)/64.0F,
     	  fBInc = (float)GetBValue(rgb)/64.0F,
          fRed = 0.0F,
          fGreen = 0.0F,
          fBlue = 0.0F;

    rcRect.right = (LONG)(fRectLeft + fRectWidth);

    for (int i=0; i<64; i++)
    {
    	logBrush.lbColor = RGB((BYTE)fRed, (BYTE)fGreen, (BYTE)fBlue);
        hBrush = CreateBrushIndirect(&logBrush);
		FillRect(hDC, &rcRect, hBrush);
        DeleteObject(hBrush);

        // Increment colours
        fRed += fRInc;
        fGreen += fGInc;
        fBlue += fBInc;

        // Increment position
	    fRectLeft += fRectWidth;
   	    rcRect.left = (LONG)fRectLeft;
        rcRect.right = (LONG)(fRectLeft+fRectWidth);
    }
}
