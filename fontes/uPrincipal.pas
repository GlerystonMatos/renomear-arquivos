unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrinciapal = class(TForm)
    btnListar: TButton;
    edtCaminho: TEdit;
    lbCaminho: TLabel;
    mArquivos: TMemo;
    btnRenomear: TButton;
    pbProgresso: TProgressBar;
    procedure btnListarClick(Sender: TObject);
    procedure btnRenomearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrinciapal: TfrmPrinciapal;

implementation

{$R *.dfm}

procedure TfrmPrinciapal.btnListarClick(Sender: TObject);
var
  indice: Integer;
  searchRec: TSearchRec;
begin
  mArquivos.Lines.Clear;
  indice := FindFirst(edtCaminho.Text + '\*', faAnyFile, searchRec);
  while indice = 0 do
  begin
    if (searchRec.Name <> '.') And (searchRec.Name <> '..') and (searchRec.Name <> 'Renomeados') then
      mArquivos.Lines.Add(searchRec.Name);
    indice := FindNext(searchRec);
  end;

  btnRenomear.Enabled := True;
end;

procedure TfrmPrinciapal.btnRenomearClick(Sender: TObject);
var
  arquivo: string;
  indice: Integer;
  extencao: string;
  contador: Integer;
  searchRec: TSearchRec;
begin
  contador := 0;
  pbProgresso.Min := 0;
  pbProgresso.Position := 0;
  pbProgresso.Max := mArquivos.Lines.Count;
  mArquivos.Lines.Clear;
  indice := FindFirst(edtCaminho.Text + '\*', faAnyFile, searchRec);
  while indice = 0 do
  begin
    if (searchRec.Name <> '.') and (searchRec.Name <> '..') and (searchRec.Name <> 'Renomeados') then
    begin
      Inc(contador);
      arquivo := edtCaminho.Text + '\' + searchRec.Name;
      extencao := ExtractFileExt(arquivo);
      RenameFile(arquivo, edtCaminho.Text + '\Renomeados\' + IntToStr(contador) + extencao);
      pbProgresso.Position := pbProgresso.Position + 1;
    end;

    indice := FindNext(searchRec);
  end;

end;

end.
