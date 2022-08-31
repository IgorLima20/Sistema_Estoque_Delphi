unit U_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Cliente = class(TFrm_Padrao)
    Q_padraoID_CLIENTE: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCPF: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_Nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DB_Cadastro: TDBEdit;
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cliente: TFrm_Cliente;

implementation

{$R *.dfm}

uses U_pes_cliente;

procedure TFrm_Cliente.bt_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Nome.SetFocus;
end;

procedure TFrm_Cliente.bt_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Cliente := TFrm_Pesq_Cliente.Create(Self);
  Frm_Pesq_Cliente.ShowModal;
  try
    if Frm_Pesq_Cliente.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_CLIENTE', Frm_Pesq_Cliente.codigo, []);
    end;
  finally
    Frm_Pesq_Cliente.Free;
    Frm_Pesq_Cliente := nil;
  end;
end;

end.
