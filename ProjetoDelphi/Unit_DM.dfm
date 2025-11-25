object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 249
  Width = 646
  PixelsPerInch = 120
  object FDConnection_SQLite_BD: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Emily_2\Desktop\Emily Coelho Manenti\BD\dados.' +
        'sq3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = FDConnection_SQLite_BDAfterConnect
    BeforeConnect = FDConnection_SQLite_BDBeforeConnect
    Left = 80
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 80
    Top = 130
  end
  object FDQuery_cria_cidades: TFDQuery
    Connection = FDConnection_SQLite_BD
    SQL.Strings = (
      'create table if not exists Cidade'
      '('
      '  id int not null,'
      '  nome_cidade varchar(50),'
      '  sigla_estado char(2),'
      '  Primary key (id)'
      ')')
    Left = 240
    Top = 40
  end
  object FDTable_cidades: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection_SQLite_BD
    UpdateOptions.UpdateTableName = 'Cidade'
    TableName = 'Cidade'
    Left = 240
    Top = 130
    object FDTable_cidadesid: TIntegerField
      DisplayLabel = 'C'#243'digo da Cidade'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_cidadesnome_cidade: TStringField
      DisplayLabel = 'Nome da Cidade'
      FieldName = 'nome_cidade'
      Origin = 'nome_cidade'
      Size = 50
    end
    object FDTable_cidadessigla_estado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'sigla_estado'
      Origin = 'sigla_estado'
      EditMask = '>AA;1;_'
      FixedChar = True
      Size = 2
    end
  end
  object FDQuery_cria_pilotos: TFDQuery
    Connection = FDConnection_SQLite_BD
    SQL.Strings = (
      'create table if not exists Piloto'
      '('
      '  id int not null,'
      '  nome_piloto varchar(50),'
      '  telefone varchar(15),'
      '  id_cidade int,'
      '  endereco varchar(100),'
      '  Primary key (id)'
      ')')
    Left = 390
    Top = 40
  end
  object FDTable_pilotos: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection_SQLite_BD
    UpdateOptions.UpdateTableName = 'Piloto'
    TableName = 'Piloto'
    Left = 390
    Top = 130
    object FDTable_pilotosid: TIntegerField
      DisplayLabel = 'C'#243'digo do Piloto'
      DisplayWidth = 13
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_pilotosnome_piloto: TStringField
      DisplayLabel = 'Nome do Piloto'
      DisplayWidth = 35
      FieldName = 'nome_piloto'
      Origin = 'nome_piloto'
      Size = 50
    end
    object FDTable_pilotostelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object FDTable_pilotosid_cidade: TIntegerField
      DisplayLabel = 'C'#243'digo da Cidade'
      DisplayWidth = 14
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
    object FDTable_pilotosendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 70
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object FDTable_pilotosnome_cidade: TStringField
      DisplayLabel = 'Nome da Cidade'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = FDTable_cidades
      LookupKeyFields = 'id'
      LookupResultField = 'nome_cidade'
      KeyFields = 'id_cidade'
      Size = 50
      Lookup = True
    end
  end
  object FDQuery_cria_treinos: TFDQuery
    Connection = FDConnection_SQLite_BD
    SQL.Strings = (
      'create table if not exists Treino'
      '('
      '  id int not null,'
      '  id_piloto int not null,'
      '  data varchar(15),'
      '  numero_carro int not null,'
      '  qtd_voltas int not null,'
      '  tempo int not null,'
      '  Primary key (id)'
      ')')
    Left = 530
    Top = 40
  end
  object FDTable_treinos: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection_SQLite_BD
    UpdateOptions.UpdateTableName = 'Treino'
    TableName = 'Treino'
    Left = 530
    Top = 130
    object FDTable_treinosid: TIntegerField
      DisplayLabel = 'C'#243'digo do Treino'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_treinosid_piloto: TIntegerField
      DisplayLabel = 'C'#243'digo do piloto'
      FieldName = 'id_piloto'
      Origin = 'id_piloto'
      Required = True
    end
    object FDTable_treinosnome_piloto: TStringField
      DisplayLabel = 'Nome do Piloto'
      FieldKind = fkLookup
      FieldName = 'nome_piloto'
      LookupDataSet = FDTable_pilotos
      LookupKeyFields = 'id'
      LookupResultField = 'nome_piloto'
      KeyFields = 'id_piloto'
      Size = 50
      Lookup = True
    end
    object FDTable_treinosdata: TStringField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'data'
      Origin = 'data'
      EditMask = '!99/99/0000;1;_'
      Size = 15
    end
    object FDTable_treinosnumero_carro: TIntegerField
      DisplayLabel = 'N'#250'mero do Carro'
      FieldName = 'numero_carro'
      Origin = 'numero_carro'
      Required = True
    end
    object FDTable_treinosqtd_voltas: TIntegerField
      DisplayLabel = 'Quantidade de voltas durante o treino'
      FieldName = 'qtd_voltas'
      Origin = 'qtd_voltas'
      Required = True
    end
    object FDTable_treinostempo: TIntegerField
      DisplayLabel = 'Tempo total do treino em segundos'
      FieldName = 'tempo'
      Origin = 'tempo'
      Required = True
    end
  end
end
