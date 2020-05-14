object DATALAR: TDATALAR
  OldCreateOrder = False
  Height = 436
  Width = 452
  object Kaynak: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=DIALIZ;Data Source=cmptr'
    ConnectionTimeout = 20
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 33
    Top = 17
  end
  object Hedef: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 33
    Top = 63
  end
  object ADO_SQL: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 40
    Top = 184
  end
  object ADO_SQL1: TADOQuery
    Connection = Kaynak
    Parameters = <>
    Left = 96
    Top = 16
  end
  object ADO_SQL2: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 160
    Top = 184
  end
  object ADO_SQL3: TADOQuery
    Connection = Hedef
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select name from dbo.sysobjects where xtype = '#39'U'#39' and category =' +
        ' 0 and name <> '#39'Users'#39' order by name')
    Left = 32
    Top = 120
  end
  object Q_LogADO: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 264
    Top = 144
  end
  object ADO_SQL4: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 280
    Top = 8
  end
  object ADO_SQL5: TADOQuery
    Connection = Kaynak
    Parameters = <>
    Left = 232
    Top = 8
  end
  object TempConnection: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=12345;Persist Security Info=True;Us' +
      'er ID=mavinokta;Initial Catalog=mavi;Data Source=213.142.141.121'
    ConnectionTimeout = 5
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 377
    Top = 209
  end
  object ADOConnection1: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Guneysu53Rize;Persist Security Info' +
      '=True;User ID=mavinokta;Initial Catalog=mavi;Data Source=37.230.' +
      '108.244'
    ConnectionTimeout = 10
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 377
    Top = 159
  end
  object Master: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;Use' +
      'r ID=nokta;Initial Catalog=mavi;Data Source=91.151.85.12'
    ConnectionTimeout = 10
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 377
    Top = 55
  end
  object ADOConnection2: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;Use' +
      'r ID=Nokta;Initial Catalog=DYLZ_UZMAN;Data Source=213.159.30.6;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=CMPTR2;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    ConnectionTimeout = 10
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 377
    Top = 103
  end
end
