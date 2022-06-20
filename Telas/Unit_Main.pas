unit Unit_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, ClipBrd,
  DateUtils, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TFormMain = class(TForm)
    PanelFundo: TPanel;
    PanelSaldo: TPanel;
    PanelTItuloSaldo: TPanel;
    PanelMenuLateral: TPanel;
    PanelButtonEntrada: TPanel;
    PanelButtonSaida: TPanel;
    PanelButtonHistoricoEntradaSaida: TPanel;
    PanelButtonGrafico: TPanel;
    PanelMenuSuperior: TPanel;
    PanelButtonAbrirFecharCaixa: TPanel;
    PanelButtonHistoricoCaixa: TPanel;
    PanelButtonMenu: TPanel;
    PanelEntradaSaida: TPanel;
    EditDescricao: TEdit;
    EditValor: TEdit;
    PanelTituloEntradaSaida: TPanel;
    PanelButtonCadastro: TPanel;
    ADOConnection1: TADOConnection;
    ADOStoredProcItemCaixa: TADOStoredProc;
    ADOStoredProcAbrirCaixa: TADOStoredProc;
    ADOQueryVerificacaoCaixa: TADOQuery;
    ADOQueryVerificacaoCaixaCODIGO_CAIXA: TAutoIncField;
    ADOQueryVerificacaoCaixaDATA_HORA_ABERTURA_CAIXA: TDateTimeField;
    ADOQueryVerificacaoCaixaDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField;
    ADOQueryVerificacaoCaixaSALDO_INICIAL_CAIXA: TBCDField;
    ADOQueryVerificacaoCaixaSALDO_FINAL_CAIXA: TBCDField;
    ADOQueryVerificacaoCaixaSITUACAO_CAIXA: TBooleanField;
    ADOStoredProcFecharCaixa: TADOStoredProc;
    ADOQueryCaixaAtual: TADOQuery;
    ADOQueryCaixaAtualCODIGO_CAIXA: TAutoIncField;
    ADOQueryCaixaAtualDATA_HORA_ABERTURA_CAIXA: TDateTimeField;
    ADOQueryCaixaAtualDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField;
    ADOQueryCaixaAtualSALDO_INICIAL_CAIXA: TBCDField;
    ADOQueryCaixaAtualSALDO_FINAL_CAIXA: TBCDField;
    ADOQueryCaixaAtualSITUACAO_CAIXA: TBooleanField;
    PanelHistóricoEntradaSaida: TPanel;
    PanelTituloHistoricoEntradaSaida: TPanel;
    DBGridHistoricoEntradasSaidas: TDBGrid;
    PanelButtonAlterar: TPanel;
    RadioGroupFiltroHistoricoEntradaSaida: TRadioGroup;
    PanelTituloDBEntradaSaida: TPanel;
    ADOQueryHistoricoEntradaSaida: TADOQuery;
    DataSourceHistoricoEntradaSaida: TDataSource;
    ADOQueryHistoricoEntradaSaidaCODIGO_ITEM_CAIXA: TAutoIncField;
    ADOQueryHistoricoEntradaSaidaDESCRICAO_ITEM_CAIXA: TStringField;
    ADOQueryHistoricoEntradaSaidaVALOR_ITEM_CAIXA: TBCDField;
    ADOQueryHistoricoEntradaSaidaENTRADA_ITEM_CAIXA: TBooleanField;
    ADOQueryHistoricoEntradaSaidaSAIDA_ITEM_CAIXA: TBooleanField;
    ADOQueryHistoricoEntradaSaidaDATA_HORA_ITEM_CAIXA: TDateTimeField;
    ADOQueryHistoricoEntradaSaidaCAIXA_ITEM_CAIXA: TIntegerField;
    PanelHistoricoCaixa: TPanel;
    PanelTituloHistoricoCaixa: TPanel;
    DBGridHistoricoCaixa: TDBGrid;
    PanelTituloDBHistoricoCaixa: TPanel;
    ADOQueryHistoricoCaixa: TADOQuery;
    DataSourceHistoricoCaixa: TDataSource;
    ADOQueryHistoricoCaixaCODIGO_CAIXA: TAutoIncField;
    ADOQueryHistoricoCaixaDATA_HORA_ABERTURA_CAIXA: TDateTimeField;
    ADOQueryHistoricoCaixaDATA_HORA_FECHAMENTO_CAIXA: TDateTimeField;
    ADOQueryHistoricoCaixaSALDO_INICIAL_CAIXA: TBCDField;
    ADOQueryHistoricoCaixaSALDO_FINAL_CAIXA: TBCDField;
    ADOQueryHistoricoCaixaSITUACAO_CAIXA: TBooleanField;
    PanelFiltroCaixa: TPanel;
    Label1: TLabel;
    ComboBoxMesHistoricoCaixa: TComboBox;
    ComboBoxAnoHistoricoCaixa: TComboBox;
    ADOQueryHistoricoCaixaSituação: TStringField;
    ADOQueryHistoricoEntradaSaidaEntrada: TStringField;
    ADOQueryHistoricoEntradaSaidaSaída: TStringField;
    Timer1: TTimer;
    procedure PanelButtonEntradaClick(Sender: TObject);
    procedure PanelButtonSaidaClick(Sender: TObject);
    procedure PanelButtonCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PanelButtonMenuClick(Sender: TObject);
    procedure PanelButtonEntradaMouseEnter(Sender: TObject);
    procedure PanelButtonSaidaMouseEnter(Sender: TObject);
    procedure PanelButtonHistoricoEntradaSaidaMouseEnter(Sender: TObject);
    procedure PanelButtonGraficoMouseEnter(Sender: TObject);
    procedure PanelButtonGraficoMouseLeave(Sender: TObject);
    procedure PanelButtonHistoricoEntradaSaidaMouseLeave(Sender: TObject);
    procedure PanelButtonSaidaMouseLeave(Sender: TObject);
    procedure PanelButtonEntradaMouseLeave(Sender: TObject);
    procedure PanelButtonAbrirFecharCaixaMouseLeave(Sender: TObject);
    procedure PanelButtonAbrirFecharCaixaMouseEnter(Sender: TObject);
    procedure PanelButtonHistoricoCaixaMouseEnter(Sender: TObject);
    procedure PanelButtonMenuMouseEnter(Sender: TObject);
    procedure PanelButtonMenuMouseLeave(Sender: TObject);
    procedure PanelButtonHistoricoCaixaMouseLeave(Sender: TObject);
    procedure PanelButtonCadastroMouseLeave(Sender: TObject);
    procedure PanelButtonCadastroMouseEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RadioGroupFiltroHistoricoEntradaSaidaClick(Sender: TObject);
    procedure PanelButtonHistoricoEntradaSaidaClick(Sender: TObject);
    procedure ComboBoxMesHistoricoCaixaChange(Sender: TObject);
    procedure ComboBoxAnoHistoricoCaixaChange(Sender: TObject);
    procedure ComboBoxAnoHistoricoCaixaKeyPress(Sender: TObject; var Key: Char);
    procedure PanelButtonHistoricoCaixaClick(Sender: TObject);
    procedure ComboBoxMesHistoricoCaixaKeyPress(Sender: TObject; var Key: Char);
    procedure PanelButtonAbrirFecharCaixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CAIXA, CAIXAATUAL : integer;
    ENTRADASAIDA : boolean;//ENTRADA = 1, SAIDA = 0
    SALDOFINAL : Real;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


