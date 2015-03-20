unit U_Dmodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, Datasnap.Provider, Datasnap.DBClient;

type
  TD_modulo = class(TDataModule)
    conexao: TFDConnection;
    mysql_link: TFDPhysMySQLDriverLink;
    waitCursor: TFDGUIxWaitCursor;
    SQL_Personagem: TFDQuery;
    DS_Personagem: TDataSource;
    TB_Personagem: TFDTable;
    TB_PersonagemidPersonagem: TFDAutoIncField;
    TB_Personagemnome: TStringField;
    TB_Personagemforca: TLongWordField;
    TB_Personagemhabilidade: TLongWordField;
    TB_Personagemresistencia: TLongWordField;
    TB_Personagemarmadura: TLongWordField;
    TB_Personagempoderdefogo: TLongWordField;
    TB_Personagempontosdevida: TLongWordField;
    TB_Personagempontosdemagia: TLongWordField;
    TB_Personagemexperiencia: TLongWordField;
    TB_PersonagempontosJogador: TLongWordField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  D_modulo: TD_modulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_fichaPersonagem;

{$R *.dfm}

end.
