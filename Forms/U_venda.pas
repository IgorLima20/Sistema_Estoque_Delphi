unit U_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimento_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, frxClass, frxDBSet;

type
  TFrm_venda = class(TFrm_Padrao_Movimento)
    Q_padraoID_VENDA: TIntegerField;
    Q_padraoID_CLIENTE: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_Id_cliente: TDBEdit;
    Label3: TLabel;
    DB_Cadastro: TDBEdit;
    Label4: TLabel;
    DB_Usuario: TDBEdit;
    Label5: TLabel;
    Q_cliente: TFDQuery;
    Q_forma_pgto: TFDQuery;
    ds_cliente: TDataSource;
    ds_forma_pgto: TDataSource;
    Q_padraoCLIENTE: TStringField;
    Label7: TLabel;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoPARCELA: TIntegerField;
    Q_padraoDINHEIRO: TFMTBCDField;
    Q_padraoTROCO: TFMTBCDField;
    Q_padrao_itemID_SEQUENCIA: TIntegerField;
    Q_padrao_itemID_VENDA: TIntegerField;
    Q_padrao_itemID_PRODUTO: TIntegerField;
    Q_padrao_itemQTDE: TFMTBCDField;
    Q_padrao_itemDESCONTO: TFMTBCDField;
    Q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    DB_total_item: TDBEdit;
    Label13: TLabel;
    DB_desconto: TDBEdit;
    Label12: TLabel;
    DB_vl_custo: TDBEdit;
    Label11: TLabel;
    DB_qtde: TDBEdit;
    Label10: TLabel;
    DB_id_produto: TDBEdit;
    Label14: TLabel;
    Q_padrao_itemVL_VENDA: TFMTBCDField;
    Q_produto: TFDQuery;
    ds_produto: TDataSource;
    Q_produtoID_PRODUTO: TIntegerField;
    Q_produtoPRODUTO_DESCRICAO: TStringField;
    Q_produtoESTOQUE: TFMTBCDField;
    Q_produtoESTOQUE_MIN: TFMTBCDField;
    Q_produtoVL_VENDA: TFMTBCDField;
    Q_padrao_itemSUBTOTAL: TAggregateField;
    DB_Sub: TDBEdit;
    Q_conta_receber: TFDQuery;
    ds_conta_receber: TDataSource;
    Q_conta_receberID_SEQUENCIA: TIntegerField;
    Q_conta_receberID_VENDA: TIntegerField;
    Q_conta_receberVALOR_PARCELA: TFMTBCDField;
    Q_conta_receberDT_VENCIMENTO: TDateField;
    Q_conta_receberDT_PAGAMENTO: TDateField;
    Q_conta_receberJUROS: TFMTBCDField;
    Q_conta_receberVL_JUROS: TFMTBCDField;
    Q_conta_receberTOTAL_PAGAR: TFMTBCDField;
    Q_conta_receberSTATUS: TStringField;
    Q_conta_receberATRASO: TIntegerField;
    bt_busca_cliente: TBitBtn;
    Q_clienteID_CLIENTE: TIntegerField;
    Q_clienteNOME: TStringField;
    DBEdit2: TDBEdit;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_empresa: TFDQuery;
    ds_empresa: TDataSource;
    Q_empresaID_EMPRESA: TIntegerField;
    Q_empresaRAZAO_SOCIAL: TStringField;
    Q_empresaN_FANTASIA: TStringField;
    Q_empresaENDERECO: TStringField;
    Q_empresaNUMERO: TIntegerField;
    Q_empresaBAIRRO: TStringField;
    Q_empresaCIDADE: TStringField;
    Q_empresaUF: TStringField;
    Q_empresaCEP: TStringField;
    Q_empresaTELEFONE: TStringField;
    Q_empresaCNPJ: TStringField;
    Q_empresaEMAIL: TStringField;
    Q_empresaLOGO: TBlobField;
    Q_empresaCADASTRO: TDateField;
    Rel_recibo_venda: TfrxReport;
    frx_padrao: TfrxDBDataset;
    frx_padrao_item: TfrxDBDataset;
    frx_empresa: TfrxDBDataset;
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_itemClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure DB_id_produtoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_DeletarClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure DB_descontoClick(Sender: TObject);
    procedure DB_descontoExit(Sender: TObject);
    procedure DB_qtdeClick(Sender: TObject);
    procedure DB_qtdeExit(Sender: TObject);
    procedure Q_padrao_itemQTDEValidate(Sender: TField);
    procedure bt_busca_clienteClick(Sender: TObject);
    procedure bt_busca_pgtoClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
    procedure bt_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_venda: TFrm_venda;

