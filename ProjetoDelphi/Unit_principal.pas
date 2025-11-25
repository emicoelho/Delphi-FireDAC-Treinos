unit Unit_principal;
// Acadêmica: Emily Coelho Manenti

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_principal = class(TForm)
    menu_principal: TMainMenu;
    menu_Arquivo: TMenuItem;
    menu_Sair: TMenuItem;
    menu_cidades: TMenuItem;
    N1: TMenuItem;
    menu_pilotos: TMenuItem;
    menu_treinos: TMenuItem;
    img_background: TImage;
    btn_treinos: TButton;
    lb_entrada: TLabel;
    menu_aparencia: TMenuItem;
    emas1: TMenuItem;
    menu_azul_amarelo: TMenuItem;
    CinzaVermelho1: TMenuItem;
    Original1: TMenuItem;
    btn_sair: TButton;
    pn_lateral: TPanel;
    procedure menu_SairClick(Sender: TObject);
    procedure menu_cidadesClick(Sender: TObject);
    procedure menu_pilotosClick(Sender: TObject);
    procedure menu_treinosClick(Sender: TObject);
    procedure btn_treinosClick(Sender: TObject);
    procedure btn_pilotosClick(Sender: TObject);
    procedure btn_cidadesClick(Sender: TObject);
    procedure menu_azul_amareloClick(Sender: TObject);
    procedure CinzaVermelho1Click(Sender: TObject);
    procedure Original1Click(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
    procedure TemaAzulAmarelo;
    procedure TemaCinzaVermelho;
    procedure TemaOriginal;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses Unit_cidades, Unit_pilotos, Unit_treinos;

procedure Tfrm_principal.menu_azul_amareloClick(Sender: TObject);
begin
  TemaAzulAmarelo;
end;

procedure Tfrm_principal.btn_cidadesClick(Sender: TObject);
begin
  frm_cidades.Show;
end;

procedure Tfrm_principal.btn_pilotosClick(Sender: TObject);
begin
  frm_pilotos.Show;
end;

procedure Tfrm_principal.btn_sairClick(Sender: TObject);
begin
  if MessageBox(0, 'Você deseja sair?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) = 6 then
    Close;
end;

procedure Tfrm_principal.btn_treinosClick(Sender: TObject);
begin
  frm_treinos.Show;
end;

procedure Tfrm_principal.CinzaVermelho1Click(Sender: TObject);
begin
  TemaCinzaVermelho;
end;

procedure Tfrm_principal.menu_cidadesClick(Sender: TObject);
begin
  frm_cidades.Show;
end;

procedure Tfrm_principal.menu_pilotosClick(Sender: TObject);
begin
  frm_pilotos.Show;
end;

procedure Tfrm_principal.menu_SairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_principal.menu_treinosClick(Sender: TObject);
begin
  frm_treinos.Show;
end;

procedure Tfrm_principal.Original1Click(Sender: TObject);
begin
  TemaOriginal;
end;

procedure Tfrm_principal.TemaAzulAmarelo;
begin
  frm_treinos.Panel_treinos.Color := ClHighLight;
  frm_treinos.lb_id.Font.Color := ClYellow;
  frm_treinos.lb_id_piloto.Font.Color := ClYellow;
  frm_treinos.lb_data.Font.Color := ClYellow;
  frm_treinos.lb_numero.Font.Color := ClYellow;
  frm_treinos.lb_qtd_voltas.Font.Color := ClYellow;
  frm_treinos.lb_tempo.Font.Color := ClYellow;
  frm_treinos.lb_total_voltas.Font.Color := ClYellow;
  frm_treinos.lb_tempo_medio.Font.Color := ClYellow;

  frm_pilotos.panel_pilotos.Color := ClHighLight;
  frm_pilotos.lb_id.Font.Color := ClYellow;
  frm_pilotos.lb_nome.Font.Color := ClYellow;
  frm_pilotos.lb_telefone.Font.Color := ClYellow;
  frm_pilotos.lb_id_cidade.Font.Color := ClYellow;
  frm_pilotos.lb_endereco.Font.Color := ClYellow;

  frm_cidades.Panel_cidades.Color := ClHighLight;
  frm_cidades.lb_id.Font.Color := ClYellow;
  frm_cidades.lb_nome.Font.Color := ClYellow;
  frm_cidades.lb_uf.Font.Color := ClYellow;

end;

procedure Tfrm_principal.TemaCinzaVermelho;
begin
  frm_treinos.Panel_treinos.Color := ClGrayText;
  frm_treinos.lb_id.Font.Color := ClMaroon;
  frm_treinos.lb_id_piloto.Font.Color := ClMaroon;
  frm_treinos.lb_data.Font.Color := ClMaroon;
  frm_treinos.lb_numero.Font.Color := ClMaroon;
  frm_treinos.lb_qtd_voltas.Font.Color := ClMaroon;
  frm_treinos.lb_tempo.Font.Color := ClMaroon;
  frm_treinos.lb_total_voltas.Font.Color := ClMaroon;
  frm_treinos.lb_tempo_medio.Font.Color := ClMaroon;

  frm_pilotos.panel_pilotos.Color := ClGrayText;
  frm_pilotos.lb_id.Font.Color := ClMaroon;
  frm_pilotos.lb_nome.Font.Color := ClMaroon;
  frm_pilotos.lb_telefone.Font.Color := ClMaroon;
  frm_pilotos.lb_id_cidade.Font.Color := ClMaroon;
  frm_pilotos.lb_endereco.Font.Color := ClMaroon;

  frm_cidades.Panel_cidades.Color := ClGrayText;
  frm_cidades.lb_id.Font.Color := ClMaroon;
  frm_cidades.lb_nome.Font.Color := ClMaroon;
  frm_cidades.lb_uf.Font.Color := ClMaroon;
end;

procedure Tfrm_principal.TemaOriginal;
begin
  frm_treinos.Panel_treinos.Color := ClBtnFace;
  frm_treinos.lb_id.Font.Color := ClBlack;
  frm_treinos.lb_id_piloto.Font.Color := ClBlack;
  frm_treinos.lb_data.Font.Color := ClBlack;
  frm_treinos.lb_numero.Font.Color := ClBlack;
  frm_treinos.lb_qtd_voltas.Font.Color := ClBlack;
  frm_treinos.lb_tempo.Font.Color := ClBlack;
  frm_treinos.lb_total_voltas.Font.Color := ClBlack;
  frm_treinos.lb_tempo_medio.Font.Color := ClBlack;

  frm_pilotos.panel_pilotos.Color := ClBtnFace;
  frm_pilotos.lb_id.Font.Color := ClBlack;
  frm_pilotos.lb_nome.Font.Color := ClBlack;
  frm_pilotos.lb_telefone.Font.Color := ClBlack;
  frm_pilotos.lb_id_cidade.Font.Color := ClBlack;
  frm_pilotos.lb_endereco.Font.Color := ClBlack;

  frm_cidades.Panel_cidades.Color := ClBtnFace;
  frm_cidades.lb_id.Font.Color := ClBlack;
  frm_cidades.lb_nome.Font.Color := ClBlack;
  frm_cidades.lb_uf.Font.Color := ClBlack;
end;

end.
