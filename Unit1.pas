unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    ColorDialog1: TColorDialog;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  color2,x,y,x1,x2,y1,y2:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
x:=StrToInt(Edit1.Text);
y:=StrToInt(Edit2.Text);
Image1.Canvas.Pixels[x,y]:=clRed;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
x1:=StrToInt(Edit3.Text);
y1:=StrToInt(Edit4.Text);
x2:=StrToInt(Edit5.Text);
y2:=StrToInt(Edit6.Text);
Image1.Canvas.MoveTo(x1,y1);
Image1.Canvas.LineTo(x2,y2);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if(ColorDialog1.Execute())then
  begin
    Image1.Canvas.Pen.Color:=ColorDialog1.Color;
    color2:=ColorDialog1.Color;
    end;
  end;

end.
