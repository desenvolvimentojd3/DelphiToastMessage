# DelphiToastMessage

unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uTToastMessage;

type
  TForm2 = class(TForm)
    BtnSuccess: TButton;
    BtnInfo: TButton;
    BtnError: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnSuccessClick(Sender: TObject);
    procedure BtnInfoClick(Sender: TObject);
    procedure BtnErrorClick(Sender: TObject);
  private
    { Private declarations }
    var
      ToastMessage : TToastMessage;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnErrorClick(Sender: TObject);
begin
  ToastMessage.Toast(tpError,'Error','My Text');
end;

procedure TForm2.BtnInfoClick(Sender: TObject);
begin
  ToastMessage.Toast(tpInfo,'Info','My Text');
end;

procedure TForm2.BtnSuccessClick(Sender: TObject);
begin
  ToastMessage.Toast(tpSuccess,'Success','My Text');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ToastMessage := TToastMessage.Create(Self);
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  if Assigned(ToastMessage) then
    FreeAndNil(ToastMessage);
end;

end.
