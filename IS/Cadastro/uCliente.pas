unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label13: TLabel;
    gbxIdentificacao: TGroupBox;
    Label1: TLabel;
    dbeNome: TDBEdit;
    Label2: TLabel;
    dbeIdentidade: TDBEdit;
    Label3: TLabel;
    dbeCpf: TDBEdit;
    gbxContato: TGroupBox;
    Label4: TLabel;
    dbeTelefone: TDBEdit;
    Label5: TLabel;
    dbeEmail: TDBEdit;
    gbxEndereco: TGroupBox;
    Label6: TLabel;
    dbeCep: TDBEdit;
    btnBuscaCep: TSpeedButton;
    Label7: TLabel;
    dbeLogradouro: TDBEdit;
    Label8: TLabel;
    dbeNumero: TDBEdit;
    Label9: TLabel;
    dbeComplemento: TDBEdit;
    Label10: TLabel;
    dbeBairro: TDBEdit;
    dbeCidade: TDBEdit;
    Label11: TLabel;
    cboEstado: TDBComboBox;
    Label12: TLabel;
    btnGravar: TBitBtn;
    Label14: TLabel;
    dbePais: TDBEdit;
    btnCancelar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dbeCpfKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure btnBuscaCepClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbeCepKeyPress(Sender: TObject; var Key: Char);
  private
    var
      ArqXML : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

uses uDM, uFunc, uVar, Datasnap.DBClient, Xml.XMLIntf, System.MaskUtils;

procedure TfrmCliente.btnBuscaCepClick(Sender: TObject);
begin
  //valida��o de tamanho do cpf
  if Length(dbeCep.Text)<>8 then
  begin
    Alerta('O Cpf informado n�o est� com um tamanho v�lido');
    Exit;
  end;

  //Consultando o CEP na api do VIACEP
  JSONCep(dbeCep.Text);
end;

procedure TfrmCliente.btnGravarClick(Sender: TObject);
var
  sEmail : TStringList;
