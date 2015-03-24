unit U_menuFastPlay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TF_menuFastPlay = class(TForm)
    sbtnCriarPerson: TSpeedButton;
    pnlSelecao: TPanel;
    imgLogoSelecao: TImage;
    Label1: TLabel;
    sbtnMestre: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnCriarPersonClick(Sender: TObject);
    procedure sbtnMestreClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_menuFastPlay: TF_menuFastPlay;

implementation

{$R *.dfm}

uses U_Dmodule, U_inicial, U_fichaPersonagem,U_mestre;

procedure TF_menuFastPlay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_menuFastPlay := nil;
end;

procedure TF_menuFastPlay.sbtnCriarPersonClick(Sender: TObject);
begin
  if F_Personagem = nil then
  begin
    F_Personagem := TF_Personagem.Create(self);
    F_Personagem.ShowModal;
    F_menuFastPlay.Hide;
    F_menuFastPlay.close;
  end;
end;

procedure TF_menuFastPlay.sbtnMestreClick(Sender: TObject);
begin
    F_Mestre:=TF_Mestre.Create(self);
    F_Mestre.ShowModal;
    F_menuFastplay.Hide;
    F_menuFastplay.Close;


    end;

end.
