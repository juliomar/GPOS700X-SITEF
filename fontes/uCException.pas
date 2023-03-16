unit uCException;

interface

uses
  System.Types,
  System.IOUtils,
  System.SysUtils,
  FMX.Types,
  FMX.Controls,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Objects,
  FMX.Forms,
  System.UITypes,
  System.Messaging,
  System.Generics.Collections,
  System.Analytics,
  FMX.ActnList;

type
  TException = class
  public
    class procedure TrataException(Sender: TObject; E: Exception);
  end;

implementation
class procedure TException.TrataException(Sender: TObject; E: Exception);
begin
end;

end.
