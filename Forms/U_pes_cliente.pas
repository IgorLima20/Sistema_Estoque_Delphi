unit U_pes_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TFrm_Pesq_Cliente = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCPF: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisarClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Cliente: TFrm_Pesq_Cliente;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Cliente.bt_ImprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_Pesq_Cliente.Rel_Pesq_Padrao.LoadFromFile(caminho + 'REL_CLIENTES.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'REL_CLIENTES.fr3');
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relat�rio n�o encontrando!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_Pesq_Cliente.bt_PesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;  //fecha
  Q_pesq_padrao.SQL.Add('');   // limpa
  Q_pesq_padrao.Params.Clear;  // limpamos os parametros
  Q_pesq_padrao.SQL.Clear;     // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT * FROM CLIENTE');

  case cb_chave_pesquisa.ItemIndex of
    0:begin
      Q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE = :PID_CLIENTE');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := ED_Nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME');
      Q_pesq_padrao.ParamByName('PNOME').AsString :=  '%' + ED_Nome.Text + '%';
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO = :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := StrToDate(MK_Inicio.Text);
    end;

    3:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO  AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(MK_Inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := StrToDate(MK_Fim.Text);
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('ORDER BY ID_CLIENTE');
    end;
  end;
  Q_pesq_padrao.Open;
  // Mostra quantidade de registros
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);
  if Q_pesq_padrao.IsEmpty then
  begin
    Application.MessageBox('Registro n�o encontrado', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  end
  else
    abort;
end;

procedure TFrm_Pesq_Cliente.bt_TransferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_CLIENTE.AsInteger;
  end
  else
    Abort;
end;

procedure TFrm_Pesq_Cliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_Transferir.Click;
end;

end.