implementation

{$R *.dfm}

uses U_DM, U_pesq_venda, U_pes_cliente, U_Recibemento_Venda;

procedure TFrm_venda.bt_busca_clienteClick(Sender: TObject);
begin
  if Q_padrao.State in [dsEdit, dsInsert] then
  begin
    Frm_Pesq_Cliente := TFrm_Pesq_Cliente.Create(Self);
    Frm_Pesq_Cliente.ShowModal;
    try
      if Frm_Pesq_Cliente.codigo > 0 then
      begin
        Q_padraoID_CLIENTE.AsInteger := Frm_Pesq_Cliente.codigo;
      end;
    finally
      Frm_Pesq_Cliente.Free;
      Frm_Pesq_Cliente := nil;
    end;
  end;
end;

procedure TFrm_venda.bt_busca_pgtoClick(Sender: TObject);
begin
  // forma de pagamento
  if Q_padrao.State in [dsEdit, dsInsert] then
  begin
    Frm_Pesq_Cliente := TFrm_Pesq_Cliente.Create(Self);
    Frm_Pesq_Cliente.ShowModal;
    try
      if Frm_Pesq_Cliente.codigo > 0 then
      begin
        Q_padraoCLIENTE.AsInteger := Frm_Pesq_Cliente.codigo;
      end;
    finally
      Frm_Pesq_Cliente.Free;
      Frm_Pesq_Cliente := nil;
    end;
  end;
end;

procedure TFrm_venda.bt_DeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir esse registro ?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
  begin
    //exclui as parcelas
    Q_conta_receber.First;
    while not Q_conta_receber.eof do
    begin
      Q_conta_receber.Delete;
      Q_conta_receber.Next;
    end;

    //exclui os itens da venda
    Q_padrao_item.First;
    while Q_padrao_item.RecordCount > 0 do
    begin
      if Q_produto.Locate('ID_PRODUTO', Q_padrao_itemID_PRODUTO.AsInteger, []) then
      begin
        Q_produto.Edit;
        Q_produto.FieldByName('ESTOQUE').AsFloat :=
        Q_produto.FieldByName('ESTOQUE').AsFloat + Q_padrao_itemQTDE.AsFloat;
        Q_produto.Refresh;
        Q_padrao_item.Delete;
        Q_padrao_item.Next;
      end;
    end;
    // exclui o cabeçalho
    inherited;
  end
  else
    Abort;
end;

