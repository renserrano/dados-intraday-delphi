object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 268
  Width = 402
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=dados_b3'
      'Password=******'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
end
