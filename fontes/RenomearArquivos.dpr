program RenomearArquivos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrinciapal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrinciapal, frmPrinciapal);
  Application.Run;
end.
