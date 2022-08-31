unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient, FireDAC.Comp.UI, midaslib;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Q_Login: TFDQuery;
    Ds_Login: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    Q_LoginID_USUARIO: TIntegerField;
    Q_LoginNOME: TStringField;
    Q_LoginSENHA: TStringField;
    Q_LoginTIPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    VAR Usuario, tipo_Usuario: string;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
