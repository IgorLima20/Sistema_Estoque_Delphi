unit U_pesq_compra_forma_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxChart;

type
  TFrm_pesq_compra_forrma_pgto = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoQTDE_COMPRA: TLargeintField;
    Q_pesq_padraoVALOR_COMPRA: TFMTBCDField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    lb_valor_compra: TLabel;
    frxChartObject1: TfrxChartObject;
    procedure FormShow(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure SomaCompra();
    procedure bt_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_compra_forrma_pgto: TFrm_pesq_compra_forrma_pgto;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_compra_forrma_pgto.bt_ImprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_compra_forrma_pgto.Rel_Pesq_Padrao.LoadFromFile(caminho + 'Rel_compra_forma_pgto.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'Rel_compra_forma_pgto.fr3');
    Rel_Pesq_Padrao.Variables['Data_ini'] := QuotedStr(MK_Inicio.Text);
    Rel_Pesq_Padrao.Variables['Data_fim'] := QuotedStr(MK_Fim.Text);
    Rel_Pesq_Padrao.Variables['Qtde'] := QuotedStr(lb_resultado.Caption);
    Rel_Pesq_Padrao.Variables['Valor_Compra'] := QuotedStr(lb_valor_compra.Caption);
    Rel_Pesq_Padrao.Variables['nome'] := QuotedStr(dm.Usuario);
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relatório não encontrando!', 'Atenção', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_pesq_compra_forrma_pgto.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  Q_pesq_padrao.Close;  //fecha
  Q_pesq_padrao.SQL.Add('');   // limpa
  Q_pesq_padrao.Params.Clear;  // limpamos os parametros
  Q_pesq_padrao.SQL.Clear;     // limpa o sql
  Q_pesq_padrao.SQL.Add('select count(A.id_compra)as qtde_compra,'
  + 'sum(A.valor)as valor_compra,'
  + 'A.id_forma_pgto,b.descricao '
  + 'from compra A ');
  Q_pesq_padrao.SQL.Add('inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO ');
  Q_pesq_padrao.SQL.Add('where A.cadastro between :PDATA_INI and :PDATA_FIM ');
  Q_pesq_padrao.ParamByName('PDATA_INI').AsDate := StrToDate(MK_Inicio.Text);
  Q_pesq_padrao.ParamByName('PDATA_FIM').AsDate := StrToDate(MK_Fim.Text);
  Q_pesq_padrao.SQL.Add('group by A.id_forma_pgto,b.DESCRICAO ');
  Q_pesq_padrao.SQL.Add('order by A.id_forma_pgto, b.DESCRICAO ');
  Q_pesq_padrao.Open;

  // Mostra quantidade de registros
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);

  // chama a procedure SomaCompra
  SomaCompra;

  if Q_pesq_padrao.IsEmpty then
  begin
    Application.MessageBox('Nenhum registro foi encontrado!!', 'Atenção', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrm_pesq_compra_forrma_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Q_pesq_padrao.Close;
end;

procedure TFrm_pesq_compra_forrma_pgto.FormShow(Sender: TObject);
begin
  inherited;
  MK_Inicio.SetFocus;
end;

procedure TFrm_pesq_compra_forrma_pgto.SomaCompra;
var soma: Currency;
begin
  soma := 0;
  //soma a quantidade de compras
  Q_pesq_padrao.First;
  while not Q_pesq_padrao.Eof do
  begin
    soma := soma + Q_pesq_padraoVALOR_COMPRA.AsCurrency;
    Q_pesq_padrao.Next;
  end;
  lb_valor_compra.Caption := FormatFloat('R$ ##,##0.00', (soma));
end;
end.
