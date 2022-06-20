object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 571
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 571
    Align = alClient
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object PanelEntradaSaida: TPanel
      Left = 338
      Top = 73
      Width = 354
      Height = 496
      Color = clTeal
      ParentBackground = False
      TabOrder = 3
      Visible = False
      DesignSize = (
        354
        496)
      object EditDescricao: TEdit
        Left = 45
        Top = 98
        Width = 264
        Height = 31
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        TextHint = 'Descri'#231#227'o'
      end
      object EditValor: TEdit
        Left = 106
        Top = 173
        Width = 145
        Height = 31
        Alignment = taRightJustify
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        TextHint = '0,00'
      end
      object PanelTituloEntradaSaida: TPanel
        Left = 1
        Top = 425
        Width = 352
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Entrada/Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PanelButtonCadastro: TPanel
        Left = 88
        Top = 258
        Width = 185
        Height = 50
        Cursor = crHandPoint
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = PanelButtonCadastroClick
        OnMouseEnter = PanelButtonCadastroMouseEnter
        OnMouseLeave = PanelButtonCadastroMouseLeave
      end
    end
    object PanelHistóricoEntradaSaida: TPanel
      Left = 338
      Top = 73
      Width = 354
      Height = 496
      Color = clTeal
      ParentBackground = False
      TabOrder = 4
      Visible = False
      DesignSize = (
        354
        496)
      object PanelTituloHistoricoEntradaSaida: TPanel
        Left = 1
        Top = 425
        Width = 352
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Entradas e Sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBGridHistoricoEntradasSaidas: TDBGrid
        Left = 1
        Top = 42
        Width = 352
        Height = 264
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSourceHistoricoEntradaSaida
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCRICAO_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 130
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ENTRADA_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SAIDA_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Sa'#237'da'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_HORA_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data e Hora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAIXA_ITEM_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C. Caixa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Sa'#237'da'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object PanelButtonAlterar: TPanel
        Left = 24
        Top = 324
        Width = 153
        Height = 45
        Caption = 'Alterar'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      object RadioGroupFiltroHistoricoEntradaSaida: TRadioGroup
        Left = 208
        Top = 312
        Width = 121
        Height = 107
        Cursor = crHandPoint
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Geral'
          'Entradas'
          'Sa'#237'das')
        ParentFont = False
        TabOrder = 3
        OnClick = RadioGroupFiltroHistoricoEntradaSaidaClick
      end
      object PanelTituloDBEntradaSaida: TPanel
        Left = 1
        Top = 1
        Width = 352
        Height = 41
        Align = alTop
        Caption = 'Entrada/Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object PanelHistoricoCaixa: TPanel
      Left = 338
      Top = 73
      Width = 354
      Height = 496
      Color = clTeal
      ParentBackground = False
      TabOrder = 5
      Visible = False
      object PanelTituloHistoricoCaixa: TPanel
        Left = 1
        Top = 425
        Width = 352
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Caixas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBGridHistoricoCaixa: TDBGrid
        Left = 1
        Top = 42
        Width = 352
        Height = 264
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSourceHistoricoCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_HORA_ABERTURA_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Abertura'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_HORA_FECHAMENTO_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fechamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SALDO_INICIAL_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Inicial'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SALDO_FINAL_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Final'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SITUACAO_CAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Situa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object PanelTituloDBHistoricoCaixa: TPanel
        Left = 1
        Top = 1
        Width = 352
        Height = 41
        Align = alTop
        Caption = 'Caixas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object PanelFiltroCaixa: TPanel
        Left = 9
        Top = 314
        Width = 200
        Height = 119
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 198
          Height = 23
          Align = alTop
          Caption = 'Filtro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 50
        end
        object ComboBoxMesHistoricoCaixa: TComboBox
          Left = 8
          Top = 30
          Width = 89
          Height = 26
          TabOrder = 0
          TextHint = 'M'#234's'
          OnChange = ComboBoxMesHistoricoCaixaChange
          OnKeyPress = ComboBoxMesHistoricoCaixaKeyPress
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object ComboBoxAnoHistoricoCaixa: TComboBox
          Left = 103
          Top = 30
          Width = 89
          Height = 26
          TabOrder = 1
          TextHint = 'Ano'
          OnChange = ComboBoxAnoHistoricoCaixaChange
          OnKeyPress = ComboBoxAnoHistoricoCaixaKeyPress
          Items.Strings = (
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029'
            '2030'
            '2031'
            '2032'
            '2033'
            '2034'
            '2035'
            '2036'
            '2037'
            '2038'
            '2039'
            '2040'
            '2041'
            '2042'
            '2043'
            '2044'
            '2045'
            '2046'
            '2047'
            '2048'
            '2049'
            '2050')
        end
      end
    end
    object PanelSaldo: TPanel
      Left = 338
      Top = 73
      Width = 355
      Height = 497
      Align = alRight
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -45
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object PanelTItuloSaldo: TPanel
        Left = 1
        Top = 426
        Width = 353
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Saldo atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object PanelMenuLateral: TPanel
      Left = 1
      Top = 73
      Width = 280
      Height = 497
      Align = alLeft
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 1
      object PanelButtonEntrada: TPanel
        Left = 0
        Top = 193
        Width = 280
        Height = 76
        Cursor = crHandPoint
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = PanelButtonEntradaClick
        OnMouseEnter = PanelButtonEntradaMouseEnter
        OnMouseLeave = PanelButtonEntradaMouseLeave
      end
      object PanelButtonSaida: TPanel
        Left = 0
        Top = 269
        Width = 280
        Height = 76
        Cursor = crHandPoint
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = PanelButtonSaidaClick
        OnMouseEnter = PanelButtonSaidaMouseEnter
        OnMouseLeave = PanelButtonSaidaMouseLeave
      end
      object PanelButtonHistoricoEntradaSaida: TPanel
        Left = 0
        Top = 345
        Width = 280
        Height = 76
        Cursor = crHandPoint
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Hist'#243'rico de entradas e sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PanelButtonHistoricoEntradaSaidaClick
        OnMouseEnter = PanelButtonHistoricoEntradaSaidaMouseEnter
        OnMouseLeave = PanelButtonHistoricoEntradaSaidaMouseLeave
      end
      object PanelButtonGrafico: TPanel
        Left = 0
        Top = 421
        Width = 280
        Height = 76
        Cursor = crHandPoint
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Gr'#225'fico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnMouseEnter = PanelButtonGraficoMouseEnter
        OnMouseLeave = PanelButtonGraficoMouseLeave
      end
      object PanelButtonMenu: TPanel
        Left = 0
        Top = 0
        Width = 280
        Height = 76
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Menu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = PanelButtonMenuClick
        OnMouseEnter = PanelButtonMenuMouseEnter
        OnMouseLeave = PanelButtonMenuMouseLeave
      end
    end
    object PanelMenuSuperior: TPanel
      Left = 1
      Top = 1
      Width = 692
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object PanelButtonAbrirFecharCaixa: TPanel
        Left = 292
        Top = 0
        Width = 200
        Height = 72
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Abrir/Fechar Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = PanelButtonAbrirFecharCaixaClick
        OnMouseEnter = PanelButtonAbrirFecharCaixaMouseEnter
        OnMouseLeave = PanelButtonAbrirFecharCaixaMouseLeave
      end
      object PanelButtonHistoricoCaixa: TPanel
        Left = 492
        Top = 0
        Width = 200
        Height = 72
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Hist'#243'rico de Caixas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = PanelButtonHistoricoCaixaClick
        OnMouseEnter = PanelButtonHistoricoCaixaMouseEnter
        OnMouseLeave = PanelButtonHistoricoCaixaMouseLeave
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=FLUXO_CAIXA1;Data Source=LAPTOP-FCR3HP9' +
      '8\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 8
  end
  object ADOStoredProcItemCaixa: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_item_caixa;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DESCRICAO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end
      item
        Name = '@VALOR'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end
      item
        Name = '@ENTRADA'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@SAIDA'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@CAIXA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 208
    Top = 112
  end
  object ADOStoredProcAbrirCaixa: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_caixa;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATA_HORA_FECHAMENTO'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@SALDO_INICIAL'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end
      item
        Name = '@SALDO_FINAL'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end>
    Left = 208
    Top = 176
  end
  object ADOQueryVerificacaoCaixa: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_CAIXA where SITUACAO_CAIXA = 1')
    Left = 336
    Top = 288
    object ADOQueryVerificacaoCaixaCODIGO_CAIXA: TAutoIncField
      FieldName = 'CODIGO_CAIXA'
      ReadOnly = True
    end
    object ADOQueryVerificacaoCaixaDATA_HORA_ABERTURA_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_ABERTURA_CAIXA'
    end
    object ADOQueryVerificacaoCaixaDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_FECHAMENTO_CAIXA'
    end
    object ADOQueryVerificacaoCaixaSALDO_INICIAL_CAIXA: TBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 19
    end
    object ADOQueryVerificacaoCaixaSALDO_FINAL_CAIXA: TBCDField
      FieldName = 'SALDO_FINAL_CAIXA'
      Precision = 19
    end
    object ADOQueryVerificacaoCaixaSITUACAO_CAIXA: TBooleanField
      FieldName = 'SITUACAO_CAIXA'
    end
  end
  object ADOStoredProcFecharCaixa: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_fechamento_caixa;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CODIGO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 296
    Top = 184
  end
  object ADOQueryCaixaAtual: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'select*from TB_CAIXA where CODIGO_CAIXA = :'#39'CODIGO'#39)
    Left = 224
    Top = 288
    object ADOQueryCaixaAtualCODIGO_CAIXA: TAutoIncField
      FieldName = 'CODIGO_CAIXA'
      ReadOnly = True
    end
    object ADOQueryCaixaAtualDATA_HORA_ABERTURA_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_ABERTURA_CAIXA'
    end
    object ADOQueryCaixaAtualDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_FECHAMENTO_CAIXA'
    end
    object ADOQueryCaixaAtualSALDO_INICIAL_CAIXA: TBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 19
    end
    object ADOQueryCaixaAtualSALDO_FINAL_CAIXA: TBCDField
      FieldName = 'SALDO_FINAL_CAIXA'
      Precision = 19
    end
    object ADOQueryCaixaAtualSITUACAO_CAIXA: TBooleanField
      FieldName = 'SITUACAO_CAIXA'
    end
  end
  object ADOQueryHistoricoEntradaSaida: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*, case ENTRADA_ITEM_CAIXA when 1 then '#39'+'#39' end [Entrada],'
      'case SAIDA_ITEM_CAIXA when 1 then '#39'-'#39' end [Sa'#237'da]'
      'from TB_ITEM_CAIXA')
    Left = 408
    Top = 456
    object ADOQueryHistoricoEntradaSaidaCODIGO_ITEM_CAIXA: TAutoIncField
      FieldName = 'CODIGO_ITEM_CAIXA'
      ReadOnly = True
    end
    object ADOQueryHistoricoEntradaSaidaDESCRICAO_ITEM_CAIXA: TStringField
      FieldName = 'DESCRICAO_ITEM_CAIXA'
      Size = 100
    end
    object ADOQueryHistoricoEntradaSaidaVALOR_ITEM_CAIXA: TBCDField
      FieldName = 'VALOR_ITEM_CAIXA'
      currency = True
      Precision = 19
    end
    object ADOQueryHistoricoEntradaSaidaENTRADA_ITEM_CAIXA: TBooleanField
      FieldName = 'ENTRADA_ITEM_CAIXA'
    end
    object ADOQueryHistoricoEntradaSaidaSAIDA_ITEM_CAIXA: TBooleanField
      FieldName = 'SAIDA_ITEM_CAIXA'
    end
    object ADOQueryHistoricoEntradaSaidaDATA_HORA_ITEM_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_ITEM_CAIXA'
    end
    object ADOQueryHistoricoEntradaSaidaCAIXA_ITEM_CAIXA: TIntegerField
      FieldName = 'CAIXA_ITEM_CAIXA'
    end
    object ADOQueryHistoricoEntradaSaidaEntrada: TStringField
      FieldName = 'Entrada'
      ReadOnly = True
      Size = 1
    end
    object ADOQueryHistoricoEntradaSaidaSaída: TStringField
      FieldName = 'Sa'#237'da'
      ReadOnly = True
      Size = 1
    end
  end
  object DataSourceHistoricoEntradaSaida: TDataSource
    DataSet = ADOQueryHistoricoEntradaSaida
    Left = 516
    Top = 443
  end
  object ADOQueryHistoricoCaixa: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*,'
      'case SITUACAO_CAIXA when 0 then '#39'Fechado'#39' when 1 then '#39'Aberto'#39
      'end [Situa'#231#227'o]'
      ''
      'from TB_CAIXA'
      '')
    Left = 384
    Top = 360
    object ADOQueryHistoricoCaixaCODIGO_CAIXA: TAutoIncField
      FieldName = 'CODIGO_CAIXA'
      ReadOnly = True
    end
    object ADOQueryHistoricoCaixaDATA_HORA_ABERTURA_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_ABERTURA_CAIXA'
    end
    object ADOQueryHistoricoCaixaDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField
      FieldName = 'DATA_HORA_FECHAMENTO_CAIXA'
    end
    object ADOQueryHistoricoCaixaSALDO_INICIAL_CAIXA: TBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 19
    end
    object ADOQueryHistoricoCaixaSALDO_FINAL_CAIXA: TBCDField
      FieldName = 'SALDO_FINAL_CAIXA'
      Precision = 19
    end
    object ADOQueryHistoricoCaixaSITUACAO_CAIXA: TBooleanField
      FieldName = 'SITUACAO_CAIXA'
    end
    object ADOQueryHistoricoCaixaSituação: TStringField
      FieldName = 'Situa'#231#227'o'
      ReadOnly = True
      Size = 7
    end
  end
  object DataSourceHistoricoCaixa: TDataSource
    DataSet = ADOQueryHistoricoCaixa
    Left = 492
    Top = 347
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 104
    Top = 88
  end
end
