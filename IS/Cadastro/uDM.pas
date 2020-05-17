unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    dsrCliente: TDataSource;
    cdsCliente: TClientDataSet;
    cdsClienteNome: TStringField;
    cdsClienteIdentidade: TStringField;
    cdsClienteCpf: TStringField;
    cdsClienteTelefone: TStringField;
    cdsClienteEmail: TStringField;
    cdsClienteCep: TStringField;
    cdsClienteLogradouro: TStringField;
    cdsClienteNumero: TStringField;
    cdsClienteComplemento: TStringField;
    cdsClienteBairro: TStringField;
    cdsClienteCidade: TStringField;
    cdsClienteEstado: TStringField;
    cdsClientePais: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
