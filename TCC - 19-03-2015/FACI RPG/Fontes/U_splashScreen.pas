unit U_splashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TF_splashScreen = class(TForm)
    img_splashScreen: TImage;
    lblSplashScreen: TLabel;
    pgb_splashScreen: TProgressBar;
    lbl_Version: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_splashScreen: TF_splashScreen;

implementation

{$R *.dfm}

uses U_Dmodule, U_inicial;




end.
