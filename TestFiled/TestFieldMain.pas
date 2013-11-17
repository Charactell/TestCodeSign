unit TestFieldMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, System.TypInfo,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ExtCtrls, Thumb, acAlphaImageList, Vcl.ImgList, Vcl.ComCtrls, sListView,
  sTreeView, Vcl.StdCtrls, sEdit, sSplitter, sPanel, sToolBar, sPageControl,
  sSkinProvider, sSkinManager, Vcl.Grids, sRichEdit, acImage;

type
  TForm1 = class(TForm)
    sPageControl1: TsPageControl;
    sTabSheet2: TsTabSheet;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    sPanel2: TsPanel;
    sPanel4: TsPanel;
    sPanel1: TsPanel;
    sPanel3: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    sEdit1: TsEdit;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sAlphaImageList1: TsAlphaImageList;
    sSplitter2: TsSplitter;
    sSplitter1: TsSplitter;
    StringGrid1: TStringGrid;
    sRichEdit1: TsRichEdit;
    sTabSheet1: TsTabSheet;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel11: TsPanel;
    sPanel10: TsPanel;
    StringGrid2: TStringGrid;
    sToolBar2: TsToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    StringGrid3: TStringGrid;
    sImage1: TsImage;
    sImage2: TsImage;
    sSplitter3: TsSplitter;
    sSplitter5: TsSplitter;
    sSplitter4: TsSplitter;
    sToolBar3: TsToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    sAlphaImageList2: TsAlphaImageList;
    sToolBar4: TsToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    sListView1: TsListView;
    sAlphaImageList3: TsAlphaImageList;
    procedure Action1Execute(Sender: TObject);
    procedure sListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure sListView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadBulk ;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
	LoadBulk ;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	sPanel1.Width := 1 ;
  StringGrid1.Cells[0,1] := '012013101012121233' ;
  StringGrid1.Cells[0,2] := '012013101012121234' ;
  StringGrid1.Cells[0,3] := '012013101012121235' ;
  StringGrid1.Cells[1,1] := 'Data' ;
  StringGrid1.Cells[1,2] := 'Data' ;
  StringGrid1.Cells[1,3] := 'Data' ;

end;

procedure TForm1.LoadBulk;
begin
end;

procedure TForm1.sListView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
	Caption :=  TObject( Sender ).ClassName  ; //+ ' - ' +GetTypeName( TypeInfo( Source ) ) ;

end;

procedure TForm1.sListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
	Caption := Item.Caption ;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
	if ToolButton2.Down then
		sPanel1.Width := 400
  else
  	sPanel1.Width := 2;
end;

end.
