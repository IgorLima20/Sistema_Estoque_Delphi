unit U_forma_pagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Forma_Pagto = class(TFrm_Padrao)
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_Id_Forma_Pgto: TDBEdit;
    Label2: TLabel;
    DB_Descricao: TDBEdit;
    Label3: TLabel;
    DB_Cadastro: TDBEdit;
    procedure bt_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Forma_Pagto: TFrm_Forma_Pagto;

implementation

{$R *.dfm}

procedure TFrm_Forma_Pagto.bt_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Descricao.SetFocus;
end;

end.
