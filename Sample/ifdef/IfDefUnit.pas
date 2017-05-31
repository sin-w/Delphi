unit IfDefUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private 宣言 }
  public
    { public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

// コンパイラ司令 C言語でいう #define TEST
{$DEFINE TEST}

procedure TForm1.Button1Click(Sender: TObject);
begin
// C言語でいう #ifdef
{$IFDEF TEST}
  ShowMessage('識別子TESTが定義されています。');
{$ENDIF}

// Debugビルド
{$IFDEF DEBUG}
  ShowMessage('DEBUGビルドです。');
{$ENDIF}


// Releaseビルド
{$IFDEF RELEASE}
  ShowMessage('RELEASEビルドです。');
{$ENDIF}

// C言語でいう #ifndef
{$IFNDEF TEST}
  ShowMessage('識別子TESTが定義されていません。');
{$ENDIF}
end;

end.
