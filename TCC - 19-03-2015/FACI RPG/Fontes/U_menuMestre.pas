unit U_menuMestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  TF_menuMestre = class(TForm)
    sbtnFichaPerson: TSpeedButton;
    sbtnTestes: TSpeedButton;
    sbtnMapas: TSpeedButton;
    sbtnAventuras: TSpeedButton;
    sbtnNPCS: TSpeedButton;
    sbtnLojas: TSpeedButton;
    sbtnCombate: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_menuMestre: TF_menuMestre;

implementation

{$R *.dfm}

end.
