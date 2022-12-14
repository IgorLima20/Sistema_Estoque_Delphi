unit U_movimenta_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_movimenta_preco = class(TForm)
    rg_altera: TRadioGroup;
    ed_produto: TEdit;
    ed_porcentagem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnAcao: TBitBtn;
    q_produto: TFDQuery;
    ds_produto: TDataSource;
    DBGrid1: TDBGrid;
    q_produtoID_PRODUTO: TIntegerField;
    q_produtoPRODUTO_DESCRICAO: TStringField;
    q_produtoVL_CUSTO: TFMTBCDField;
    q_produtoVL_VENDA: TFMTBCDField;
    sp_aumento: TFDStoredProc;
    sp_aumento_todos: TFDStoredProc;
    sp_diminui: TFDStoredProc;
    sp_diminui_todos: TFDStoredProc;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnAcaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_movimenta_preco: TFrm_movimenta_preco;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_movimenta_preco.btnAcaoClick(Sender: TObject);
begin
  case rg_altera.ItemIndex of
  0: begin
    sp_aumento.Close;
    sp_aumento.Prepare;
    sp_aumento.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
    sp_aumento.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_porcentagem.Text);
    sp_aumento.ExecProc;
  end;

  1: begin
    sp_aumento_todos.Close;
    sp_aumento_todos.Prepare;
    sp_aumento_todos.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_porcentagem.Text);
    sp_aumento_todos.ExecProc;
  end;

  2: begin
    sp_diminui.Close;
    sp_diminui.Prepare;
    sp_diminui.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
    sp_diminui.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_porcentagem.Text);
    sp_diminui.ExecProc;
  end;

  3: begin
    sp_diminui_todos.Close;
    sp_diminui_todos.Prepare;
    sp_diminui_todos.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_porcentagem.Text);
    sp_diminui_todos.ExecProc;
  end;

  end;
  q_produto.Close;
  q_produto.Open;
  Application.MessageBox('A??o executada com sucesso!', 'Aten??o', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrm_movimenta_preco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrm_movimenta_preco.FormShow(Sender: TObject);
begin
  q_produto.Open;
end;

end.
