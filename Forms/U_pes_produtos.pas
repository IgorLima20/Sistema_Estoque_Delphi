unit U_pes_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frxBarcode, Vcl.DBCtrls;

type
  TFrm_Pesq_Produto = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoID_PRODUTO: TIntegerField;
    Q_pesq_padraoPRODUTO_DESCRICAO: TStringField;
    Q_pesq_padraoVL_CUSTO: TFMTBCDField;
    Q_pesq_padraoVL_VENDA: TFMTBCDField;
    Q_pesq_padraoESTOQUE: TFMTBCDField;
    Q_pesq_padraoESTOQUE_MIN: TFMTBCDField;
    Q_pesq_padraoUNIDADE: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    bt_etiqueta: TBitBtn;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure bt_PesquisarClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
    procedure bt_etiquetaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Produto: TFrm_Pesq_Produto;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Produto.bt_etiquetaClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_Pesq_Produto.Rel_Pesq_Padrao.LoadFromFile(caminho + 'ETIQUETA.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'ETIQUETA.fr3');
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relatório não encontrando!', 'Atenção', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_Pesq_Produto.bt_ImprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_Pesq_Produto.Rel_Pesq_Padrao.LoadFromFile(caminho + 'REL_PRODUTOS.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'REL_PRODUTOS.fr3');
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relatório não encontrando!', 'Atenção', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_Pesq_Produto.bt_PesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;  //fecha
  Q_pesq_padrao.SQL.Add('');   // limpa
  Q_pesq_padrao.Params.Clear;  // limpamos os parametros
  Q_pesq_padrao.SQL.Clear;     // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_PRODUTO,'
	  +  'A.PRODUTO_DESCRICAO,'
	  +  'A.VL_CUSTO,'
    +  'A.VL_VENDA,'
	  +  'A.ESTOQUE,'
	  +  'A.ESTOQUE_MIN,'
	  +  'A.UNIDADE,'
	  +  'A.CADASTRO,'
	  +  'A.ID_FORNECEDOR,'
	  +  'B.NOME '
	  +  'FROM PRODUTO A '
	  +  'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');

  case cb_chave_pesquisa.ItemIndex of
    0:begin
      Q_pesq_padrao.SQL.Add('WHERE A.ID_PRODUTO = :PID_PRODUTO');
      Q_pesq_padrao.ParamByName('PID_PRODUTO').AsString := ED_Nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO');
      Q_pesq_padrao.ParamByName('PDESCRICAO').AsString :=  '%' + ED_Nome.Text + '%';
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO = :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := StrToDate(MK_Inicio.Text);
    end;

    3:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO  AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(MK_Inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := StrToDate(MK_Fim.Text);
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

     5:begin
       Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR = :PID_FORNECEDOR');
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := ED_Nome.Text;
    end;
  end;
  Q_pesq_padrao.Open;
  // Mostra quantidade de registros
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);
  if Q_pesq_padrao.IsEmpty then
  begin
    Application.MessageBox('Registro não encontrado', 'Atenção', MB_OK+MB_ICONINFORMATION);
  end
  else
    abort;
end;

procedure TFrm_Pesq_Produto.bt_TransferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_PRODUTO.AsInteger;
  end
  else
    Abort;
end;

procedure TFrm_Pesq_Produto.DBGrid1DblClick(Sender: TObject);
begin
  bt_Transferir.Click;
end;

end.
