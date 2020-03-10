// FadebarPpg.h : Declaration of the CFadebarPropPage property page class.

////////////////////////////////////////////////////////////////////////////
// CFadebarPropPage : See FadebarPpg.cpp.cpp for implementation.

class CFadebarPropPage : public COlePropertyPage
{
	DECLARE_DYNCREATE(CFadebarPropPage)
	DECLARE_OLECREATE_EX(CFadebarPropPage)

// Constructor
public:
	CFadebarPropPage();

// Dialog Data
	//{{AFX_DATA(CFadebarPropPage)
	enum { IDD = IDD_PROPPAGE_FADEBAR };
		// NOTE - ClassWizard will add data members here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA

// Implementation
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

// Message maps
protected:
	//{{AFX_MSG(CFadebarPropPage)
		// NOTE - ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};
