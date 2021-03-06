unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, pngextra, XPMan, Menus;

type
  Tmco = class(TForm)
    back: TPanel;
    wall: TImage;
    men: TScrollBox;
    openmen: TPNGButton;
    Button1: TButton;
    icapture: TPNGButton;
    backmen: TImage;
    filho: TPanel;
    XPManifest1: TXPManifest;
    barra: TImage;
    Button2: TButton;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    hordat: TLabel;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Atualizar1: TMenuItem;
    Desligar1: TMenuItem;
    Personalizar1: TMenuItem;
    PNGButton3: TPNGButton;
    procedure FormShow(Sender: TObject);
    procedure openmenClick(Sender: TObject);
    procedure wallClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure icaptureClick(Sender: TObject);
    procedure wallMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure filhoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Desligar1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure Personalizar1Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mco: Tmco;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure Tmco.FormShow(Sender: TObject);
begin
ini.timer1.Enabled:=false;
ini.destroy;

filho.Top:=openmen.Height+2;
filho.Left:=2;
filho.Width:=wall.Width;
filho.Height:=wall.Height;

barra.Top:=0;
barra.Left:=2;
barra.Width:=wall.Width;
barra.Height:=filho.Top;
end;

procedure Tmco.openmenClick(Sender: TObject);
begin

if men.Visible then
begin
men.Visible:=false;
end
else
begin
men.Top:=openmen.Height+2;
men.Width:=wall.Width-30;
men.left:=2;
men.Visible:=true;

end;

end;

procedure Tmco.wallClick(Sender: TObject);
begin
men.Visible:=false;
end;

procedure Tmco.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tmco.icaptureClick(Sender: TObject);
begin

form3.show;
men.Visible:=false;
form3.Parent:=filho;

end;

procedure Tmco.wallMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if form3.Top <=30 then
form3.Top:= form3.Top-10;
end;

procedure Tmco.filhoClick(Sender: TObject);
begin
men.Visible:=false;
end;

procedure Tmco.Button2Click(Sender: TObject);
begin
form4.show;
men.Visible:=false;
form4.Parent:=filho;
end;

procedure Tmco.PNGButton2Click(Sender: TObject);
begin
form5.show;
form5.AlphaBlend:=true;
form5.AlphaBlendValue:=200;
men.Visible:=false;
form5.Parent:=filho;
end;

procedure Tmco.PNGButton1Click(Sender: TObject);
begin
form6.show;
men.Visible:=false;
form6.Parent:=filho;
end;

procedure Tmco.Timer1Timer(Sender: TObject);
begin
hordat.Caption:=datetimetostr(now);
hordat.Top:=button1.Top;

end;

procedure Tmco.Timer2Timer(Sender: TObject);
begin
wall.Repaint;
end;

procedure Tmco.Desligar1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tmco.Atualizar1Click(Sender: TObject);
begin
config.Show;
config.Close;
end;

procedure Tmco.Personalizar1Click(Sender: TObject);
begin

form6.show;
men.Visible:=false;
form6.Parent:=filho;
end;

procedure Tmco.PNGButton3Click(Sender: TObject);
begin
form8.show;
men.Visible:=false;
form8.Parent:=filho;
end;

end.
