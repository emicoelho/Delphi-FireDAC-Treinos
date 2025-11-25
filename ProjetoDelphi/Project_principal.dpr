program Project_principal;

uses
  Vcl.Forms,
  Unit_principal in 'Unit_principal.pas' {frm_principal},
  Unit_DM in 'Unit_DM.pas' {DataModule1: TDataModule},
  Unit_cidades in 'Unit_cidades.pas' {frm_cidades},
  Unit_pilotos in 'Unit_pilotos.pas' {frm_pilotos},
  Unit_treinos in 'Unit_treinos.pas' {frm_treinos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_pilotos, frm_pilotos);
  Application.CreateForm(Tfrm_treinos, frm_treinos);
  Application.Run;
end.
