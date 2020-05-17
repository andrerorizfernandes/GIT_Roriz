unit uConfigEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.IniFiles;

type
  TfrmConfigEmail = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtEmailRemetente: TEdit;
    edtServidorSMTP: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtPorta: TEdit;
    Label4: TLabel;
    edtUsuario: TEdit;
    Label5: TLabel;
    edtSenha: TEdit;
    btnGravar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    var
      IniFile : TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigEmail: TfrmConfigEmail;

implementation

{$R *.dfm}

procedure TfrmConfigEmail.btnGravarClick(Sender: TObject);
begin
  //Leitura do arquivo INI com as configurações de e-mail
  IniFile.WriteString('Email', 'From', edtEmailRemetente.Text);
  IniFile.WriteString('Email' , 'Host', edtServidorSMTP.Text);
  IniFile.WriteString('Email', 'Port', edtPorta.Text);
  IniFile.WriteString('Email' , 'UserName' , edtUsuario.Text);
  IniFile.WriteString('Email' , 'Password' , edtSenha.Text);
  IniFile.Free;
  Close;
end;

procedure TfrmConfigEmail.FormActivate(Sender: TObject);
begin
  //Alterando o arquivo INI com as configurações informadas
  IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
  edtEmailRemetente.Text := IniFile.ReadString('Email', 'From', edtEmailRemetente.Text);
  edtServidorSMTP.Text := IniFile.ReadString('Email' , 'Host', edtServidorSMTP.Text);
  edtPorta.Text := IniFile.ReadString('Email', 'Port', edtPorta.Text);
  edtUsuario.Text := IniFile.ReadString('Email' , 'UserName' , edtUsuario.Text);
  edtSenha.Text := IniFile.ReadString('Email' , 'Password' , edtSenha.Text);
end;

end.
