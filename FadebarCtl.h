// FadebarCtl.h : Declaration of the CFadebarCtrl OLE control class.

/////////////////////////////////////////////////////////////////////////////
// CFadebarCtrl : See FadebarCtl.cpp for implementation.

class CFadebarCtrl : public COleControl
{
	DECLARE_DYNCREATE(CFadebarCtrl)

	HWND	hwndForm;
    BOOL    bWinVersion4;
    
// Constructor
public:
	CFadebarCtrl();

// Overrides

	// Drawing function
	virtual void OnDraw(
				CDC* pdc, const CRect& rcBounds, const CRect& rcInvalid);

	// Persistence
	virtual void DoPropExchange(CPropExchange* pPX);

	// Reset control state
	virtual void OnResetState();

// Implementation
protected:
    HWND GetContainerWnd();

    void OnSetClientSite();
    BOOL OnSetExtent(LPSIZEL lpSizeL);
    void OnEnabledChanged();
        
    void DoDraw(CDC* pdc, const CRect& rcBoundsDP, const CRect& rcInvalidDP);

	~CFadebarCtrl();

	BEGIN_OLEFACTORY(CFadebarCtrl)        // Class factory and guid
		virtual BOOL VerifyUserLicense();
		virtual BOOL GetLicenseKey(DWORD, BSTR FAR*);
	END_OLEFACTORY(CFadebarCtrl)

	DECLARE_OLETYPELIB(CFadebarCtrl)      // GetTypeInfo
//	DECLARE_PROPPAGEIDS(CFadebarCtrl)     // Property page IDs
	DECLARE_OLECTLTYPE(CFadebarCtrl)		// Type name and misc status

// Message maps
	//{{AFX_MSG(CFadebarCtrl)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

// Dispatch maps
	//{{AFX_DISPATCH(CFadebarCtrl)
	//}}AFX_DISPATCH
	DECLARE_DISPATCH_MAP()

	afx_msg void AboutBox();

// Event maps
	//{{AFX_EVENT(CFadebarCtrl)
	//}}AFX_EVENT
	DECLARE_EVENT_MAP()

// Dispatch and event IDs
public:
	enum {
	//{{AFX_DISP_ID(CFadebarCtrl)
	//}}AFX_DISP_ID
	};
};
