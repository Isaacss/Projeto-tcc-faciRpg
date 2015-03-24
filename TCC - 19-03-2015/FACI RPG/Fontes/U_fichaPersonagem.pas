unit U_fichaPersonagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, ShellAPI,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.jpeg;

type
  TF_Personagem = class(TForm)
    STB_Personagem: TStatusBar;
    Page_Personagem: TPageControl;
    tab_consultar: TTabSheet;
    DBG_Personagem: TDBGrid;
    txtBuscaPersonagem: TEdit;
    tab_cadastrar: TTabSheet;
    bgPersonagem: TImage;
    Label1: TLabel;
    RG_buscaPersonagem: TRadioGroup;
    Label2: TLabel;
    DS_CadastrarPersonagem: TDataSource;
    Label3: TLabel;
    txtNomePersonagem: TDBEdit;
    Label4: TLabel;
    txtForcaPersonagem: TDBEdit;
    Label5: TLabel;
    txtHabilidadePersonagem: TDBEdit;
    Label6: TLabel;
    txtResistenciaPersonagem: TDBEdit;
    Label7: TLabel;
    txtArmaduraPersonagem: TDBEdit;
    Label8: TLabel;
    txtPoderFogoPersonagem: TDBEdit;
    Label9: TLabel;
    txtVidaPersonagem: TDBEdit;
    Label10: TLabel;
    txtPontosMagiaPersonagem: TDBEdit;
    Label11: TLabel;
    txtExpPersonagem: TDBEdit;
    Label12: TLabel;
    txtPontosJogador: TDBEdit;
    img_fotoPersonagem: TImage;
    btnCalcularPontosPersonagem: TSpeedButton;
    ACM_CadastroPersonagem: TActionManager;
    ac_insert: TDataSetInsert;
    ac_delete: TDataSetDelete;
    ac_edit: TDataSetEdit;
    ac_post: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btnNovoPersonagem: TSpeedButton;
    btnEditarPersonagem: TSpeedButton;
    btnOkPersonagem: TSpeedButton;
    btnCancelarPersonagem: TSpeedButton;
    btnDeletePersonagem: TSpeedButton;
    btnEditarPersonagemSelecionado: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtBuscaPersonagemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarPersonagemSelecionadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Personagem: TF_Personagem;

implementation

{$R *.dfm}

uses U_inicial, U_menuFastPlay, U_Dmodule;

procedure TF_Personagem.btnEditarPersonagemSelecionadoClick(Sender: TObject);
begin
  // Selecionar Personagem Para Editar
  D_modulo.TB_Personagem.Locate('idPersonagem',
    D_modulo.SQL_PersonagemidPersonagem.Value, []);
    Page_Personagem.ActivePage:= tab_cadastrar;

end;

procedure TF_Personagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  D_modulo.SQL_Personagem.Close;
  F_Personagem := nil;

end;

procedure TF_Personagem.FormCreate(Sender: TObject);
begin
  // ativa a tb produtos
  D_modulo.TB_Personagem.Active := true;
  // seto para iniciar na tela de consulta.
  Page_Personagem.ActivePage := tab_consultar;

end;

procedure TF_Personagem.txtBuscaPersonagemChange(Sender: TObject);
begin
  if RG_buscaPersonagem.ItemIndex = -1 then
  begin
    showMessage('Escolha o tipo de Busca!');
    Exit;

  end;

  with D_modulo.SQL_Personagem do
  begin;
    Close;
    sql.clear;
    sql.Add('select * from fichaPersonagem');

    // vefifico se a busca e por id ou nome
    case RG_buscaPersonagem.ItemIndex of
      0:
        sql.Add('where idPersonagem like :busca');
      1:
        sql.Add('where nome like :busca');

    end;

    ParamByName('busca').Value := txtBuscaPersonagem.text + '%';
    Open;

    if RecordCount = 0 then
      showMessage('Produto N�o encontrado');

  end;

end;

end.
