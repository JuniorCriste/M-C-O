unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw_EWB, EwbCore, EmbeddedWB, jpeg, ExtCtrls,
  StdCtrls, Menus, XPMan, ComCtrls, SHDocVw, pngextra;

type
  TForm8 = class(TForm)
    titulo: TLabel;
    Image1: TImage;
    Label1: TLabel;
    PNGButton1: TPNGButton;
    embeddedwb1: TWebBrowser;
    PageControl1: TPageControl;
    Panel2: TPanel;
    Image2: TImage;
    Image3: TImage;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton8: TPNGButton;
    PNGButton9: TPNGButton;
    PNGButton10: TPNGButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    Splitter8: TSplitter;
    Splitter9: TSplitter;
    Splitter10: TSplitter;
    Splitter11: TSplitter;
    edit2: TComboBox;
    Edit1: TEdit;
    selec: TComboBox;
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    NovaAba1: TMenuItem;
    FecharAmaAtual1: TMenuItem;
    nj1: TMenuItem;
    NovaJanela1: TMenuItem;
    MAIS1: TMenuItem;
    Mais2: TMenuItem;
    N1: TMenuItem;
    AjudaSobre1: TMenuItem;
    enab: TTimer;
    fim: TTimer;
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    Editar1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

end.
