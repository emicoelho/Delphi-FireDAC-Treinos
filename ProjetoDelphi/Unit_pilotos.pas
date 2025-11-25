unit Unit_pilotos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_pilotos = class(TForm)
    panel_pilotos: TPanel;
    lb_id: TLabel;
    edt_id: TDBEdit;
    DataSource_pilotos: TDataSource;
    lb_nome: TLabel;
    edt_nome: TDBEdit;
    lb_telefone: TLabel;
    edt_telefone: TDBEdit;
    lb_id_cidade: TLabel;
    edt_id_cidade: TDBEdit;
    lb_endereco: TLabel;
    edt_endereco: TDBEdit;
    DBGrid_pilotos: TDBGrid;
    btn_primeiro: TButton;
    btn_anterior: TButton;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    btn_excluir: TButton;
    btn_proximo: TButton;
    btn_ultimo: TButton;
    btn_att: TButton;
    btn_sair: TButton;
    btn_alterar: TButton;
    DBLookupComboBox_cidade: TDBLookupComboBox;
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_attClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure DataSource_pilotosStateChange(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivaBotoes;
    procedure AtivaCampos;
    procedure GerarCodigo;
  public
    { Public declarations }
  end;

var
  frm_pilotos: Tfrm_pilotos;

implementation

{$R *.dfm}

uses Unit_DM;

procedure Tfrm_pilotos.AtivaBotoes;
begin
  btn_novo.Enabled := DataSource_pilotos.State in [dsBrowse];
  btn_salvar.Enabled := DataSource_pilotos.State in [dsEdit, dsInsert];
  btn_cancelar.Enabled := DataSource_pilotos.State in [dsEdit, dsInsert];
  btn_excluir.Enabled := DataSource_pilotos.State in [dsBrowse];
  // Falta habilitar e desabilitar os botões de navegação.
end;

procedure Tfrm_pilotos.AtivaCampos;
begin
  edt_id.ReadOnly := False;
  edt_nome.ReadOnly := False;
  edt_telefone.ReadOnly := False;
  edt_endereco.ReadOnly := False;
  DBLookupComboBox_cidade.Enabled := True;
end;

procedure Tfrm_pilotos.btn_alterarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja alterar o piloto?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    Begin
      AtivaCampos;
      edt_nome.SetFocus;
    End;
end;

procedure Tfrm_pilotos.btn_anteriorClick(Sender: TObject);
begin
  DataModule1.FDTable_pilotos.Prior;
end;

procedure Tfrm_pilotos.btn_attClick(Sender: TObject);
begin
  DataModule1.FDTable_pilotos.Refresh;
end;

procedure Tfrm_pilotos.btn_cancelarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja cancelar?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_pilotos.Cancel;
end;

procedure Tfrm_pilotos.btn_excluirClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja excluir o piloto?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_pilotos.Delete;
end;

procedure Tfrm_pilotos.btn_novoClick(Sender: TObject);
begin
  GerarCodigo;
  edt_nome.SetFocus;
  AtivaCampos;
end;

procedure Tfrm_pilotos.btn_primeiroClick(Sender: TObject);
begin
  DataModule1.FDTable_pilotos.First;
end;

procedure Tfrm_pilotos.btn_proximoClick(Sender: TObject);
begin
  DataModule1.FDTable_pilotos.Next;
end;

procedure Tfrm_pilotos.btn_sairClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja sair?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    close;
end;

procedure Tfrm_pilotos.btn_salvarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja salvar o piloto?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_pilotos.Post
  else
    DataModule1.FDTable_pilotos.Cancel;
end;

procedure Tfrm_pilotos.btn_ultimoClick(Sender: TObject);
begin
  DataModule1.FDTable_pilotos.Last;
end;

procedure Tfrm_pilotos.DataSource_pilotosStateChange(Sender: TObject);
begin
  AtivaBotoes;
end;

procedure Tfrm_pilotos.GerarCodigo;
var
  codigo: Integer;
begin
  DataModule1.FDTable_pilotos.Open;

  if DataModule1.FDTable_pilotos.IsEmpty then
    codigo := 1
  else
  begin
    DataModule1.FDTable_pilotos.Last;
    codigo := DataModule1.FDTable_pilotosid.AsInteger + 1;
  end;

  DataModule1.FDTable_pilotos.Append;
  DataModule1.FDTable_pilotosid.AsInteger := codigo;
end;

end.
