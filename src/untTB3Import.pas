unit untTB3Import;

interface

uses FireDAC.Comp.Client, Classes;

type
  TB3Import = class
  private
    FFDConexao : TFDConnection;
  public
    procedure pGravarTradeIntraDay(const stlColunas: TStringList);
    constructor Create(AFDConexao: TFDConnection); reintroduce;
  end;

implementation

uses Data.DB, SysUtils, untFuncoes;

{ TB3Import }

constructor TB3Import.Create(AFDConexao: TFDConnection);
begin
  FFDConexao := AFDConexao;
end;

procedure TB3Import.pGravarTradeIntraDay(const stlColunas: TStringList);
  var
    qryDados : TFDQuery;
begin
  qryDados := TFDQuery.Create(nil);
  try
    qryDados.Connection := FFDConexao;
    qryDados.SQL.Text := 'SELECT * FROM trade_intraday WHERE FALSE';
    qryDados.Open;

    qryDados.Insert;
    qryDados.FieldByName('RptDt').AsDateTime := fEncodarData(stlColunas[0]);
    qryDados.FieldByName('TckrSymb').AsString := stlColunas[1];
    qryDados.FieldByName('UpdActn').AsString := stlColunas[2];
    qryDados.FieldByName('GrssTradAmt').AsFloat := StrToFloat(stlColunas[3]);
    qryDados.FieldByName('TradQty').AsFloat := StrToFloat(stlColunas[4]);
    qryDados.FieldByName('NtryTm').AsString := stlColunas[5];
    qryDados.FieldByName('TradId').AsString := stlColunas[6];
    qryDados.FieldByName('TradgSsnId').AsString := stlColunas[7];
    qryDados.FieldByName('TradDt').AsDateTime := fEncodarData(stlColunas[8]);
    qryDados.Post;
  finally
    FreeAndNil(qryDados);
  end;
end;

end.
