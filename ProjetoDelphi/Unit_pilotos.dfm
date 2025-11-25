object frm_pilotos: Tfrm_pilotos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pilotos'
  ClientHeight = 718
  ClientWidth = 1439
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Position = poDesktopCenter
  TextHeight = 14
  object panel_pilotos: TPanel
    Left = 0
    Top = 400
    Width = 1439
    Height = 318
    Align = alBottom
    Caption = 'panel_pilotos'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 392
    ExplicitWidth = 1437
    DesignSize = (
      1439
      318)
    object lb_id: TLabel
      Left = 130
      Top = 6
      Width = 103
      Height = 14
      Caption = 'C'#243'digo do Piloto'
      FocusControl = edt_id
    end
    object lb_nome: TLabel
      Left = 130
      Top = 51
      Width = 94
      Height = 14
      Caption = 'Nome do Piloto'
      FocusControl = edt_nome
    end
    object lb_telefone: TLabel
      Left = 130
      Top = 97
      Width = 52
      Height = 14
      Caption = 'Telefone'
      FocusControl = edt_telefone
    end
    object lb_id_cidade: TLabel
      Left = 130
      Top = 140
      Width = 107
      Height = 14
      Caption = 'C'#243'digo da Cidade'
      FocusControl = edt_id_cidade
    end
    object lb_endereco: TLabel
      Left = 130
      Top = 188
      Width = 56
      Height = 14
      Caption = 'Endere'#231'o'
      FocusControl = edt_endereco
    end
    object edt_id: TDBEdit
      Left = 130
      Top = 24
      Width = 77
      Height = 22
      DataField = 'id'
      DataSource = DataSource_pilotos
      ReadOnly = True
      TabOrder = 0
    end
    object edt_nome: TDBEdit
      Left = 130
      Top = 70
      Width = 385
      Height = 22
      DataField = 'nome_piloto'
      DataSource = DataSource_pilotos
      ReadOnly = True
      TabOrder = 1
    end
    object edt_telefone: TDBEdit
      Left = 130
      Top = 116
      Width = 195
      Height = 22
      DataField = 'telefone'
      DataSource = DataSource_pilotos
      MaxLength = 14
      ReadOnly = True
      TabOrder = 2
    end
    object edt_id_cidade: TDBEdit
      Left = 130
      Top = 160
      Width = 31
      Height = 22
      DataField = 'id_cidade'
      DataSource = DataSource_pilotos
      ReadOnly = True
      TabOrder = 16
    end
    object edt_endereco: TDBEdit
      Left = 130
      Top = 208
      Width = 617
      Height = 22
      DataField = 'endereco'
      DataSource = DataSource_pilotos
      ReadOnly = True
      TabOrder = 4
    end
    object btn_primeiro: TButton
      Left = 67
      Top = 243
      Width = 105
      Height = 41
      Caption = '<<'
      TabOrder = 5
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TButton
      Left = 178
      Top = 243
      Width = 105
      Height = 41
      Caption = '<'
      TabOrder = 6
      OnClick = btn_anteriorClick
    end
    object btn_novo: TButton
      Left = 296
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Novo Piloto'
      TabOrder = 7
      OnClick = btn_novoClick
    end
    object btn_salvar: TButton
      Left = 418
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Salvar'
      Default = True
      TabOrder = 8
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TButton
      Left = 538
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 9
      OnClick = btn_cancelarClick
    end
    object btn_excluir: TButton
      Left = 658
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Excluir Piloto'
      TabOrder = 10
      OnClick = btn_excluirClick
    end
    object btn_proximo: TButton
      Left = 898
      Top = 243
      Width = 105
      Height = 41
      Caption = '>'
      TabOrder = 11
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TButton
      Left = 1018
      Top = 243
      Width = 105
      Height = 41
      Caption = '>>'
      TabOrder = 12
      OnClick = btn_ultimoClick
    end
    object btn_att: TButton
      Left = 1138
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Atualizar'
      TabOrder = 13
      OnClick = btn_attClick
    end
    object btn_sair: TButton
      Left = 1249
      Top = 243
      Width = 105
      Height = 41
      Caption = 'Sair'
      TabOrder = 14
      OnClick = btn_sairClick
    end
    object btn_alterar: TButton
      Left = 775
      Top = 243
      Width = 105
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Alterar'
      TabOrder = 15
      OnClick = btn_alterarClick
      ExplicitLeft = 773
    end
    object DBLookupComboBox_cidade: TDBLookupComboBox
      Left = 167
      Top = 160
      Width = 145
      Height = 22
      DataField = 'nome_cidade'
      DataSource = DataSource_pilotos
      Enabled = False
      TabOrder = 3
    end
  end
  object DBGrid_pilotos: TDBGrid
    Left = 0
    Top = 0
    Width = 1439
    Height = 400
    Align = alClient
    DataSource = DataSource_pilotos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object DataSource_pilotos: TDataSource
    DataSet = DataModule1.FDTable_pilotos
    OnStateChange = DataSource_pilotosStateChange
    Left = 576
    Top = 512
  end
end
