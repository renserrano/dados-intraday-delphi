unit untFuncoes;

interface

uses SysUtils;

function fEncodarData(const strData: string): TDateTime;

implementation

function fEncodarData(const strData: string): TDateTime;
  var
    Ano, Mes, Dia : Word;
begin
  Ano := StrToInt(Copy(strData, 1, 4));
  Mes := StrToInt(Copy(strData, 6, 2));
  Dia := StrToInt(Copy(strData, 9, 2));
  Result := EncodeDate(Ano, Mes, Dia);
end;

end.
