unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngextra;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    titulo: TLabel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  i: integer;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form5.Perform(wm_syscommand,sc_dragmove,0);

end;
end;

procedure TForm5.FormShow(Sender: TObject);
var
region: hrgn;
begin

region:=createroundrectrgn(0,0,width,height,10,10);
setwindowrgn(handle,region,true);
 i:=13;
titulo.Caption:=form5.Caption;
end;

procedure TForm5.Label1Click(Sender: TObject);
begin
form5.Close;
end;

procedure TForm5.PNGButton1Click(Sender: TObject);
begin
i:=(strtoint(edit1.text));
i:=i-1;
inttostr(i);
edit1.Text:=(inttostr(i));
 if edit1.Text='0' then
 
i:=1;
inttostr(i);
edit1.Text:=(inttostr(i));
end;

procedure TForm5.PNGButton2Click(Sender: TObject);
begin
i:=(strtoint(edit1.text));
i:=i+1;
inttostr(i);
edit1.Text:=(inttostr(i));
end;

procedure TForm5.PNGButton3Click(Sender: TObject);
const
letras=
'qwertyuiopasdfghjklmnbvcxzQWERTYUIOPLKJHGFDSAZXCVBNM';
numeros=
'1234567890';
letrasnumeros= letras+numeros;
begin
try
edit2.Clear;
for i:=1 to strtoint(edit1.Text) do
begin
if  radiogroup1.ItemIndex=0 then
edit2.Text:=edit2.Text+numeros[random(length(numeros))+1]
else if  radiogroup1.ItemIndex=1 then
edit2.Text:=edit2.Text+letras[random(length(letras))+1]
else if  radiogroup1.ItemIndex=2 then
edit2.Text:=edit2.Text+letrasnumeros[random(length(letrasnumeros))+1];
end;
except
end;
end;

procedure TForm5.PNGButton4Click(Sender: TObject);
begin
edit2.Clear;
end;

end.
