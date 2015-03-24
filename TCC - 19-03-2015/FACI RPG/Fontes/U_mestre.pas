unit U_mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  TF_Mestre = class(TForm)
    sbtnJogoSalvo: TSpeedButton;
    sbtnNovoJogo: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Mestre: TF_Mestre;

implementation

{$R *.dfm}

uses U_menuMestre;

end.
