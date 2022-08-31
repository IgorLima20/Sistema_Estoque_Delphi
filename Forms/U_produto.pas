unit U_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Produto = class(TFrm_Padrao)
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    DB_Id_Produto: TDBEdit;
    Label2: TLabel;
    DB_Cadastro: TDBEdit;
    Label3: TLabel;
    DB_Descricao: TDBEdit;
    Label4: TLabel;
    DB_Vl_Custo: TDBEdit;
    Label5: TLabel;
    DB_Estoque: TDBEdit;
    Label6: TLabel;
    DB_Estoque_Min: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DB_Id_Fornecedor: TDBEdit;
    Label9: TLabel;
    DB_Nome_Fornecedor: TDBEdit;
    Q_padraoVL_VENDA: TFMTBCDField;
    Label10: TLabel;
    DB_Vl_Venda: TDBEdit;
    DBC_Unidade: TDBComboBox;
    Q_padraoID_PRODUTO: TIntegerField;
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses U_pes_produtos;

procedure TFrm_Produto.bt_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Id_Produto.SetFocus;
end;

procedure TFrm_Produto.bt_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Produto := TFrm_Pesq_Produto.Create(Self);
  Frm_Pesq_Produto.ShowModal;
  try
    if Frm_Pesq_Produto.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_PRODUTO', Frm_Pesq_Produto.codigo, []);
    end;
  finally
    Frm_Pesq_Produto.Free;
    Frm_Pesq_Produto := nil;
  end;
end;

end.
