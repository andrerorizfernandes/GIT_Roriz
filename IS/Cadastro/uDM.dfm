object DM: TDM
  OldCreateOrder = False
  Height = 318
  Width = 448
  object dsrCliente: TDataSource
    DataSet = cdsCliente
    Left = 48
    Top = 32
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 16
    object cdsClienteNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object cdsClienteIdentidade: TStringField
      FieldName = 'Identidade'
    end
    object cdsClienteCpf: TStringField
      FieldName = 'Cpf'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsClienteTelefone: TStringField
      FieldName = 'Telefone'
      EditMask = '(99)99999-9999;0;_'
      Size = 11
    end
    object cdsClienteEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object cdsClienteCep: TStringField
      FieldName = 'Cep'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object cdsClienteLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 100
    end
    object cdsClienteNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object cdsClienteComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object cdsClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object cdsClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object cdsClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object cdsClientePais: TStringField
      FieldName = 'Pais'
      Size = 30
    end
  end
end
