unit uCLog;

interface

uses
  System.SysUtils,
  Androidapi.Log;

type
  TLOG = class
  public
    class procedure I(msg: string);
    class procedure E(msg: string);
    class procedure W(msg: string);
    class procedure F(msg: string);
  end;

implementation

{ TLOG }

class procedure TLOG.E(msg: string);
var
  M: TMarshaller;
begin
  LOGE(M.AsUtf8(msg).ToPointer);
end;

class procedure TLOG.F(msg: string);
var
  M: TMarshaller;
begin
  LOGF(M.AsUtf8(msg).ToPointer);
end;

class procedure TLOG.I(msg: string);
var
  M: TMarshaller;
begin
  LOGI(M.AsUtf8(msg).ToPointer);
end;

class procedure TLOG.W(msg: string);
var
  M: TMarshaller;
begin
  LOGW(M.AsUtf8(msg).ToPointer);
end;

end.