procedure TFormMain.ComboBoxAnoHistoricoCaixaChange(Sender: TObject);
var
  MES, ANO : integer;
begin
  MES := StrToInt(ComboBoxMesHistoricoCaixa.Text);
  ANO := StrToInt(ComboBoxAnoHistoricoCaixa.Text);

  if (ComboBoxMesHistoricoCaixa.Text <> '') and (ComboBoxAnoHistoricoCaixa.Text <> '') then
  begin
    with ADOQueryHistoricoCaixa do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*, case SITUACAO_CAIXA when 0 then ''Fechado'' ');
      SQL.Add('when 1 then ''Aberto'' end [Situação]');
      SQL.Add('from TB_CAIXA');
      SQL.Add('where');
      SQL.Add('DATEPART(MM, DATA_HORA_ABERTURA_CAIXA) =''' + IntToStr(MES) + ''' ');
      SQL.Add('and DATEPART(YYYY, DATA_HORA_ABERTURA_CAIXA) =''' + IntToStr(ANO)+''' ');
      Clipboard.AsText := ADOQueryHistoricoCaixa.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormMain.ComboBoxAnoHistoricoCaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #8 then
  begin
     Key := #0;
  end;
end;

procedure TFormMain.ComboBoxMesHistoricoCaixaChange(Sender: TObject);
var
  MES, ANO : integer;
begin
  MES := StrToInt(ComboBoxMesHistoricoCaixa.Text);
  ANO := StrToInt(ComboBoxAnoHistoricoCaixa.Text);
  if (ComboBoxMesHistoricoCaixa.Text <> '') and (ComboBoxAnoHistoricoCaixa.Text <> '') then
  begin
    with ADOQueryHistoricoCaixa do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*, case SITUACAO_CAIXA when 0 then ''Fechado'' ');
      SQL.Add('when 1 then ''Aberto'' end [Situação]');
      SQL.Add('from TB_CAIXA');
      SQL.Add('where');
      SQL.Add('DATEPART(MM, DATA_HORA_ABERTURA_CAIXA) =''' + IntToStr(MES) + ''' ');
      SQL.Add('and DATEPART(YYYY, DATA_HORA_ABERTURA_CAIXA) =''' + IntToStr(ANO)+''' ');
      Clipboard.AsText := ADOQueryHistoricoCaixa.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormMain.ComboBoxMesHistoricoCaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #8 then
  begin
     Key := #0;
  end;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQueryVerificacaoCaixa.Close;
  ADOQueryVerificacaoCaixa.Open;

  if (ADOQueryVerificacaoCaixa.RecordCount = 0) then
  begin

    if Application.MessageBox('Deseja realmente encerrar o aplicativo?','Confirmação',
        mb_iconquestion + mb_yesno) = idYes then
    begin
      Action := Action;
    end
    else
    begin
      Action := TCloseAction.caNone;
    end;

  end
  else if (ADOQueryVerificacaoCaixa.RecordCount > 0) then
  begin
    if Application.MessageBox('Ainda existe um caixa aberto, ao sair ele será fechado, deseja prosseguir com o procedimento?','Confirmação',
        mb_iconquestion + mb_yesno) = idYes then
    begin
      with ADOStoredProcFecharCaixa.Parameters do
      begin
        ParamByName('@CODIGO').Value := CAIXA;
      end;
      ADOStoredProcFecharCaixa.ExecProc;
      ADOQueryVerificacaoCaixa.Close;
      ADOQueryVerificacaoCaixa.Open;
      Action := Action;
    end
    else
    begin
      Action := TCloseAction.caNone;
    end;
  end;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  if FormMain.WindowState = wsMaximized then
  begin
    PanelSaldo.Width := 550;
    PanelMenuLateral.Width := 300;
    PanelMenuSuperior.Height := 90;
    PanelEntradaSaida.Width := 417;
    PanelEntradaSaida.Left := 350;
    PanelEntradaSaida.Top := 110;
    PanelHistóricoEntradaSaida.Width := 417;
    PanelHistóricoEntradaSaida.Left := 350;
    PanelHistóricoEntradaSaida.Top := 110;
    PanelHistoricoCaixa.Width := 417;
    PanelHistoricoCaixa.Left := 350;
    PanelHistoricoCaixa.Top := 110;
    PanelSaldo.Visible := True;
  end
  else if FormMain.WindowState = wsNormal then
  begin
    PanelSaldo.Width := 355;
    PanelMenuLateral.Width := 280;
    PanelMenuSuperior.Height := 72;
    PanelEntradaSaida.Width := 354;
    PanelEntradaSaida.Left := 338;
    PanelEntradaSaida.Top := 73;
    PanelHistóricoEntradaSaida.Width := 354;
    PanelHistóricoEntradaSaida.Left := 338;
    PanelHistóricoEntradaSaida.Top := 73;
    PanelHistoricoCaixa.Width := 354;
    PanelHistoricoCaixa.Left := 338;
    PanelHistoricoCaixa.Top := 73;

    if PanelEntradaSaida.Visible = True then
    begin
      PanelSaldo.Visible := False;
    end
    else if PanelEntradaSaida.Visible = False then
    begin
      PanelSaldo.Visible := True;
    end;
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  I : integer;
begin
  


  //Unit_Loading_Inicial.FormLoadingInicial.Close;


  ADOQueryVerificacaoCaixa.Close;
  ADOQueryVerificacaoCaixa.Open;
  ADOQueryCaixaAtual.Close;
  ADOQueryCaixaAtual.Open;
  ADOQueryHistoricoEntradaSaida.Close;
  ADOQueryHistoricoEntradaSaida.Open;
  ADOQueryHistoricoCaixa.Close;
  ADOQueryHistoricoCaixa.Open;

  if (ADOQueryVerificacaoCaixa.RecordCount = 0) then
  begin
    PanelButtonEntrada.Enabled := False;
    PanelButtonSaida.Enabled := False;
  end
  else if (ADOQueryVerificacaoCaixa.RecordCount > 0) then
  begin
    for I := ADOQueryVerificacaoCaixa.RecordCount downto 0 do
    begin
       with ADOStoredProcFecharCaixa.Parameters do
      begin
        ParamByName('@CODIGO').Value := ADOQueryVerificacaoCaixaCODIGO_CAIXA.AsInteger;
      end;
      ADOStoredProcFecharCaixa.ExecProc;
      ADOQueryVerificacaoCaixa.Close;
      ADOQueryVerificacaoCaixa.Open;
    end;
  end;
  PanelButtonAbrirFecharCaixa.Caption := 'ABRIR CAIXA';
  PanelSaldo.Caption := 'R$ 0';
  ADOQueryVerificacaoCaixa.Close;
  ADOQueryVerificacaoCaixa.Open;
end;

procedure TFormMain.PanelButtonAbrirFecharCaixaClick(Sender: TObject);
begin

  PanelEntradaSaida.Visible := False;
  PanelHistoricoCaixa.Visible := False;
  PanelHistóricoEntradaSaida.Visible := False;
  PanelSaldo.Visible := True;

  if (ADOQueryVerificacaoCaixa.RecordCount = 0) then
  begin
    CAIXA := 0;
    CAIXAATUAL := 0 ;

    with ADOStoredProcAbrirCaixa.Parameters do
    begin
      ParamByName('@DATA_HORA_FECHAMENTO').Value := null;
      ParamByName('@SALDO_INICIAL').Value := '0,00';
      ParamByName('@SALDO_FINAL').Value := '0,00';
    end;
    ADOStoredProcAbrirCaixa.ExecProc;
    Application.MessageBox('CAIXA ABERTO!','Confirmação',MB_OK);
    ///
    ///CAIXA := ADOStoredProcAbrirCaixa.Parameters.ParamByName('@RETURN_VALUE').Value;
    ///

    ADOQueryVerificacaoCaixa.Close;
    ADOQueryVerificacaoCaixa.Open;

    CAIXA :=  ADOQueryVerificacaoCaixaCODIGO_CAIXA.AsInteger;
    ///

    ADOQueryCaixaAtual.Close;
    ADOQueryCaixaAtual.Open;

    Timer1.Enabled := True;

    ///
    ///

    with ADOQueryCaixaAtual do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*from TB_CAIXA');
      SQL.Add('where CODIGO_CAIXA = ''' + IntToStr(CAIXA) + ''' ');
      Clipboard.AsText := ADOQueryCaixaAtual.SQL.Text;
      Open;
    end;
    ///
    ///

    //ADOQueryCaixaAtual.Parameters.ParamByName('CODIGO').Value := CAIXA;
    //ADOQueryCaixaAtual.Active := False;
    //ADOQueryCaixaAtual.Active := True;
    PanelButtonAbrirFecharCaixa.Caption := 'FECHAR CAIXA';
    PanelButtonEntrada.Enabled := True;
    PanelButtonSaida.Enabled := True;
  end
  else if (ADOQueryVerificacaoCaixa.RecordCount > 0) then
  begin
    with ADOStoredProcFecharCaixa.Parameters do
    begin
      ParamByName('@CODIGO').Value := CAIXA;
    end;
    ADOStoredProcFecharCaixa.ExecProc;
    Application.MessageBox('CAIXA FECHADO!','Confirmação',MB_OK);
    PanelButtonAbrirFecharCaixa.Caption := 'ABRIR CAIXA';
    ////////////////////////////////////////////////
    ///////////////////////////////////////////////
    ///
    ///ADOStoredProcAbrirCaixa.DeleteRecords(arAll);
    ///
    ADOQueryVerificacaoCaixa.Close;
    ADOQueryVerificacaoCaixa.Open;
    ADOQueryCaixaAtual.Close;
    ADOQueryCaixaAtual.Open;
    /////////////////////////////////////////////
    PanelButtonEntrada.Enabled := False;
    PanelButtonSaida.Enabled := False;

    CAIXA := 0;
    CAIXAATUAL := 0;

    Timer1.Enabled := False;
  end;

end;

procedure TFormMain.PanelButtonAbrirFecharCaixaMouseEnter(Sender: TObject);
begin
  PanelButtonAbrirFecharCaixa.Font.Style := [fsBold];
  PanelButtonAbrirFecharCaixa.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonAbrirFecharCaixaMouseLeave(Sender: TObject);
begin
  PanelButtonAbrirFecharCaixa.Font.Style := [];
  PanelButtonAbrirFecharCaixa.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonCadastroClick(Sender: TObject);
var
  D : string;
  V : real;
begin
  CAIXAATUAL := CAIXA;

  if ENTRADASAIDA = TRUE then
  begin
    D := EditDescricao.Text;
    V := StrToFloat(EditValor.Text);

    with ADOStoredProcItemCaixa.Parameters do
    begin
      ParamByName('@DESCRICAO').Value := D;
      ParamByName('@VALOR').Value := V;
      ParamByName('@ENTRADA').Value := 1;
      ParamByName('@SAIDA').Value := 0;
      ParamByName('@CAIXA').Value := CAIXAATUAL;
    end;
    ADOStoredProcItemCaixa.ExecProc;
    Application.MessageBox('Entrada cadastrada com sucesso!','Confirmação', MB_OK);
  end
  else if ENTRADASAIDA = FALSE then
       begin
         D := EditDescricao.Text;
         V := StrToFloat(EditValor.Text);
         with ADOStoredProcItemCaixa.Parameters do
         begin
            ParamByName('@DESCRICAO').Value := D;
            ParamByName('@VALOR').Value := V;
            ParamByName('@ENTRADA').Value := 0;
            ParamByName('@SAIDA').Value := 1;
            ParamByName('@CAIXA').Value := CAIXAATUAL;
          end;
          ADOStoredProcItemCaixa.ExecProc;
          Application.MessageBox('Saída cadastrada com sucesso!','Confirmação', MB_OK);
       end;

  ADOQueryCaixaAtual.Close;
  ADOQueryCaixaAtual.Open;
  ADOQueryVerificacaoCaixa.Close;
  ADOQueryVerificacaoCaixa.Open;
  ADOQueryHistoricoEntradaSaida.Close;
  ADOQueryHistoricoEntradaSaida.Open;
  ADOQueryHistoricoCaixa.Close;
  ADOQueryHistoricoCaixa.Open;

  with ADOQueryCaixaAtual do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select*from TB_CAIXA');
    SQL.Add('where CODIGO_CAIXA = ''' + IntToStr(CAIXAATUAL) + ''' ');
    Clipboard.AsText := ADOQueryCaixaAtual.SQL.Text;
    Open;
  end;

  PanelSaldo.Caption := 'R$ ' +FloatToStr(ADOQueryCaixaAtualSALDO_FINAL_CAIXA.AsFloat);

  EditDescricao.Clear;
  EditValor.Clear;

end;

procedure TFormMain.PanelButtonCadastroMouseEnter(Sender: TObject);
begin
  PanelButtonCadastro.Font.Style := [fsBold];
  PanelButtonCadastro.BevelKind := bkFlat;
end;

procedure TFormMain.PanelButtonCadastroMouseLeave(Sender: TObject);
begin
  PanelButtonCadastro.Font.Style := [];
  PanelButtonCadastro.BevelKind := bkNone;
end;

procedure TFormMain.PanelButtonEntradaClick(Sender: TObject);
begin
  PanelTituloEntradaSaida.Caption := 'Entrada';
  ENTRADASAIDA := True;

  PanelButtonCadastro.caption := 'Confirmar Entrada';

  PanelHistoricoCaixa.Visible := False;
  PanelHistóricoEntradaSaida.Visible := False;
  PanelSaldo.Visible := False;

  if PanelEntradaSaida.Visible = False then
  begin
    PanelEntradaSaida.Visible := True;
  end
  else if PanelEntradaSaida.Visible = True then
  begin
    PanelEntradaSaida.Visible := False;
  end;
end;

procedure TFormMain.PanelButtonEntradaMouseEnter(Sender: TObject);
begin
  PanelButtonEntrada.Font.Style := [fsBold];
  PanelButtonEntrada.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonEntradaMouseLeave(Sender: TObject);
begin
  PanelButtonEntrada.Font.Style := [];
  PanelButtonEntrada.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonGraficoMouseEnter(Sender: TObject);
begin
  PanelButtonGrafico.Font.Style := [fsBold];
  PanelButtonGrafico.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonGraficoMouseLeave(Sender: TObject);
begin
  PanelButtonGrafico.Font.Style := [];
  PanelButtonGrafico.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonHistoricoCaixaClick(Sender: TObject);
begin
  with ADOQueryHistoricoCaixa do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select*, case SITUACAO_CAIXA when 0 then ''Fechado'' ');
    SQL.Add('when 1 then ''Aberto'' end [Situação]');
    SQL.Add('from TB_CAIXA');
    SQL.Add('where');
    SQL.Add('DATEPART(MM, DATA_HORA_ABERTURA_CAIXA) =  ');
    SQL.Add('DATEPART(MM, GETDATE()) and');
    SQL.Add('DATEPART(YYYY, DATA_HORA_ABERTURA_CAIXA) = ');
    SQL.Add('DATEPART(YYYY, GETDATE())');
    Clipboard.AsText := ADOQueryHistoricoCaixa.SQL.Text;
    Open;
  end;

  ComboBoxAnoHistoricoCaixa.Text := IntToStr(YearOf(ADOQueryHistoricoCaixaDATA_HORA_ABERTURA_CAIXA.AsDateTime));
  ComboBoxMesHistoricoCaixa.Text := IntToStr(MonthOf(ADOQueryHistoricoCaixaDATA_HORA_ABERTURA_CAIXA.AsDateTime));

  PanelEntradaSaida.Visible := False;
  PanelHistóricoEntradaSaida.Visible := False;
  PanelSaldo.Visible := False;

  if PanelHistoricoCaixa.Visible = False then
  begin
    PanelHistoricoCaixa.Visible := True;
  end
  else if PanelHistoricoCaixa.Visible = True then
  begin
    PanelHistoricoCaixa.Visible := False;
  end;
end;

procedure TFormMain.PanelButtonHistoricoCaixaMouseEnter(Sender: TObject);
begin
  PanelButtonHistoricoCaixa.Font.Style := [fsBold];
  PanelButtonHistoricoCaixa.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonHistoricoCaixaMouseLeave(Sender: TObject);
begin
  PanelButtonHistoricoCaixa.Font.Style := [];
  PanelButtonHistoricoCaixa.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonHistoricoEntradaSaidaClick(Sender: TObject);
begin
  PanelEntradaSaida.Visible := False;
  PanelHistoricoCaixa.Visible := False;
  PanelSaldo.Visible := False;

  if PanelHistóricoEntradaSaida.Visible = False then
  begin
    PanelHistóricoEntradaSaida.Visible := True;
  end
  else if PanelHistóricoEntradaSaida.Visible = True then
  begin
    PanelHistóricoEntradaSaida.Visible := False;
  end;
end;

procedure TFormMain.PanelButtonHistoricoEntradaSaidaMouseEnter(Sender: TObject);
begin
  PanelButtonHistoricoEntradaSaida.Font.Style := [fsBold];
  PanelButtonHistoricoEntradaSaida.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonHistoricoEntradaSaidaMouseLeave(Sender: TObject);
begin
  PanelButtonHistoricoEntradaSaida.Font.Style := [];
  PanelButtonHistoricoEntradaSaida.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonMenuClick(Sender: TObject);
begin
  if (CAIXAATUAL <> 0) then
  begin
    PanelSaldo.Caption := 'R$ '+ FloatToStr(ADOQueryCaixaAtualSALDO_FINAL_CAIXA.AsFloat);
  end;

  PanelHistoricoCaixa.Visible := False;
  PanelEntradaSaida.Visible := False;
  PanelHistóricoEntradaSaida.Visible := False;

  if PanelSaldo.Visible = False then
  begin
    PanelSaldo.Visible := True;
  end
  else if PanelSaldo.Visible = True then
  begin
    PanelSaldo.Visible := False;
  end;
end;

procedure TFormMain.PanelButtonMenuMouseEnter(Sender: TObject);
begin
  PanelButtonMenu.Font.Style := [fsBold];
  PanelButtonMenu.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonMenuMouseLeave(Sender: TObject);
begin
  PanelButtonMenu.Font.Style := [];
  PanelButtonMenu.BevelOuter := bvNone;
end;

procedure TFormMain.PanelButtonSaidaClick(Sender: TObject);
begin
  PanelTituloEntradaSaida.Caption := 'Saída';
  ENTRADASAIDA := False;

  PanelButtonCadastro.caption := 'Confirmar Saída';

  PanelHistoricoCaixa.Visible := False;
  PanelHistóricoEntradaSaida.Visible := False;
  PanelSaldo.Visible := False;

  if PanelEntradaSaida.Visible = False then
  begin
    PanelEntradaSaida.Visible := True;
  end
  else if PanelEntradaSaida.Visible = True then
  begin
    PanelEntradaSaida.Visible := False;
  end;
end;

procedure TFormMain.PanelButtonSaidaMouseEnter(Sender: TObject);
begin
  PanelButtonSaida.Font.Style := [fsBold];
  PanelButtonSaida.BevelOuter := bvRaised;
end;

procedure TFormMain.PanelButtonSaidaMouseLeave(Sender: TObject);
begin
  PanelButtonSaida.Font.Style := [];
  PanelButtonSaida.BevelOuter := bvNone;
end;

procedure TFormMain.RadioGroupFiltroHistoricoEntradaSaidaClick(Sender: TObject);
begin
  if RadioGroupFiltroHistoricoEntradaSaida.ItemIndex = 0 then
  begin
    with ADOQueryHistoricoEntradaSaida do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*, case ENTRADA_ITEM_CAIXA when 1 then ''+'' end [Entrada], ');
      SQL.Add('case SAIDA_ITEM_CAIXA when 1 then ''-'' end [Saída]');
      SQL.Add('from TB_ITEM_CAIXA');
      Clipboard.AsText := ADOQueryHistoricoEntradaSaida.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltroHistoricoEntradaSaida.ItemIndex = 1 then
  begin
    with ADOQueryHistoricoEntradaSaida do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*, case ENTRADA_ITEM_CAIXA when 1 then ''+'' end [Entrada], ');
      SQL.Add('case SAIDA_ITEM_CAIXA when 1 then ''-'' end [Saída]');
      SQL.Add('from TB_ITEM_CAIXA');
      SQL.Add('where ENTRADA_ITEM_CAIXA = 1');
      Clipboard.AsText := ADOQueryHistoricoEntradaSaida.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltroHistoricoEntradaSaida.ItemIndex = 2 then
  begin
    with ADOQueryHistoricoEntradaSaida do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select*, case ENTRADA_ITEM_CAIXA when 1 then ''+'' end [Entrada], ');
      SQL.Add('case SAIDA_ITEM_CAIXA when 1 then ''-'' end [Saída]');
      SQL.Add('from TB_ITEM_CAIXA');
      SQL.Add('where SAIDA_ITEM_CAIXA = 1');
      Clipboard.AsText := ADOQueryHistoricoEntradaSaida.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  ADOQueryVerificacaoCaixa.Close;
  ADOQueryVerificacaoCaixa.Open;

  if (ADOQueryVerificacaoCaixa.RecordCount > 0) then
  begin
    ADOQueryCaixaAtual.Active := False;
    ADOQueryCaixaAtual.Active := True;

    PanelSaldo.Caption := 'R$ ' + FloatToStr(ADOQueryCaixaAtualSALDO_FINAL_CAIXA.AsFloat);
  end
  else if (ADOQueryVerificacaoCaixa.RecordCount = 0) then
  begin
    PanelSaldo.Caption := 'R$ 0';
  end;
end;

end.
