unit Unit_cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_cidades = class(TForm)
    Panel_cidades: TPanel;
    lb_id: TLabel;
    edt_id: TDBEdit;
    DataSource_cidades: TDataSource;
    lb_nome: TLabel;
    edt_nome: TDBEdit;
    lb_uf: TLabel;
    edt_uf: TDBEdit;
    DBGrid_cidades: TDBGrid;
    btn_primeiro: TButton;
    btn_anterior: TButton;
    btn_proximo: TButton;
    btn_ultimo: TButton;
    btn_sair: TButton;
    btn_nova: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    btn_excluir: TButton;
    btn_att: TButton;
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_novaClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_attClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure DataSource_cidadesStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure AtivaBotoes;
    procedure AtivaCampos;
    procedure GerarCodigo;
  public
    { Public declarations }
  end;

var
  frm_cidades: Tfrm_cidades;

implementation

{$R *.dfm}

uses Unit_DM;

procedure Tfrm_cidades.AtivaBotoes;
begin
  btn_nova.Enabled := DataSource_cidades.State in [dsBrowse];
  btn_salvar.Enabled := DataSource_cidades.State in [dsEdit, dsInsert];
  btn_cancelar.Enabled := DataSource_cidades.State in [dsEdit, dsInsert];
  btn_excluir.Enabled := DataSource_cidades.State in [dsBrowse];
  // Falta habilitar e desabilitar os botões de navegação.
end;

procedure Tfrm_cidades.AtivaCampos;
begin
  edt_id.ReadOnly := False;
  edt_nome.ReadOnly := False;
  edt_uf.ReadOnly := False;
end;

procedure Tfrm_cidades.btn_anteriorClick(Sender: TObject);
begin
  DataModule1.FDTable_cidades.Prior;
end;

procedure Tfrm_cidades.btn_attClick(Sender: TObject);
begin
  DataModule1.FDTable_cidades.Refresh;
end;

procedure Tfrm_cidades.btn_cancelarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja cancelar?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_cidades.Cancel;
end;

procedure Tfrm_cidades.btn_excluirClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja excluir a Cidade?', 'Pergunta', MB_YESNO + MB_ICONQUESTION)=6 then
    DataModule1.FDTable_cidades.Delete;
end;

procedure Tfrm_cidades.btn_novaClick(Sender: TObject);
begin
  GerarCodigo;
  edt_nome.SetFocus;
  AtivaCampos;


end;

procedure Tfrm_cidades.btn_primeiroClick(Sender: TObject);
begin
  DataModule1.FDTable_cidades.First;
end;

procedure Tfrm_cidades.btn_proximoClick(Sender: TObject);
begin
  DataModule1.FDTable_cidades.Next;
end;

procedure Tfrm_cidades.btn_sairClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja sair?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    close;
end;

procedure Tfrm_cidades.btn_salvarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja salvar a cidade?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_cidades.Post
  else
    DataModule1.FDTable_cidades.Cancel;
end;

procedure Tfrm_cidades.btn_ultimoClick(Sender: TObject);
begin
  DataModule1.FDTable_cidades.Last;
end;

procedure Tfrm_cidades.DataSource_cidadesStateChange(Sender: TObject);
begin
  AtivaBotoes;
end;

procedure Tfrm_cidades.GerarCodigo;
var
  codigo: integer;
begin
  DataModule1.FDTable_cidades.Open;

  if DataModule1.FDTable_cidades.IsEmpty then
    codigo := 1
  else
  begin
    DataModule1.FDTable_cidades.Last;
    codigo := DataModule1.FDTable_cidadesid.AsInteger + 1;
  end;

  DataModule1.FDTable_cidades.Append;
  DataModule1.FDTable_cidadesid.AsInteger := codigo;
end;

end.
