object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 287
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 256
    Align = alClient
    TabOrder = 0
    object Label13: TLabel
      Left = 16
      Top = 611
      Width = 19
      Height = 13
      Caption = 'Pais'
    end
    object gbxIdentificacao: TGroupBox
      Left = 1
      Top = 1
      Width = 1054
      Height = 67
      Align = alTop
      Caption = ' Identifica'#231#227'o '
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = dbeNome
      end
      object Label2: TLabel
        Left = 792
        Top = 17
        Width = 52
        Height = 13
        Caption = 'Identidade'
        FocusControl = dbeIdentidade
      end
      object Label3: TLabel
        Left = 636
        Top = 17
        Width = 17
        Height = 13
        Caption = 'Cpf'
        FocusControl = dbeCpf
      end
      object dbeNome: TDBEdit
        Left = 9
        Top = 31
        Width = 621
        Height = 21
        DataField = 'Nome'
        DataSource = DM.dsrCliente
        TabOrder = 0
      end
      object dbeIdentidade: TDBEdit
        Left = 792
        Top = 31
        Width = 251
        Height = 21
        DataField = 'Identidade'
        DataSource = DM.dsrCliente
        TabOrder = 2
        OnKeyPress = dbeCpfKeyPress
      end
      object dbeCpf: TDBEdit
        Left = 636
        Top = 31
        Width = 150
        Height = 21
        DataField = 'Cpf'
        DataSource = DM.dsrCliente
        TabOrder = 1
        OnKeyPress = dbeCpfKeyPress
      end
    end
    object gbxContato: TGroupBox
      Left = 1
      Top = 68
      Width = 1054
      Height = 67
      Align = alTop
      Caption = ' Contato '
      TabOrder = 1
      object Label4: TLabel
        Left = 9
        Top = 17
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = dbeTelefone
      end
      object Label5: TLabel
        Left = 160
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Email'
        FocusControl = dbeEmail
      end
      object dbeTelefone: TDBEdit
        Left = 9
        Top = 31
        Width = 145
        Height = 21
        DataField = 'Telefone'
        DataSource = DM.dsrCliente
        TabOrder = 0
        OnKeyPress = dbeCpfKeyPress
      end
      object dbeEmail: TDBEdit
        Left = 160
        Top = 31
        Width = 883
        Height = 21
        DataField = 'Email'
        DataSource = DM.dsrCliente
        TabOrder = 1
      end
    end
    object gbxEndereco: TGroupBox
      Left = 1
      Top = 135
      Width = 1054
      Height = 111
      Align = alTop
      Caption = ' Endere'#231'o '
      TabOrder = 2
      object Label6: TLabel
        Left = 9
        Top = 17
        Width = 19
        Height = 13
        Caption = 'Cep'
        FocusControl = dbeCep
      end
      object btnBuscaCep: TSpeedButton
        Left = 135
        Top = 31
        Width = 24
        Height = 22
        Hint = 'Clique aqui para pesquisar os dados do CEP informado'
        Caption = '...'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = btnBuscaCepClick
      end
      object Label7: TLabel
        Left = 160
        Top = 17
        Width = 55
        Height = 13
        Caption = 'Logradouro'
        FocusControl = dbeLogradouro
      end
      object Label8: TLabel
        Left = 636
        Top = 17
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = dbeNumero
      end
      object Label9: TLabel
        Left = 714
        Top = 16
        Width = 65
        Height = 13
        Caption = 'Complemento'
        FocusControl = dbeComplemento
      end
      object Label10: TLabel
        Left = 9
        Top = 63
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = dbeBairro
      end
      object Label11: TLabel
        Left = 217
        Top = 63
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = dbeCidade
      end
      object Label12: TLabel
        Left = 636
        Top = 63
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label14: TLabel
        Left = 714
        Top = 63
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = dbePais
      end
      object dbeCep: TDBEdit
        Left = 9
        Top = 31
        Width = 125
        Height = 21
        DataField = 'Cep'
        DataSource = DM.dsrCliente
        TabOrder = 0
        OnExit = dbeCepExit
        OnKeyPress = dbeCepKeyPress
      end
      object dbeLogradouro: TDBEdit
        Left = 160
        Top = 31
        Width = 470
        Height = 21
        DataField = 'Logradouro'
        DataSource = DM.dsrCliente
        TabOrder = 1
      end
      object dbeNumero: TDBEdit
        Left = 636
        Top = 31
        Width = 72
        Height = 21
        DataField = 'Numero'
        DataSource = DM.dsrCliente
        TabOrder = 2
        OnKeyPress = dbeCpfKeyPress
      end
      object dbeComplemento: TDBEdit
        Left = 714
        Top = 31
        Width = 329
        Height = 21
        DataField = 'Complemento'
        DataSource = DM.dsrCliente
        TabOrder = 3
      end
      object dbeBairro: TDBEdit
        Left = 9
        Top = 78
        Width = 202
        Height = 21
        DataField = 'Bairro'
        DataSource = DM.dsrCliente
        TabOrder = 4
      end
      object dbeCidade: TDBEdit
        Left = 217
        Top = 78
        Width = 413
        Height = 21
        DataField = 'Cidade'
        DataSource = DM.dsrCliente
        TabOrder = 5
      end
      object cboEstado: TDBComboBox
        Left = 636
        Top = 78
        Width = 72
        Height = 21
        Style = csDropDownList
        DataField = 'Estado'
        DataSource = DM.dsrCliente
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 6
      end
      object dbePais: TDBEdit
        Left = 714
        Top = 78
        Width = 329
        Height = 21
        DataField = 'Pais'
        DataSource = DM.dsrCliente
        TabOrder = 7
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 256
    Width = 1056
    Height = 31
    Align = alBottom
    TabOrder = 1
    object btnGravar: TBitBtn
      Left = 10
      Top = 2
      Width = 75
      Height = 26
      Hint = 'Clique aqui para cadastrar o cliente'
      Caption = '&Gravar'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        7F2B287F2B28A18283A18283A18283A18283A18283A18283A182837A1C1C7F2B
        28FF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8EBEBEBEBEBEBEBEBEBEBE
        BEBEBEBEBEBEBEBEBEBEBE8686868E8E8EFF00FFFF00FFFF00FFFF00FF7F2B28
        CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
        2D7F2B28FF00FFFF00FFFF00FF8E8E8EB8B8B8AEAEAEECECEC838383838383F0
        F0F0EEEEEEE8E8E8DADADA7E7E7E9A9A9A8E8E8EFF00FFFF00FFFF00FF7F2B28
        C24A4BB14444E2D9D9791617791617D9D8DAD9DEE1D3D9DCC1BDC1761111982D
        2D7F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4ACACACF0F0F0838383838383ED
        EDEDF0F0F0ECECECDCDCDC7F7F7F9999998E8E8EFF00FFFF00FFFF00FF7F2B28
        C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
        2C7F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4ABABABF2F2F2838383838383EA
        EAEAEFEFEFEEEEEEE0E0E07C7C7C9898988E8E8EFF00FFFF00FFFF00FF7F2B28
        C24A4AB04141EADEDEE7DDDDDDD4D5D7D3D5D5D7D9D7D8DACAC2C57E17179E31
        317F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4AAAAAAF4F4F4F3F3F3ECECECEA
        EAEAECECECECECECE1E1E18585859D9D9D8E8E8EFF00FFFF00FFFF00FF7F2B28
        BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
        4A7F2B28FF00FFFF00FFFF00FF8E8E8EB1B1B1AFAFAFB2B2B2B8B8B8B6B6B6B1
        B1B1AFAFAFB5B5B5B2B2B2ACACACB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        A33B39B1605DC68684CB918FCC9190CC908FCB8988C98988CB9391CC9696BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EA2A2A2B6B6B6CBCBCBD0D0D0D1D1D1D0
        D0D0CECECECDCDCDD1D1D1D3D3D3B3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFDCDCDCDCDCDCDCDCDCDC
        DCDCDCDCDCDCDCDCDCDCDCFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFDCDCDCDCDCDCDCDCDCDC
        DCDCDCDCDCDCDCDCDCDCDCFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FFFF00FF
        7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
        28FF00FFFF00FFFF00FFFF00FFFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 90
      Top = 2
      Width = 75
      Height = 26
      Hint = 'Clique aqui para cancelar o cadastro'
      Caption = '&Cancelar'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF08AD1808841008841008AD1831C66BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A5A5A46
        46464646465A5A5A7B7B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF08841008841008841008841008841008841008AD18FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46464646464646
        46464646464646464646465A5A5AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31C66B08AD1808841008AD
        18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF7B7B7B5A5A5A4646465A5A5AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF088410FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD180884
        1031C66BFF00FFFF00FFFF00FFFF00FFFF00FF464646FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF5A5A5A4646467B7B7BFF00FFFF00FFFF00FFFF00FF
        08841008AD18088410FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31C66B0884
        1008AD18FF00FFFF00FFFF00FFFF00FF4646465A5A5A464646FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7B7B7B4646465A5A5AFF00FFFF00FFFF00FF088410
        31C66B08AD1808AD18088410FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0884
        10088410FF00FFFF00FFFF00FF4646467B7B7B5A5A5A5A5A5A464646FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF464646464646FF00FFFF00FF088410088410
        08841008AD18088410088410088410FF00FFFF00FFFF00FFFF00FFFF00FF0884
        10088410FF00FFFF00FF4646464646464646465A5A5A464646464646464646FF
        00FFFF00FFFF00FFFF00FFFF00FF464646464646FF00FFFF00FFFF00FFFF00FF
        08AD1808841031C66BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31C66B0884
        1008AD18FF00FFFF00FFFF00FFFF00FF5A5A5A4646467B7B7BFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7B7B7B4646465A5A5AFF00FFFF00FFFF00FFFF00FF
        31C66B08841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD180884
        1031C66BFF00FFFF00FFFF00FFFF00FF7B7B7B4646465A5A5AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF5A5A5A4646467B7B7BFF00FFFF00FFFF00FFFF00FF
        FF00FF08AD1808841008AD1831C66BFF00FFFF00FF31C66B08AD1808841008AD
        18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A5A5A4646465A5A5A7B7B7BFF
        00FFFF00FF7B7B7B5A5A5A4646465A5A5AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF08AD1808841008841008841008841008841008841008AD18FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A5A5A46464646464646
        46464646464646464646465A5A5AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF31C66B08AD1808841008841008AD1831C66BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B7B7B5A5A5A46
        46464646465A5A5A7B7B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
end
