unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tini = class(TForm)
    inic: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ini: Tini;

implementation

uses Unit2;

{$R *.dfm}

procedure Tini.Timer1Timer(Sender: TObject);
begin

sleep(5000);
inic.Stretch:=true;
MCO.show;

end;

end.
