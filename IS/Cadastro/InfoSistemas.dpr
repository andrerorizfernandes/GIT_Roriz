program InfoSistemas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCliente in 'uCliente.pas' {frmCliente},
  uDM in 'uDM.pas' {DM: TDataModule},
  uFunc in 'uFunc.pas',
  uVar in 'uVar.pas',
  uConfigEmail in 'uConfigEmail.pas' {frmConfigEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
