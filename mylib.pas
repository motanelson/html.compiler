
unit mylib;

{$mode objfpc}{$H+}

interface

function Soma(A, B: Integer): Integer;
function Quadrado(A: Integer): Integer;

implementation

function Soma(A, B: Integer): Integer;
begin
  Result := A + B;
end;

function Quadrado(A: Integer): Integer;
begin
  Result := A * A;
end;

end.

