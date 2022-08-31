unit U_pesq_parcela_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_parcela_pagar = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoID_COMPRA: TIntegerField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoID_SEQUENCIA: TIntegerField;
    Q_pesq_padraoVALOR_PARCELA: TFMTBCDField;
    Q_pesq_padraoDT_VENCIMENTO: TDateField;
    Q_pesq_padraoDT_PAGAMENTO: TDateField;
    Q_pesq_padraoATRASO: TIntegerField;
    Q_pesq_padraoJUROS: TFMTBCDField;
    Q_pesq_padraoVL_JUROS: TFMTBCDField;
    Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField;
    Q_pesq_padraoSTATUS: TStringField;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    data:TDate;
    sequencia: Integer;
  end;

var
  Frm_pesq_parcela_pagar: TFrm_pesq_parcela_pagar;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_parcela_pagar.bt_ImprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_parcela_pagar.Rel_Pesq_Padrao.LoadFromFile(caminho + 'Rel_Lista_Pagar.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'Rel_Lista_Pagar.fr3');
    Rel_Pesq_Padrao.Variables['Nome'] := QuotedStr(DM.Usuario);
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
    Frm_pesq_parcela_pagar.Close;
  end
  else
    Application.MessageBox('Relat�rio n�o encontrando!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_pesq_parcela_pagar.bt_PesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;  //fecha
  Q_pesq_padrao.SQL.Add('');   // limpa
  Q_pesq_padrao.Params.Clear;  // limpamos os parametros
  Q_pesq_padrao.SQL.Clear;     // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_COMPRA, A.ID_FORNECEDOR, B.NOME, B.CNPJ, '
  +'C.ID_SEQUENCIA, C.VALOR_PARCELA, C.DT_VENCIMENTO, C.DT_PAGAMENTO, '
  +'C.ATRASO, C.JUROS, C.VL_JUROS, C.TOTAL_PAGAR,C.STATUS '
  +'FROM COMPRA A ');
  Q_pesq_padrao.SQL.Add('INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');
  Q_pesq_padrao.SQL.Add('INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA = A.ID_COMPRA');


  case cb_chave_pesquisa.ItemIndex of
    0:begin
      Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR = :PID_FORNECEDOR');
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := ED_Nome.Text;
      //Q_pesq_padrao.SQL.Add(' AND C.STATUS = ''EM ABERTO''');
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME');
      Q_pesq_padrao.ParamByName('PNOME').AsString :=  '%' + ED_Nome.Text + '%';
      //Q_pesq_padrao.SQL.Add(' AND C.STATUS = ''EM ABERTO''');
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE C.CNPJ = :PCNPJ');
      Q_pesq_padrao.ParamByName('PCNPJ').AsString := ED_Nome.Text;
      //Q_pesq_padrao.SQL.Add(' AND C.STATUS = ''EM ABERTO''');
    end;

  end;
  Q_pesq_padrao.Open;
  // Mostra quantidade de registros
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);
  if Q_pesq_padrao.IsEmpty then
  begin
    Application.MessageBox('Nenhum registro encontrado', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  end
  else
    abort;
end;

procedure TFrm_pesq_parcela_pagar.bt_TransferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_COMPRA.AsInteger;
    data := Q_pesq_padraoDT_VENCIMENTO.AsDateTime;
    sequencia := Q_pesq_padraoID_SEQUENCIA.AsInteger;
  end
  else
    Abort;
end;

procedure TFrm_pesq_parcela_pagar.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
  0:begin
    lb_texto.Caption := 'Digite o Nome do Fornecedor';
    ED_Nome.SetFocus;
  end;

  1:begin
    lb_texto.Caption := 'Digite o c�digo do Fornecedor';
    ED_Nome.SetFocus;
  end;

  2:begin
    lb_texto.Caption := 'Digite o CNPJ do Fornecedor';
    ED_Nome.SetFocus;
  end;

  end;
end;

procedure TFrm_pesq_parcela_pagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //se tiver sido recebido
  if (Q_pesq_padraoDT_PAGAMENTO.Value <> 0) and
     (Q_pesq_padraoSTATUS.AsString = 'PAGO') then
  begin
    DBGrid1.Canvas.Brush.Color := clGreen;
    DBGrid1.Canvas.Font.Color := clWhite;
  end
  else
  //se estiver a vencer
  if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime > Date) and
  (Q_pesq_padraoSTATUS.AsString = 'EM ABERTO') then
  begin
    DBGrid1.Canvas.Brush.Color := clYellow;
    DBGrid1.Canvas.Font.Color := clBlue;
  end
  else
  //se estiver vencido
  if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime <= Date ) and
  (Q_pesq_padraoDT_PAGAMENTO.IsNull) then
  begin
    DBGrid1.Canvas.Brush.Color := clRed;
    DBGrid1.Canvas.Font.Color := clWhite;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
