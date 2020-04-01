unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, pngimage, Clipbrd, ExtDlgs;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    area: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image2: TImage;
    local: TSavePictureDialog;
    Image1: TImage;
    Label1: TLabel;
    titulo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin

button4.Align:=altop;
button3.Align:=albottom;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin

application.Minimize;
sleep(200);
keybd_event(vk_snapshot,0, 0, 0);
button3.Visible:=true;
sleep(200);

if Clipboard.HasFormat(CF_BITMAP) then
begin
    area.Picture.Bitmap.Assign(Clipboard) ;
    area.Picture.SaveToFile('.\InformaticodeImageCaptureall.bmp');
application.Restore;
         end;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
zero: integer;
begin
zero:=0;
repeat

sleep(200);
keybd_event(vk_snapshot,1, 0, 0);
button3.Visible:=true;
sleep(200);
  zero:= zero+1;


if Clipboard.HasFormat(CF_BITMAP) then
begin
    area.Picture.Bitmap.Assign(Clipboard) ;
    area.Picture.SaveToFile('.\InformaticodeImageCapturesmall.bmp');


end;
until (zero>=4);
    end;
procedure TForm3.Button3Click(Sender: TObject);
var

  FName, Ext: string;
  pName: PChar;
begin

local.Execute;

      if local.FilterIndex =1 then
      begin
area.Picture.Bitmap.SaveToFile (local.FileName+ '.bmp');
      end;
      if local.FilterIndex =2 then
      begin
area.Picture.Bitmap.SaveToFile (local.FileName+ '.gif');
      end;
      if local.FilterIndex =3 then
      begin
area.Picture.Bitmap.SaveToFile (local.FileName+ '.png');
      end;
      if local.FilterIndex =4 then
      begin
area.Picture.Bitmap.SaveToFile (local.FileName+ '.jpg');
      end;
end;

procedure TForm3.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form3.Perform(wm_syscommand,sc_dragmove,0);

end;
end;

procedure TForm3.FormShow(Sender: TObject);

var
region: hrgn;
begin

region:=createroundrectrgn(0,0,width,height,10,10);
setwindowrgn(handle,region,true);
titulo.Caption:=form3.Caption;
end;

procedure TForm3.Label1Click(Sender: TObject);
begin
form3.Close;
end;

end.