procedure TFrm_venda.bt_excluirClick(Sender: TObject);
begin
  //Exclui item do detalhes de compra
  if MessageDlg('Deseja excluir esse item ?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
  begin
    if Q_produto.Locate('ID_PRODUTO', Q_padrao_itemID_PRODUTO.AsInteger, []) then
    begin
      Q_padrao_item.Delete;
      Application.MessageBox('Item excluido com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
    Abort;
end;

procedure TFrm_venda.bt_GravarClick(Sender: TObject);
begin
  inherited;
  bt_item.Click;
  bt_ok.Enabled := True;
  bt_excluir.Enabled := True;
end;

procedure TFrm_venda.bt_imprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_venda.Rel_recibo_venda.LoadFromFile(caminho + 'REL_RECIBO_VENDA.fr3') then
  begin
    Rel_recibo_venda.clear;
    Rel_recibo_venda.LoadFromFile(extractfilepath(application.ExeName) +  'REL_RECIBO_VENDA.fr3');
    Rel_recibo_venda.prepareReport(true);
    Rel_recibo_venda.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relatório não encontrando!', 'Atenção', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_venda.bt_itemClick(Sender: TObject);
var proximo : integer;
begin
  Q_padrao_item.Open;
  Q_produto.Open;
  Q_padrao_item.Last;
  proximo := Q_padrao_itemID_SEQUENCIA.AsInteger + 1;
  Q_padrao_item.Append;
  Q_padrao_itemID_SEQUENCIA.AsInteger := proximo;
  DB_id_produto.SetFocus;
end;

procedure TFrm_venda.bt_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Usuario.Text := DM.Usuario;
  DB_Sub.Text := IntToStr(0);
  DB_Id_cliente.SetFocus;
end;

procedure TFrm_venda.bt_okClick(Sender: TObject);
begin
  Q_padrao.Edit;
  Q_padraoVALOR.AsFloat := Q_padrao_item.AggFields.FieldByName('SUBTOTAL').Value;
  Q_padrao.Refresh;

  Q_padrao_item.First;
  while not Q_padrao_item.Eof do
  begin
    if Q_produto.Locate('ID_PRODUTO', Q_padrao_itemID_PRODUTO.AsInteger, []) then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat := Q_produto.FieldByName('ESTOQUE').AsFloat -
      Q_padrao_itemQTDE.AsFloat;
      Q_padrao_item.Next;
    end;
  end;
  Q_produto.Refresh;
  Application.MessageBox('Dado baixa no estoque com sucesso!!', 'Atenção', MB_OK + MB_ICONINFORMATION);
  bt_ok.Enabled := false;
  bt_excluir.Enabled := false;

  Frm_Recibemento_Venda := TFrm_Recibemento_Venda.Create(Self);
  Frm_Recibemento_Venda.ShowModal;
  try

  finally
    Frm_Recibemento_Venda.Free;
    Frm_Recibemento_Venda := nil;
  end;
end;

procedure TFrm_venda.bt_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Venda := TFrm_Pesq_Venda.Create(Self);
  Frm_Pesq_Venda.ShowModal;
  try
    if Frm_Pesq_Venda.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_VENDA', Frm_Pesq_Venda.codigo, []);
    end;
  finally
    Frm_Pesq_Venda.Free;
    Frm_Pesq_Venda := nil;
  end;
end;

procedure TFrm_venda.bt_SairClick(Sender: TObject);
begin
  if DM.Q_LoginTIPO.AsString='OPERADOR CAIXA' then
  begin
    if Application.MessageBox('Produto não encontrado!', 'Atenção', MB_OK + MB_ICONWARNING) = mrOk then
    begin
      Application.Terminate;
    end
    else
      Abort;
  end;
  inherited;
end;

procedure TFrm_venda.DB_id_produtoExit(Sender: TObject);
begin
  if Q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if Q_produto.Locate('ID_PRODUTO', Q_padrao_item.FieldByName('ID_PRODUTO').AsInteger, []) then
    begin
      Q_padrao_itemQTDE.AsFloat := 1;
      Q_padrao_itemDESCONTO.AsFloat := 0;
      //pega o valor do produto:
      Q_padrao_itemVL_VENDA.AsFloat := Q_produto.FieldByName('VL_VENDA').AsFloat;
      //soma quantidade:
      Q_padrao_itemTOTAL_ITEM.AsFloat := (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) - (Q_padrao_itemDESCONTO.AsFloat);
      Q_padrao_item.Post;
      bt_item.SetFocus;
    end
    else
    Application.MessageBox('Produto não encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    Q_padrao_item.Cancel;
    bt_item.SetFocus;
end;

procedure TFrm_venda.DB_qtdeClick(Sender: TObject);
begin
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.DB_qtdeExit(Sender: TObject);
begin
  if Q_padrao_itemQTDE.AsFloat > Q_produtoESTOQUE.AsFloat then
  begin
    Application.MessageBox('O valor digitado é maior que o estoque!', 'Atenção', MB_OK+MB_ICONINFORMATION);
    DB_qtde.SetFocus;
    Abort;
  end
  else
  begin
    //soma quantidade:
    Q_padrao_itemTOTAL_ITEM.AsFloat := (Q_padrao_itemQTDE.AsFloat *
    Q_padrao_itemVL_VENDA.AsFloat) - (Q_padrao_itemDESCONTO.AsFloat);
    Q_padrao_item.Refresh;
  end;
end;

procedure TFrm_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Q_cliente.Close;
  Q_forma_pgto.Close;
  Q_produto.Close;
end;

procedure TFrm_venda.Q_padrao_itemQTDEValidate(Sender: TField);
begin
  if Q_produtoESTOQUE.AsFloat = 0 then
  begin
    Application.MessageBox('Produto em falta!', 'Atenção', MB_OK+MB_ICONINFORMATION);
    bt_item.SetFocus;
    Q_padrao_item.Delete;
    Abort;
  end
  else
  if Q_produtoESTOQUE.AsFloat < Q_produtoESTOQUE_MIN.AsFloat then
  begin
    Application.MessageBox('Produto abaixo do estoque minímo!', 'Atenção', MB_OK+MB_ICONINFORMATION);
    bt_item.SetFocus;
  end;
end;

procedure TFrm_venda.DB_descontoClick(Sender: TObject);
begin
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.DB_descontoExit(Sender: TObject);
begin
  //soma desconto:
  Q_padrao_itemTOTAL_ITEM.AsFloat := (Q_padrao_itemQTDE.AsFloat *
  Q_padrao_itemVL_VENDA.AsFloat) - (Q_padrao_itemDESCONTO.AsFloat);
  Q_padrao_item.Refresh;
end;

end.
