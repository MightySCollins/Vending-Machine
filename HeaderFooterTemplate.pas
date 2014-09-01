unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.MobilePreview;

type
  THeaderFooterForm = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    btn10p: TButton;
    btp20p: TButton;
    btn1: TButton;
    btn50p: TButton;
    Label1: TLabel;
    btnrefund: TButton;
    Label2: TLabel;
    lblcredit: TLabel;
    btnCoke: TButton;
    btnSprite: TButton;
    btnLemon: TButton;
    btnFanta: TButton;
    btnYazoo: TButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnrefundClick(Sender: TObject);
    procedure btn10pClick(Sender: TObject);
    procedure btp20pClick(Sender: TObject);
    procedure btn50pClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnCokeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeaderFooterForm: THeaderFooterForm;
  Credit: real;

implementation

{$R *.fmx}

procedure creditupdate;
begin
  //THeaderFooterForm.lblcredit.text := Credit;
end;

procedure error;
begin
  ShowMessage('Sorry you need to add more credit first');
end;

procedure THeaderFooterForm.btn10pClick(Sender: TObject);
begin
  Credit := Credit + 0.1;
  creditupdate;
end;

procedure THeaderFooterForm.btn1Click(Sender: TObject);
begin
  Credit := Credit + 1;
  creditupdate;
end;

procedure THeaderFooterForm.btn50pClick(Sender: TObject);
begin
  Credit := Credit + 0.5;
  creditupdate;
end;

procedure THeaderFooterForm.btnCokeClick(Sender: TObject);
begin
  if Credit > 1.5 then
  begin
    Credit := Credit - 1.5;
    creditupdate;
  end
  else
    error;
end;

procedure THeaderFooterForm.btnrefundClick(Sender: TObject);
begin
  Credit := 0;
  creditupdate;
end;

procedure THeaderFooterForm.btp20pClick(Sender: TObject);
begin
  Credit := Credit + 0.2;
  creditupdate;
end;

procedure THeaderFooterForm.FormCreate(Sender: TObject);
begin
  Credit := 0;
end;

end.
