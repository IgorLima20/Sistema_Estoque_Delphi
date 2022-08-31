unit U_pesq_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrm_Pesq_Venda = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoID_VENDA: TIntegerField;
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoUSUARIO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoVALOR: TFMTBCDField;
    lb_valor_venda: TLabel;
    Label3: TLabel;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
    procedure SomaVenda();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Venda: TFrm_Pesq_Venda;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Venda.bt_ImprimirClick(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_Pesq_Venda.Rel_Pesq_Padrao.LoadFromFile(caminho + 'REL_VENDA.fr3') then
  begin
    Rel_Pesq_Padrao.clear;
    Rel_Pesq_Padrao.LoadFromFile(extractfilepath(application.ExeName) +  'REL_VENDA.fr3');
    Rel_Pesq_Padrao.prepareReport(true);
    Rel_Pesq_Padrao.ShowPreparedReport;
  end
  else
    Application.MessageBox('Relat�rio n�o encontrando!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_Pesq_Venda.bt_PesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;  //fecha
  Q_pesq_padrao.SQL.Add('');   // limpa
  Q_pesq_padrao.Params.Clear;  // limpamos os parametros
  Q_pesq_padrao.SQL.Clear;     // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_VENDA,'
	  +  'A.ID_CLIENTE,'
    +  'B.NOME,'
	  +  'A.ID_FORMA_PGTO,'
    +  'C.DESCRICAO,'
    +  'A.USUARIO,'
	  +  'A.VALOR,'
	  +  'A.CADASTRO '
	  +  'FROM VENDA A '
	  +  'INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE '
    +  'INNER JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO ');

  case cb_chave_pesquisa.ItemIndex of
    0:begin
      Q_pesq_padrao.SQL.Add('WHERE A.ID_VENDA = :PID_VENDA');
      Q_pesq_padrao.ParamByName('PID_VENDA').AsString := ED_Nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO');
      Q_pesq_padrao.ParamByName('PUSUARIO').AsString :=  '%' + ED_Nome.Text + '%';
    end;

     2:begin
       Q_pesq_padrao.SQL.Add('WHERE A.ID_CLIENTE = :PID_CLIENTE');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := ED_Nome.Text;
    end;
     3:begin
      Q_pesq_padrao.SQL.Add('WHERE A.ID_FORMA_PGTO = :PID_FORMA_PGTO');
      Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').AsString := ED_Nome.Text;
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO = :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := StrToDate(MK_Inicio.Text);
    end;

    5:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO  AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(MK_Inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := StrToDate(MK_Fim.Text);
    end;

    6:begin
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
    end;
  end;
  Q_pesq_padrao.Open;
  // Mostra quantidade de registros
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);

  // chama a procedure SomaVenda
  SomaVenda;

  if Q_pesq_padrao.IsEmpty then
  begin
    Application.MessageBox('Registro n�o encontrado', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  end
  else
    abort;
end;

procedure TFrm_Pesq_Venda.bt_TransferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_VENDA.AsInteger;
  end
  else
    Abort;
end;

procedure TFrm_Pesq_Venda.cb_chave_pesquisaChange(Sender: TObject);
begin
  inherited;
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      ED_Nome.Visible := True;
      ED_Nome.SetFocus;
      MK_Inicio.Visible := False;
      MK_Fim.Visible := False;
      lb_texto.Visible := true;
      lb_inicio.Visible := false;
      lb_texto.Caption := 'Digite o C�digo:';
      ED_Nome.Clear;
    end;
    1:begin
      ED_Nome.Visible := True;
      ED_Nome.SetFocus;
      MK_Inicio.Visible := False;
      MK_Fim.Visible := False;
      lb_texto.Visible := true;
      lb_inicio.Visible := false;
      lb_texto.Caption := 'Digite o Nome do Usu�rio:';
      ED_Nome.Clear;
    end;
    2:begin
      ED_Nome.Visible := True;
      ED_Nome.SetFocus;
      MK_Inicio.Visible := False;
      MK_Fim.Visible := False;
      lb_texto.Visible := true;
      lb_inicio.Visible := false;
      lb_texto.Caption := 'Digite o C�digo do Cliente:';
      ED_Nome.Clear;
    end;
    3:begin
      ED_Nome.Visible := True;
      ED_Nome.SetFocus;
      MK_Inicio.Visible := False;
      MK_Fim.Visible := False;
      lb_texto.Visible := true;
      lb_inicio.Visible := false;
      lb_texto.Caption := 'Digite o C�digo da Forma de Pgto:';
      ED_Nome.Clear;
    end;
    4:begin
      ED_Nome.Visible := false;
      MK_Inicio.Visible := true;
      MK_Inicio.SetFocus;
      MK_Fim.Visible := False;
      lb_texto.Visible := false;
      lb_inicio.Visible := true;
      lb_inicio.Caption := 'Digite a data:';
      ED_Nome.Clear;
    end;
    5:begin
      ED_Nome.Visible := false;
      MK_Inicio.Visible := true;
      MK_Inicio.SetFocus;
      MK_Fim.Visible := true;
      lb_texto.Visible := false;
      lb_inicio.Visible := true;
      lb_inicio.Caption := 'Digite o Per�odo:';
      ED_Nome.Clear;
    end;
     6:begin
      ED_Nome.Visible := false;
      MK_Inicio.Visible := false;
      MK_Fim.Visible := false;
      lb_texto.Visible := false;
      lb_inicio.Visible := false;
    end;
  end;
end;

procedure TFrm_Pesq_Venda.SomaVenda;
var soma: Currency;
begin
  soma := 0;
  //soma a quantidade de compras
  Q_pesq_padrao.First;
  while not Q_pesq_padrao.Eof do
  begin
    soma := soma + Q_pesq_padraoVALOR.AsCurrency;
    Q_pesq_padrao.Next;
  end;
  lb_valor_venda.Caption := FormatFloat('R$ ##,##0.00', (soma));
end;

end.
