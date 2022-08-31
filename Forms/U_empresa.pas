unit U_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Empresa = class(TFrm_Padrao)
    Q_padraoID_EMPRESA: TIntegerField;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Q_padraoN_FANTASIA: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoLOGO: TBlobField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DB_Razao_Social: TDBEdit;
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
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBImage1: TDBImage;
    Label14: TLabel;
    DB_Cadastro: TDBEdit;
    bt_Foto: TBitBtn;
    bt_Clear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_FotoClick(Sender: TObject);
    procedure bt_ClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

procedure TFrm_Empresa.bt_ClearClick(Sender: TObject);
begin
  //Limpa a imagem
  Q_padrao.Edit;
  Q_padraoLOGO.AsVariant := null;
  Q_padrao.Refresh;
  MessageDlg('Imagem deletada com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TFrm_Empresa.bt_FotoClick(Sender: TObject);
begin
  //insere foto
  Q_padrao.Edit;
  OpenDialog1.Execute;
  DBImage1.Picture.LoadFromFile(OpenDialog1.FileName);
  Q_padrao.Refresh;
  MessageDlg('Imagem inserida com sucesso1!', mtInformation, [mbOK],0);
end;

procedure TFrm_Empresa.bt_NovoClick(Sender: TObject);
begin
  inherited;
  if Q_padrao.RecordCount > 0 then
  begin
    Application.MessageBox('Já possui um cadastro para essa tabela!', 'Atenção', MB_OK+MB_ICONINFORMATION);
    Q_padrao.Cancel;
    TrataBotoes;
  end
  else
  begin
    DB_Cadastro.Text := DateToStr(now);
    DB_Razao_Social.SetFocus;
  end;
end;

end.