begin
  //valida��es de cadastro
  if DadoInvalido(dbeNome.Text, 'Informe o nome', dbeNome, nil) or
     DadoInvalido(dbeCpf.Text, 'Informe o cpf', dbeCpf, nil) or
     DadoInvalido(dbeIdentidade.Text, 'Informe a identidade', dbeIdentidade, nil) or
     DadoInvalido(dbeTelefone.Text, 'Informe o telefone', dbeTelefone, nil) or
     DadoInvalido(dbeEmail.Text, 'Informe o e-mail', dbeEmail, nil) or
     DadoInvalido(dbeCep.Text, 'Informe o cep', dbeCep, nil) or
     DadoInvalido(dbeLogradouro.Text, 'Informe o logradouro', dbeLogradouro, nil) or
     DadoInvalido(dbeBairro.Text, 'Informe o bairro', dbeBairro, nil) or
     DadoInvalido(dbeCidade.Text, 'Informe a cidade', dbeCidade, nil) or
     DadoInvalido(cboEstado.Text, 'Selecione o estado', cboEstado, nil) or
     DadoInvalido(dbePais.Text, 'Informe o pa�s', dbePais, nil) then
  Exit;

  //valida��o de tamanho de campos
  if Length(dbeCpf.Field.Text) <> 11 then
  begin
    Alerta('O Cpf informado n�o cont�m 11 caracteres');
    dbeCpf.SetFocus;
    Exit;
  end;

  if Length(dbeTelefone.Field.Text) <> 11 then
  begin
    Alerta('O telefone informado n�o cont�m 11 caracteres');
    dbeTelefone.SetFocus;
    Exit;
  end;

  if Length(dbeCep.Field.Text) <> 8 then
  begin
    Alerta('O Cpf informado n�o cont�m 8 caracteres');
    dbeCep.SetFocus;
    Exit;
  end;

  //valida��o l�gica de cpf
  if not(ValidaCPF(dbeCpf.Text)) then
  begin
    Alerta('O cpf informado � inv�lido');
    dbeCpf.SetFocus;
    Exit;
  end;

  //valida��o de estrutura do e-mail
  if not(IsValidEmail(dbeEmail.Text)) then
  begin
    Alerta('O e-mail informado � inv�lido');
    dbeEmail.SetFocus;
    Exit;
  end;

  if not(Pergunta('Deseja finalizar o cadastro?')) then
    Exit;

  Screen.Cursor := crSQLWait;
  //gravando os dados em mem�ria
  try
    DM.cdsCliente.Post;
  except
    Erro('Falha ao gravar dados');
    Exit;
  end;

  //Gerando o arquivo XML com os dados de cadastro
  ArqXML := SalvarArquivoXML(DM.cdsCliente, 'Clientes', 'Cliente', dbeCpf.Field.Text + '.xml');

  //Montando o HTML com o conte�do do e-mail
  sEmail := TStringList.Create;
  sEmail.Append('<html><head><meta content=''text/html; charset=iso-8859-1'' http-equiv=''Content-Type'' />');
  sEmail.Append('<title>Cadastro efetivado com sucesso</title> </head>');
  sEmail.Append('<body bgcolor=''#FFFFFF''>');
  sEmail.Append('<p>Prezado cliente, seu cadastro foi realizado com sucesso. Segue abaixo os seus dados e o arquivo XML correspondente:');
  sEmail.Append('<br>');
  sEmail.Append('<p><b> Nome: </b>' + DM.cdsClienteNome.AsString);
  sEmail.Append('<p><b> Cpf: </b>' + FormatMaskText('999.999.999-99;0;_', DM.cdsClienteCpf.AsString));
  sEmail.Append('<p><b> Identidade: </b>' + DM.cdsClienteIdentidade.AsString);
  sEmail.Append('<p><b> Telefone: </b>' + FormatMaskText('(99)99999-9999;0;_', DM.cdsClienteTelefone.AsString));
  sEmail.Append('<p><b> E-mail: </b>' + DM.cdsClienteEmail.AsString);
  sEmail.Append('<p><b> Cep: </b>' + FormatMaskText('99.999-999;0;_', DM.cdsClienteCep.AsString));
  sEmail.Append('<p><b> Logradouro: </b>' + DM.cdsClienteLogradouro.AsString);
  sEmail.Append('<p><b> N�mero: </b>' + DM.cdsClienteNumero.AsString);
  sEmail.Append('<p><b> Complemento: </b>' + DM.cdsClienteComplemento.AsString);
  sEmail.Append('<p><b> Bairro: </b>' + DM.cdsClienteBairro.AsString);
  sEmail.Append('<p><b> Cidade: </b>' + DM.cdsClienteCidade.AsString);
  sEmail.Append('<p><b> Estado: </b>' + DM.cdsClienteEstado.AsString);
  sEmail.Append('<p><b> Pa�s: </b>' + DM.cdsClientePais.AsString);
  sEmail.Append('<p>Este email foi gerado automaticamente pelo sistema. N&atilde;o responda esta mensagem.</p>');
  sEmail.Append('</body></html>');

  //Enviando e-mail com os dados cadastrais
  EnviarEmail('Confirma��o de Cadastro', DM.cdsClienteEmail.AsString, ExtractFileDir(ParamStr(0)) + '\' + dbeCpf.Field.Text + '.xml', sEmail);
  Screen.Cursor := crDefault;
  Informacao('Cadastro realizado com sucesso');
  //removendo o arquivo XML
  DeleteFile(ExtractFileDir(ParamStr(0)) + '\' + ArqXML);
  btnCancelarClick(Sender);
end;

procedure TfrmCliente.btnCancelarClick(Sender: TObject);
begin
  DM.cdsCliente.Cancel;
  DM.cdsCliente.EmptyDataSet;
  DM.cdsCliente.Append;
  dbeNome.SetFocus;
end;

procedure TfrmCliente.dbeCepKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterValido(SomenteNumeros, Key);

  if Key = #13 then
    btnBuscaCepClick(Sender);
end;

procedure TfrmCliente.dbeCpfKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterValido(SomenteNumeros, key);
end;

procedure TfrmCliente.FormActivate(Sender: TObject);
begin
  DM.cdsCliente.CreateDataSet;
  DM.cdsCliente.Append;
  dbeNome.SetFocus;
end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.cdsCliente.Close;
end;

end.
