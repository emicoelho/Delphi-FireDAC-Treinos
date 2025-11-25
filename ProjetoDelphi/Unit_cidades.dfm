object frm_cidades: Tfrm_cidades
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 718
  ClientWidth = 571
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Position = poDesktopCenter
  TextHeight = 14
  object Panel_cidades: TPanel
    Left = 0
    Top = 440
    Width = 571
    Height = 278
    Align = alBottom
    Caption = 'Panel_cidades'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 432
    ExplicitWidth = 569
    object lb_id: TLabel
      Left = 8
      Top = 13
      Width = 107
      Height = 14
      Caption = 'C'#243'digo da Cidade'
      FocusControl = edt_id
    end
    object lb_nome: TLabel
      Left = 8
      Top = 56
      Width = 98
      Height = 14
      Caption = 'Nome da Cidade'
      FocusControl = edt_nome
    end
    object lb_uf: TLabel
      Left = 8
      Top = 96
      Width = 14
      Height = 14
      Caption = 'UF'
      FocusControl = edt_uf
    end
    object edt_id: TDBEdit
      Left = 8
      Top = 33
      Width = 49
      Height = 22
      DataField = 'id'
      DataSource = DataSource_cidades
      ReadOnly = True
      TabOrder = 0
    end
    object edt_nome: TDBEdit
      Left = 8
      Top = 75
      Width = 262
      Height = 22
      DataField = 'nome_cidade'
      DataSource = DataSource_cidades
      ReadOnly = True
      TabOrder = 1
    end
    object edt_uf: TDBEdit
      Left = 8
      Top = 112
      Width = 28
      Height = 22
      DataField = 'sigla_estado'
      DataSource = DataSource_cidades
      ReadOnly = True
      TabOrder = 2
    end
    object btn_primeiro: TButton
      Left = 8
      Top = 216
      Width = 105
      Height = 41
      Caption = '<<'
      TabOrder = 3
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TButton
      Left = 119
      Top = 216
      Width = 105
      Height = 41
      Caption = '<'
      TabOrder = 4
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TButton
      Left = 230
      Top = 216
      Width = 105
      Height = 41
      Caption = '>'
      TabOrder = 5
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TButton
      Left = 341
      Top = 216
      Width = 105
      Height = 41
      Caption = '>>'
      TabOrder = 6
      OnClick = btn_ultimoClick
    end
    object btn_sair: TButton
      Left = 452
      Top = 216
      Width = 105
      Height = 41
      Caption = 'Sair'
      TabOrder = 7
      OnClick = btn_sairClick
    end
    object btn_nova: TButton
      Left = 8
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Nova Cidade'
      TabOrder = 8
      OnClick = btn_novaClick
    end
    object btn_salvar: TButton
      Left = 119
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Salvar'
      Default = True
      TabOrder = 9
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TButton
      Left = 230
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 10
      OnClick = btn_cancelarClick
    end
    object btn_excluir: TButton
      Left = 341
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Excluir Cidade'
      TabOrder = 11
      OnClick = btn_excluirClick
    end
    object btn_att: TButton
      Left = 452
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Atualizar'
      TabOrder = 12
      OnClick = btn_attClick
    end
  end
  object DBGrid_cidades: TDBGrid
    Left = 0
    Top = 0
    Width = 571
    Height = 440
    Align = alClient
    DataSource = DataSource_cidades
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object DataSource_cidades: TDataSource
    DataSet = DataModule1.FDTable_cidades
    OnStateChange = DataSource_cidadesStateChange
    Left = 432
    Top = 496
  end
end
