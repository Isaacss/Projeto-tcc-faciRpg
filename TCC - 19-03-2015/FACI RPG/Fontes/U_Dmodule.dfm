object D_modulo: TD_modulo
  OldCreateOrder = False
  Height = 262
  Width = 381
  object conexao: TFDConnection
    Params.Strings = (
      'Database=facirpg'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object mysql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorLib = 
      'C:\Users\davidSimoes\Documents\GitHub\Projeto-tcc-faciRpg\TCC - ' +
      '19-03-2015\FACI RPG\libmySQL.dll'
    Left = 120
    Top = 16
  end
  object waitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 16
  end
  object SQL_Personagem: TFDQuery
    Active = True
    DetailFields = 
      'armadura;experiencia;forca;habilidade;idPersonagem;nome;poder de' +
      ' fogo;pontos de magia;pontos de vida;pontosJogador;resistencia'
    Connection = conexao
    SQL.Strings = (
      'select * from fichaPersonagem')
    Left = 40
    Top = 192
    object SQL_PersonagemidPersonagem: TFDAutoIncField
      FieldName = 'idPersonagem'
      Origin = 'idPersonagem'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_Personagemnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object SQL_Personagemforca: TLongWordField
      FieldName = 'forca'
      Origin = 'forca'
      Required = True
    end
    object SQL_Personagemhabilidade: TLongWordField
      FieldName = 'habilidade'
      Origin = 'habilidade'
      Required = True
    end
    object SQL_Personagemresistencia: TLongWordField
      FieldName = 'resistencia'
      Origin = 'resistencia'
      Required = True
    end
    object SQL_Personagemarmadura: TLongWordField
      FieldName = 'armadura'
      Origin = 'armadura'
      Required = True
    end
    object SQL_Personagempoderdefogo: TLongWordField
      FieldName = 'poder de fogo'
      Origin = '`poder de fogo`'
      Required = True
    end
    object SQL_Personagempontosdevida: TLongWordField
      FieldName = 'pontos de vida'
      Origin = '`pontos de vida`'
      Required = True
    end
    object SQL_Personagempontosdemagia: TLongWordField
      FieldName = 'pontos de magia'
      Origin = '`pontos de magia`'
      Required = True
    end
    object SQL_Personagemexperiencia: TLongWordField
      FieldName = 'experiencia'
      Origin = 'experiencia'
      Required = True
    end
    object SQL_PersonagempontosJogador: TLongWordField
      FieldName = 'pontosJogador'
      Origin = 'pontosJogador'
      Required = True
    end
  end
  object DS_Personagem: TDataSource
    DataSet = SQL_Personagem
    Left = 168
    Top = 192
  end
  object TB_Personagem: TFDTable
    Active = True
    IndexFieldNames = 
      'idPersonagem;armadura;experiencia;forca;habilidade;nome;poder de' +
      ' fogo;pontos de magia;pontos de vida;pontosJogador;resistencia'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'facirpg.fichapersonagem'
    TableName = 'facirpg.fichapersonagem'
    Left = 264
    Top = 192
    object TB_PersonagemidPersonagem: TFDAutoIncField
      FieldName = 'idPersonagem'
      Origin = 'idPersonagem'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_Personagemnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TB_Personagemforca: TLongWordField
      FieldName = 'forca'
      Origin = 'forca'
      Required = True
    end
    object TB_Personagemhabilidade: TLongWordField
      FieldName = 'habilidade'
      Origin = 'habilidade'
      Required = True
    end
    object TB_Personagemresistencia: TLongWordField
      FieldName = 'resistencia'
      Origin = 'resistencia'
      Required = True
    end
    object TB_Personagemarmadura: TLongWordField
      FieldName = 'armadura'
      Origin = 'armadura'
      Required = True
    end
    object TB_Personagempoderdefogo: TLongWordField
      FieldName = 'poder de fogo'
      Origin = '`poder de fogo`'
      Required = True
    end
    object TB_Personagempontosdevida: TLongWordField
      FieldName = 'pontos de vida'
      Origin = '`pontos de vida`'
      Required = True
    end
    object TB_Personagempontosdemagia: TLongWordField
      FieldName = 'pontos de magia'
      Origin = '`pontos de magia`'
      Required = True
    end
    object TB_Personagemexperiencia: TLongWordField
      FieldName = 'experiencia'
      Origin = 'experiencia'
      Required = True
    end
    object TB_PersonagempontosJogador: TLongWordField
      FieldName = 'pontosJogador'
      Origin = 'pontosJogador'
      Required = True
    end
  end
end
