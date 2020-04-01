program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ini},
  Unit2 in 'Unit2.pas' {mco},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {config},
  Unit8 in 'Unit8.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'MiniCool Operacional';
  Application.CreateForm(Tini, ini);
  Application.CreateForm(Tmco, mco);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(Tconfig, config);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
