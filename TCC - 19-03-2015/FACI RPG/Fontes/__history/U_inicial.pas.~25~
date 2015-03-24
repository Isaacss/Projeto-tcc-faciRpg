unit U_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TF_Inicial = class(TForm)
    STB_inicio: TStatusBar;
    PNL_personagem: TPanel;
    imgLogo_Inicial: TImage;
    imgFastPlay: TImage;
    imgAlpha: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgFastPlayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Inicial: TF_Inicial;

implementation

{$R *.dfm}

uses U_Dmodule, U_menuFastPlay;

procedure TF_Inicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_Inicial := nil;

end;

procedure TF_Inicial.imgFastPlayClick(Sender: TObject);
begin
if  F_menuFastPlay = nil then
    begin
    F_menuFastPlay := TF_menuFastPlay.Create(self);
    F_menuFastPlay.Show;
    end
end;

end.
