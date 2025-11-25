object frm_treinos: Tfrm_treinos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Treinos'
  ClientHeight = 738
  ClientWidth = 1361
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Menu = menu_treinos
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 14
  object Panel_treinos: TPanel
    Left = 0
    Top = 384
    Width = 1361
    Height = 354
    Align = alBottom
    Caption = 'Panel_treinos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 376
    ExplicitWidth = 1359
    DesignSize = (
      1361
      354)
    object lb_id: TLabel
      Left = 88
      Top = 16
      Width = 105
      Height = 14
      Caption = 'C'#243'digo do Treino'
      FocusControl = edt_id
    end
    object lb_id_piloto: TLabel
      Left = 88
      Top = 56
      Width = 103
      Height = 14
      Caption = 'C'#243'digo do piloto'
      FocusControl = edt_id_piloto
    end
    object lb_data: TLabel
      Left = 88
      Top = 96
      Width = 107
      Height = 14
      Caption = 'Data de Cadastro'
      FocusControl = edt_data
    end
    object lb_numero: TLabel
      Left = 88
      Top = 136
      Width = 104
      Height = 14
      Caption = 'N'#250'mero do Carro'
      FocusControl = edt_numero
    end
    object lb_qtd_voltas: TLabel
      Left = 87
      Top = 181
      Width = 237
      Height = 14
      Caption = 'Quantidade de voltas durante o treino'
      FocusControl = edt_qtd_voltas
    end
    object lb_tempo: TLabel
      Left = 88
      Top = 224
      Width = 221
      Height = 14
      Caption = 'Tempo total do treino em segundos'
      FocusControl = edt_tempo
    end
    object lb_total_voltas: TLabel
      Left = 1060
      Top = 21
      Width = 215
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Total de voltas de todos os treinos'
      ExplicitLeft = 1041
    end
    object lb_tempo_medio: TLabel
      Left = 1060
      Top = 69
      Width = 116
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Tempo m'#233'dio geral'
      ExplicitLeft = 1041
    end
    object edt_id: TDBEdit
      Left = 88
      Top = 32
      Width = 85
      Height = 22
      DataField = 'id'
      DataSource = DataSource_treinos
      ReadOnly = True
      TabOrder = 0
    end
    object edt_id_piloto: TDBEdit
      Left = 88
      Top = 76
      Width = 85
      Height = 22
      DataField = 'id_piloto'
      DataSource = DataSource_treinos
      ReadOnly = True
      TabOrder = 19
    end
    object edt_data: TDBEdit
      Left = 88
      Top = 109
      Width = 85
      Height = 22
      DataField = 'data'
      DataSource = DataSource_treinos
      MaxLength = 10
      ReadOnly = True
      TabOrder = 2
    end
    object edt_numero: TDBEdit
      Left = 88
      Top = 156
      Width = 85
      Height = 22
      DataField = 'numero_carro'
      DataSource = DataSource_treinos
      ReadOnly = True
      TabOrder = 3
    end
    object edt_qtd_voltas: TDBEdit
      Left = 88
      Top = 201
      Width = 85
      Height = 22
      DataField = 'qtd_voltas'
      DataSource = DataSource_treinos
      ReadOnly = True
      TabOrder = 4
    end
    object edt_tempo: TDBEdit
      Left = 87
      Top = 244
      Width = 85
      Height = 22
      DataField = 'tempo'
      DataSource = DataSource_treinos
      ReadOnly = True
      TabOrder = 5
    end
    object edt_total_voltas: TEdit
      Left = 1060
      Top = 41
      Width = 85
      Height = 22
      Anchors = [akTop, akRight]
      ReadOnly = True
      TabOrder = 6
      ExplicitLeft = 1058
    end
    object edt_tempo_medio: TEdit
      Left = 1060
      Top = 89
      Width = 85
      Height = 22
      Anchors = [akTop, akRight]
      ReadOnly = True
      TabOrder = 7
      ExplicitLeft = 1058
    end
    object btn_novo: TButton
      Left = 289
      Top = 283
      Width = 105
      Height = 41
      Caption = '&Novo treino'
      TabOrder = 8
      OnClick = btn_novoClick
    end
    object btn_salvar: TButton
      Left = 400
      Top = 283
      Width = 105
      Height = 41
      Caption = '&Salvar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TButton
      Left = 511
      Top = 283
      Width = 105
      Height = 41
      Caption = '&Cancelar'
      TabOrder = 10
      OnClick = btn_cancelarClick
    end
    object btn_excluir: TButton
      Left = 733
      Top = 283
      Width = 105
      Height = 41
      Caption = '&Excluir Treino'
      TabOrder = 11
      OnClick = btn_excluirClick
    end
    object btn_sair: TButton
      Left = 1180
      Top = 283
      Width = 105
      Height = 41
      Caption = 'S&air'
      TabOrder = 12
      OnClick = btn_sairClick
    end
    object btn_primeiro: TButton
      Left = 67
      Top = 283
      Width = 105
      Height = 41
      Caption = '<<'
      TabOrder = 13
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TButton
      Left = 178
      Top = 283
      Width = 105
      Height = 41
      Caption = '<'
      TabOrder = 14
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TButton
      Left = 844
      Top = 283
      Width = 105
      Height = 41
      Caption = '>'
      TabOrder = 15
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TButton
      Left = 955
      Top = 283
      Width = 105
      Height = 41
      Caption = '>>'
      TabOrder = 16
      OnClick = btn_ultimoClick
    end
    object btn_att: TButton
      Left = 1066
      Top = 283
      Width = 105
      Height = 41
      Caption = 'Atualizar'
      TabOrder = 17
      OnClick = btn_attClick
    end
    object btn_alterar: TButton
      Left = 622
      Top = 283
      Width = 105
      Height = 41
      Caption = 'Alterar Treino'
      TabOrder = 18
      OnClick = btn_alterarClick
    end
    object DBLookupComboBox_nome_piloto: TDBLookupComboBox
      Left = 179
      Top = 76
      Width = 145
      Height = 22
      DataField = 'nome_piloto'
      DataSource = DataSource_treinos
      Enabled = False
      TabOrder = 1
    end
  end
  object DBGrid_treinos: TDBGrid
    Left = 0
    Top = 0
    Width = 1361
    Height = 384
    Align = alClient
    DataSource = DataSource_treinos
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object DataSource_treinos: TDataSource
    DataSet = DataModule1.FDTable_treinos
    OnStateChange = DataSource_treinosStateChange
    Left = 392
    Top = 464
  end
  object menu_treinos: TMainMenu
    Left = 728
    Top = 404
    object menu_arquivo: TMenuItem
      Caption = 'Arquivo'
      object menu_pilotos: TMenuItem
        Caption = 'Pilotos'
        OnClick = menu_pilotosClick
      end
      object menu_cidades: TMenuItem
        Caption = 'Cidades'
        OnClick = menu_cidadesClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object menu_sair: TMenuItem
        Caption = 'Sair'
        OnClick = menu_sairClick
      end
    end
  end
end
