unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, GIFImage, pngextra, ExtDlgs;

type
  TForm6 = class(TForm)
    Image1: TImage;
    titulo: TLabel;
    Label1: TLabel;
    Image2: TImage;
    zero: TPanel;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    um: TPanel;
    return: TLabel;
    Image3: TImage;
    Button1: TButton;
    ope: TOpenPictureDialog;
    PNGButton3: TPNGButton;
    o1: TRadioButton;
    o2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton1Click(Sender: TObject);
    procedure returnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3, Unit2, Unit7;

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);

var
region: hrgn;
begin
titulo.Caption:=form6.Caption;
region:=createroundrectrgn(0,0,width,height,10,10);
setwindowrgn(handle,region,true);
titulo.Caption:=form6.Caption;
end;

procedure TForm6.Label1Click(Sender: TObject);
begin
form6.Close;
end;

procedure TForm6.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form6.Perform(wm_syscommand,sc_dragmove,0);
end;
end;

procedure TForm6.PNGButton1Click(Sender: TObject);
begin
um.Visible:=true;
zero.Visible:=false;
end;

procedure TForm6.returnClick(Sender: TObject);
begin
zero.Visible:=true;
um.Visible:=false;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if ope.Execute then
image3.Picture.LoadFromFile(ope.FileName);
image3.Stretch:=true;
end;

procedure TForm6.PNGButton3Click(Sender: TObject);
begin


mco.wall.Picture.LoadFromFile(ope.FileName);
mco.wall.Visible:=false;
mco.wall.Visible:=true;
config.Show;
config.Close;
if o1.Checked=true then
begin
mco.wall.proportional:=false;
mco.wall.Stretch:=false;
mco.wall.Stretch:=true;
form6.Close;
end
else
if o2.Checked=true then
begin
mco.wall.Stretch:=false;
mco.wall.proportional:=false;
mco.wall.proportional:=true;
form6.Close;
end;
config.Show;
config.Close;
end;

end.
