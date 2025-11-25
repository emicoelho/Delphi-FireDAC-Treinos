unit Unit_treinos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  Tfrm_treinos = class(TForm)
    Panel_treinos: TPanel;
    lb_id: TLabel;
    edt_id: TDBEdit;
    DataSource_treinos: TDataSource;
    lb_id_piloto: TLabel;
    edt_id_piloto: TDBEdit;
    lb_data: TLabel;
    edt_data: TDBEdit;
    lb_numero: TLabel;
    edt_numero: TDBEdit;
    lb_qtd_voltas: TLabel;
    edt_qtd_voltas: TDBEdit;
    lb_tempo: TLabel;
    edt_tempo: TDBEdit;
    DBGrid_treinos: TDBGrid;
    edt_total_voltas: TEdit;
    lb_total_voltas: TLabel;
    edt_tempo_medio: TEdit;
    lb_tempo_medio: TLabel;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    btn_excluir: TButton;
    btn_sair: TButton;
    btn_primeiro: TButton;
    btn_anterior: TButton;
    btn_proximo: TButton;
    btn_ultimo: TButton;
    btn_att: TButton;
    menu_treinos: TMainMenu;
    menu_arquivo: TMenuItem;
    menu_pilotos: TMenuItem;
    menu_cidades: TMenuItem;
    N1: TMenuItem;
    menu_sair: TMenuItem;
    btn_alterar: TButton;
    DBLookupComboBox_nome_piloto: TDBLookupComboBox;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource_treinosStateChange(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_attClick(Sender: TObject);
    procedure menu_sairClick(Sender: TObject);
    procedure menu_pilotosClick(Sender: TObject);
    procedure menu_cidadesClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure TotalVoltas;
    procedure TempoMedioGeral;
    procedure AtivaBotoes;
    procedure AtivaCampos;
    procedure GerarCodigo;
  public
    { Public declarations }
  end;

var
  frm_treinos: Tfrm_treinos;

implementation

{$R *.dfm}

uses Unit_DM, Unit_cidades, Unit_pilotos;

procedure Tfrm_treinos.AtivaBotoes;
begin
  btn_novo.Enabled := DataSource_treinos.State in [dsBrowse];
  btn_salvar.Enabled := DataSource_treinos.State in [dsEdit, dsInsert];
  btn_cancelar.Enabled := DataSource_treinos.State in [dsEdit, dsInsert];
  btn_excluir.Enabled := DataSource_treinos.State in [dsBrowse];
  btn_alterar.Enabled := DataSource_treinos.State in [dsBrowse];
  //Falta habilitar e desabilitar os botões de navegação.
end;

procedure Tfrm_treinos.AtivaCampos;
begin
  edt_id.ReadOnly := False;
  edt_data.ReadOnly := False;
  edt_numero.ReadOnly := False;
  edt_qtd_voltas.ReadOnly := False;
  edt_tempo.ReadOnly := False;
  DBLookupComboBox_nome_piloto.Enabled := True;
end;

procedure Tfrm_treinos.btn_alterarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja alterar o treino?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    Begin
      AtivaCampos;
      edt_data.SetFocus;
    End;
end;

procedure Tfrm_treinos.btn_anteriorClick(Sender: TObject);
begin
  DataModule1.FDTable_treinos.Prior;
end;

procedure Tfrm_treinos.btn_attClick(Sender: TObject);
begin
  DataModule1.FDTable_treinos.Refresh;
end;

procedure Tfrm_treinos.btn_cancelarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja cancelar?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    DataModule1.FDTable_treinos.Cancel;
end;

procedure Tfrm_treinos.btn_excluirClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja excluir o treino?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    begin
      DataModule1.FDTable_treinos.Delete;
      TotalVoltas;
    end;
end;

procedure Tfrm_treinos.btn_novoClick(Sender: TObject);
begin
  GerarCodigo;
  AtivaCampos;
end;

procedure Tfrm_treinos.btn_primeiroClick(Sender: TObject);
begin
  DataModule1.FDTable_treinos.First;
end;

procedure Tfrm_treinos.btn_proximoClick(Sender: TObject);
begin
  DataModule1.FDTable_treinos.Next;
end;

procedure Tfrm_treinos.btn_sairClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja sair?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    close;
end;

procedure Tfrm_treinos.btn_salvarClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja salvar o treino?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6  then
    DataModule1.FDTable_treinos.Post
  else
    DataModule1.FDTable_treinos.Cancel;
end;

procedure Tfrm_treinos.btn_ultimoClick(Sender: TObject);
begin
  DataModule1.FDTable_treinos.Last;
end;

procedure Tfrm_treinos.DataSource_treinosStateChange(Sender: TObject);
begin
  if DataSource_treinos.State in [dsBrowse] then
    begin
      TotalVoltas;
      TempoMedioGeral;
    end;
  AtivaBotoes;
end;

procedure Tfrm_treinos.FormShow(Sender: TObject);
begin
  TotalVoltas;
  TempoMedioGeral;
end;

procedure Tfrm_treinos.GerarCodigo;
var
  codigo: Integer;
begin
  DataModule1.FDTable_treinos.Open;

  if DataModule1.FDTable_treinos.IsEmpty then
    codigo := 1
  else
  begin
    DataModule1.FDTable_treinos.Last;
    codigo := DataModule1.FDTable_treinosid.AsInteger + 1;
  end;

  DataModule1.FDTable_treinos.Append;
  DataModule1.FDTable_treinosid.AsInteger := codigo;
end;

procedure Tfrm_treinos.menu_cidadesClick(Sender: TObject);
begin
  frm_cidades.Show;
end;

procedure Tfrm_treinos.menu_pilotosClick(Sender: TObject);
begin
  frm_pilotos.Show;
end;

procedure Tfrm_treinos.menu_sairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_treinos.TempoMedioGeral;
var
  soma, cont: integer;
  tempo_medio: Double;
begin
  soma := 0;
  cont := 0;

  try
    DataModule1.FDTable_treinos.DisableControls;
    DataModule1.FDTable_treinos.First;

    while not DataModule1.FDTable_treinos.Eof do
    begin
      Inc(cont);
      soma := soma + DataModule1.FDTable_treinostempo.Value;
      DataModule1.FDTable_treinos.Next;
    end;

    if cont <> 0 then
    begin
      tempo_medio := soma / cont;
      edt_tempo_medio.Text := FormatFloat('0.00', tempo_medio);
    end
    else
      edt_tempo_medio.Text := '0,00';

  finally
    DataModule1.FDTable_treinos.EnableControls;
  end;
end;

procedure Tfrm_treinos.TotalVoltas;
var
  total: integer;
begin
  total:= 0;

  try
    DataModule1.FDTable_treinos.DisableControls;
    DataModule1.FDTable_treinos.First;

    while not DataModule1.FDTable_treinos.Eof do
      begin
        total := total + DataModule1.FDTable_treinosqtd_voltas.Value;
        DataModule1.FDTable_treinos.Next;
      end;

    edt_total_voltas.Text := IntToStr(total);
  except
    on e:exception do
      ShowMessage('Erro ao calcular quantidade total de voltas de todos os treinos: '+e.Message);
  end;
  DataModule1.FDTable_treinos.EnableControls;
end;

end.
