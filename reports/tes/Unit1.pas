unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxUniDacComponents, DB, DBAccess, Uni;

type
  TForm1 = class(TForm)
    frxReport1: TfrxReport;
    Button1: TButton;
    frxUniDacComponents1: TfrxUniDacComponents;
    UniConnection1: TUniConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'test.fr3');
  frxReport1.ShowReport();
end;

end.
