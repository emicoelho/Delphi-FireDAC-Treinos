unit Unit_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.SQLiteWrapper.Stat;

type
  TDataModule1 = class(TDataModule)
    FDConnection_SQLite_BD: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery_cria_cidades: TFDQuery;
    FDTable_cidades: TFDTable;
    FDTable_cidadesid: TIntegerField;
    FDTable_cidadesnome_cidade: TStringField;
    FDTable_cidadessigla_estado: TStringField;
    FDQuery_cria_pilotos: TFDQuery;
    FDTable_pilotos: TFDTable;
    FDTable_pilotosid: TIntegerField;
    FDTable_pilotosnome_piloto: TStringField;
    FDTable_pilotostelefone: TStringField;
    FDTable_pilotosid_cidade: TIntegerField;
    FDTable_pilotosendereco: TStringField;
    FDTable_pilotosnome_cidade: TStringField;
    FDQuery_cria_treinos: TFDQuery;
    FDTable_treinos: TFDTable;
    FDTable_treinosid: TIntegerField;
    FDTable_treinosid_piloto: TIntegerField;
    FDTable_treinosdata: TStringField;
    FDTable_treinosnumero_carro: TIntegerField;
    FDTable_treinosqtd_voltas: TIntegerField;
    FDTable_treinostempo: TIntegerField;
    FDTable_treinosnome_piloto: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection_SQLite_BDAfterConnect(Sender: TObject);
    procedure FDConnection_SQLite_BDBeforeConnect(Sender: TObject);
  private
  public
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  FDConnection_SQLite_BD.Connected := True;
end;

procedure TDataModule1.FDConnection_SQLite_BDAfterConnect(Sender: TObject);
begin
  FDQuery_cria_cidades.ExecSQL;
  FDTable_cidades.Active := True;

  FDQuery_cria_pilotos.ExecSQL;
  FDTable_pilotos.Active := True;

  FDQuery_cria_treinos.ExecSQL;
  FDTable_treinos.Active := True;
end;

procedure TDataModule1.FDConnection_SQLite_BDBeforeConnect(Sender: TObject);
var
  PastaExe, DBPath: string;
begin
  PastaExe := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  DBPath   := PastaExe + 'BD\dados.sq3';

  FDConnection_SQLite_BD.Params.Clear;
  FDConnection_SQLite_BD.Params.Values['DriverID']    := 'SQLite';
  FDConnection_SQLite_BD.Params.Values['Database']    := DBPath;
  FDConnection_SQLite_BD.Params.Values['LockingMode'] := 'Normal';
  FDConnection_SQLite_BD.LoginPrompt := False;
end;

end.
