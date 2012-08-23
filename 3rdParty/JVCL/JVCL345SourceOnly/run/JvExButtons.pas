{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExButtons.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.delphi-jedi.org

Known Issues:
-----------------------------------------------------------------------------}
// $Id: JvExButtons.pas 13102 2011-09-07 05:46:34Z obones $

unit JvExButtons;

{$I jvcl.inc}
{MACROINCLUDE JvExControls.macros}

{*****************************************************************************
 * WARNING: Do not edit this file.
 * This file is autogenerated from the source in devtools/JvExVCL/src.
 * If you do it despite this warning your changes will be discarded by the next
 * update of this file. Do your changes in the template files.
 ****************************************************************************}
{$D-} // do not step into this unit

interface

uses
  Windows, Messages, Types,
  SysUtils, Classes, Graphics, Controls, Forms, Buttons, StdCtrls,
  {$IFDEF UNITVERSIONING}
  JclUnitVersioning,
  {$ENDIF UNITVERSIONING}
  JvConsts, JvTypes, JvThemes, JVCLVer, JvExControls;

type
  TJvExSpeedButton = class(TSpeedButton, IJvExControl)
  private
    FAboutJVCL: TJVCLAboutInfo;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FHintWindowClass: THintWindowClass;
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FOnParentColorChanged: TNotifyEvent;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT; overload;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT; overload;
    function BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
  protected
    procedure WndProc(var Msg: TMessage); override;
    procedure FocusChanged(AControl: TWinControl); dynamic;
    procedure VisibleChanged; reintroduce; dynamic;
    procedure EnabledChanged; reintroduce; dynamic;
    procedure TextChanged; reintroduce; virtual;
    procedure ColorChanged; reintroduce; dynamic;
    procedure FontChanged; reintroduce; dynamic;
    procedure ParentFontChanged; reintroduce; dynamic;
    procedure ParentColorChanged; reintroduce; dynamic;
    procedure ParentShowHintChanged; reintroduce; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; reintroduce; dynamic;
    function HitTest(X, Y: Integer): Boolean; reintroduce; virtual;
    procedure MouseEnter(AControl: TControl); reintroduce; dynamic;
    procedure MouseLeave(AControl: TControl); reintroduce; dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    property HintWindowClass: THintWindowClass read FHintWindowClass write FHintWindowClass;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  end;

  TJvExBitBtn = class(TBitBtn, IJvExControl)
  private
    FAboutJVCL: TJVCLAboutInfo;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FHintWindowClass: THintWindowClass;
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FOnParentColorChanged: TNotifyEvent;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT; overload;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT; overload;
    function BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
  protected
    procedure WndProc(var Msg: TMessage); override;
    procedure FocusChanged(AControl: TWinControl); dynamic;
    procedure VisibleChanged; reintroduce; dynamic;
    procedure EnabledChanged; reintroduce; dynamic;
    procedure TextChanged; reintroduce; virtual;
    procedure ColorChanged; reintroduce; dynamic;
    procedure FontChanged; reintroduce; dynamic;
    procedure ParentFontChanged; reintroduce; dynamic;
    procedure ParentColorChanged; reintroduce; dynamic;
    procedure ParentShowHintChanged; reintroduce; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; reintroduce; dynamic;
    function HitTest(X, Y: Integer): Boolean; reintroduce; virtual;
    procedure MouseEnter(AControl: TControl); reintroduce; dynamic;
    procedure MouseLeave(AControl: TControl); reintroduce; dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    property HintWindowClass: THintWindowClass read FHintWindowClass write FHintWindowClass;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  private
    FDotNetHighlighting: Boolean;
  protected
    procedure BoundsChanged; reintroduce; virtual;
    procedure CursorChanged; reintroduce; dynamic;
    procedure ShowingChanged; reintroduce; dynamic;
    procedure ShowHintChanged; reintroduce; dynamic;
    procedure ControlsListChanging(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure ControlsListChanged(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure GetDlgCode(var Code: TDlgCodes); virtual;
    procedure FocusSet(PrevWnd: THandle); virtual;
    procedure FocusKilled(NextWnd: THandle); virtual;
    function DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean; virtual;
  {$IFDEF JVCLThemesEnabledD6}
  private
    function GetParentBackground: Boolean;
  protected
    procedure SetParentBackground(Value: Boolean); virtual;
    property ParentBackground: Boolean read GetParentBackground write SetParentBackground;
  {$ENDIF JVCLThemesEnabledD6}
  published
    property DotNetHighlighting: Boolean read FDotNetHighlighting write FDotNetHighlighting default False;
  end;

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL: https://jvcl.svn.sourceforge.net/svnroot/jvcl/tags/JVCL3_45/run/JvExButtons.pas $';
    Revision: '$Revision: 13102 $';
    Date: '$Date: 2011-09-07 07:46:34 +0200 (mer., 07 sept. 2011) $';
    LogPath: 'JVCL\run'
  );
{$ENDIF UNITVERSIONING}

implementation

constructor TJvExSpeedButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clDefault;
end;

function TJvExSpeedButton.BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT;
var
  Mesg: TMessage;
begin
  CreateWMMessage(Mesg, Msg, WParam, LParam);
  inherited WndProc(Mesg);
  Result := Mesg.Result;
end;

function TJvExSpeedButton.BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(LParam));
end;

function TJvExSpeedButton.BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(@StructLParam));
end;

procedure TJvExSpeedButton.VisibleChanged;
begin
  BaseWndProc(CM_VISIBLECHANGED);
end;

procedure TJvExSpeedButton.EnabledChanged;
begin
  BaseWndProc(CM_ENABLEDCHANGED);
end;

procedure TJvExSpeedButton.TextChanged;
begin
  BaseWndProc(CM_TEXTCHANGED);
end;

procedure TJvExSpeedButton.FontChanged;
begin
  BaseWndProc(CM_FONTCHANGED);
end;

procedure TJvExSpeedButton.ColorChanged;
begin
  BaseWndProc(CM_COLORCHANGED);
end;

procedure TJvExSpeedButton.ParentFontChanged;
begin
  BaseWndProc(CM_PARENTFONTCHANGED);
end;

procedure TJvExSpeedButton.ParentColorChanged;
begin
  BaseWndProc(CM_PARENTCOLORCHANGED);
  if Assigned(OnParentColorChange) then
    OnParentColorChange(Self);
end;

procedure TJvExSpeedButton.ParentShowHintChanged;
begin
  BaseWndProc(CM_PARENTSHOWHINTCHANGED);
end;

function TJvExSpeedButton.WantKey(Key: Integer; Shift: TShiftState): Boolean;
begin
  Result := BaseWndProc(CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExSpeedButton.HitTest(X, Y: Integer): Boolean;
begin
  Result := BaseWndProc(CM_HITTEST, 0, SmallPointToLong(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

function TJvExSpeedButton.HintShow(var HintInfo: THintInfo): Boolean;
begin
  GetHintColor(HintInfo, Self, FHintColor);
  if FHintWindowClass <> nil then
    HintInfo.HintWindowClass := FHintWindowClass;
  Result := BaseWndProcEx(CM_HINTSHOW, 0, HintInfo) <> 0;
end;

procedure TJvExSpeedButton.MouseEnter(AControl: TControl);
begin
  FMouseOver := True;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  BaseWndProc(CM_MOUSEENTER, 0, AControl);
end;

procedure TJvExSpeedButton.MouseLeave(AControl: TControl);
begin
  FMouseOver := False;
  BaseWndProc(CM_MOUSELEAVE, 0, AControl);
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

procedure TJvExSpeedButton.FocusChanged(AControl: TWinControl);
begin
  BaseWndProc(CM_FOCUSCHANGED, 0, AControl);
end;

procedure TJvExSpeedButton.WndProc(var Msg: TMessage);
begin
  if not DispatchIsDesignMsg(Self, Msg) then
    case Msg.Msg of
      CM_DENYSUBCLASSING:
      Msg.Result := LRESULT(Ord(GetInterfaceEntry(IJvDenySubClassing) <> nil));
    CM_DIALOGCHAR:
      with TCMDialogChar{$IFDEF CLR}.Create{$ENDIF}(Msg) do
        Result := LRESULT(Ord(WantKey(CharCode, KeyDataToShiftState(KeyData))));
    CM_HINTSHOW:
      with TCMHintShow(Msg) do
        Result := LRESULT(HintShow(HintInfo^));
    CM_HITTEST:
      with TCMHitTest(Msg) do
        Result := LRESULT(HitTest(XPos, YPos));
    CM_MOUSEENTER:
      MouseEnter(TControl(Msg.LParam));
    CM_MOUSELEAVE:
      MouseLeave(TControl(Msg.LParam));
    CM_VISIBLECHANGED:
      VisibleChanged;
    CM_ENABLEDCHANGED:
      EnabledChanged;
    CM_TEXTCHANGED:
      TextChanged;
    CM_FONTCHANGED:
      FontChanged;
    CM_COLORCHANGED:
      ColorChanged;
    CM_FOCUSCHANGED:
      FocusChanged(TWinControl(Msg.LParam));
    CM_PARENTFONTCHANGED:
      ParentFontChanged;
    CM_PARENTCOLORCHANGED:
      ParentColorChanged;
    CM_PARENTSHOWHINTCHANGED:
      ParentShowHintChanged;
    else
      inherited WndProc(Msg);
    end;
end;

//============================================================================

constructor TJvExBitBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clDefault;
end;

function TJvExBitBtn.BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT;
var
  Mesg: TMessage;
begin
  CreateWMMessage(Mesg, Msg, WParam, LParam);
  inherited WndProc(Mesg);
  Result := Mesg.Result;
end;

function TJvExBitBtn.BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(LParam));
end;

function TJvExBitBtn.BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(@StructLParam));
end;

procedure TJvExBitBtn.VisibleChanged;
begin
  BaseWndProc(CM_VISIBLECHANGED);
end;

procedure TJvExBitBtn.EnabledChanged;
begin
  BaseWndProc(CM_ENABLEDCHANGED);
end;

procedure TJvExBitBtn.TextChanged;
begin
  BaseWndProc(CM_TEXTCHANGED);
end;

procedure TJvExBitBtn.FontChanged;
begin
  BaseWndProc(CM_FONTCHANGED);
end;

procedure TJvExBitBtn.ColorChanged;
begin
  BaseWndProc(CM_COLORCHANGED);
end;

procedure TJvExBitBtn.ParentFontChanged;
begin
  BaseWndProc(CM_PARENTFONTCHANGED);
end;

procedure TJvExBitBtn.ParentColorChanged;
begin
  BaseWndProc(CM_PARENTCOLORCHANGED);
  if Assigned(OnParentColorChange) then
    OnParentColorChange(Self);
end;

procedure TJvExBitBtn.ParentShowHintChanged;
begin
  BaseWndProc(CM_PARENTSHOWHINTCHANGED);
end;

function TJvExBitBtn.WantKey(Key: Integer; Shift: TShiftState): Boolean;
begin
  Result := BaseWndProc(CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExBitBtn.HitTest(X, Y: Integer): Boolean;
begin
  Result := BaseWndProc(CM_HITTEST, 0, SmallPointToLong(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

function TJvExBitBtn.HintShow(var HintInfo: THintInfo): Boolean;
begin
  GetHintColor(HintInfo, Self, FHintColor);
  if FHintWindowClass <> nil then
    HintInfo.HintWindowClass := FHintWindowClass;
  Result := BaseWndProcEx(CM_HINTSHOW, 0, HintInfo) <> 0;
end;

procedure TJvExBitBtn.MouseEnter(AControl: TControl);
begin
  FMouseOver := True;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  BaseWndProc(CM_MOUSEENTER, 0, AControl);
end;

procedure TJvExBitBtn.MouseLeave(AControl: TControl);
begin
  FMouseOver := False;
  BaseWndProc(CM_MOUSELEAVE, 0, AControl);
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

procedure TJvExBitBtn.FocusChanged(AControl: TWinControl);
begin
  BaseWndProc(CM_FOCUSCHANGED, 0, AControl);
end;

procedure TJvExBitBtn.BoundsChanged;
begin
end;

procedure TJvExBitBtn.CursorChanged;
begin
  BaseWndProc(CM_CURSORCHANGED);
end;

procedure TJvExBitBtn.ShowingChanged;
begin
  BaseWndProc(CM_SHOWINGCHANGED);
end;

procedure TJvExBitBtn.ShowHintChanged;
begin
  BaseWndProc(CM_SHOWHINTCHANGED);
end;

{ VCL sends CM_CONTROLLISTCHANGE and CM_CONTROLCHANGE in a different order than
  the CLX methods are used. So we must correct it by evaluating "Inserting". }
procedure TJvExBitBtn.ControlsListChanging(Control: TControl; Inserting: Boolean);
begin
  if Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExBitBtn.ControlsListChanged(Control: TControl; Inserting: Boolean);
begin
  if not Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExBitBtn.GetDlgCode(var Code: TDlgCodes);
begin
end;

procedure TJvExBitBtn.FocusSet(PrevWnd: THandle);
begin
  BaseWndProc(WM_SETFOCUS, Integer(PrevWnd), 0);
end;

procedure TJvExBitBtn.FocusKilled(NextWnd: THandle);
begin
  BaseWndProc(WM_KILLFOCUS, Integer(NextWnd), 0);
end;

function TJvExBitBtn.DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean;
begin
  Result := BaseWndProc(WM_ERASEBKGND, Canvas.Handle, Param) <> 0;
end;

{$IFDEF JVCLThemesEnabledD6}
function TJvExBitBtn.GetParentBackground: Boolean;
begin
  Result := JvThemes.GetParentBackground(Self);
end;

procedure TJvExBitBtn.SetParentBackground(Value: Boolean);
begin
  JvThemes.SetParentBackground(Self, Value);
end;
{$ENDIF JVCLThemesEnabledD6}

procedure TJvExBitBtn.WndProc(var Msg: TMessage);
var
  IdSaveDC: Integer;
  DlgCodes: TDlgCodes;
  Canvas: TCanvas;
begin
  if not DispatchIsDesignMsg(Self, Msg) then
  begin
    case Msg.Msg of
      CM_DENYSUBCLASSING:
      Msg.Result := LRESULT(Ord(GetInterfaceEntry(IJvDenySubClassing) <> nil));
    CM_DIALOGCHAR:
      with TCMDialogChar{$IFDEF CLR}.Create{$ENDIF}(Msg) do
        Result := LRESULT(Ord(WantKey(CharCode, KeyDataToShiftState(KeyData))));
    CM_HINTSHOW:
      with TCMHintShow(Msg) do
        Result := LRESULT(HintShow(HintInfo^));
    CM_HITTEST:
      with TCMHitTest(Msg) do
        Result := LRESULT(HitTest(XPos, YPos));
    CM_MOUSEENTER:
      MouseEnter(TControl(Msg.LParam));
    CM_MOUSELEAVE:
      MouseLeave(TControl(Msg.LParam));
    CM_VISIBLECHANGED:
      VisibleChanged;
    CM_ENABLEDCHANGED:
      EnabledChanged;
    CM_TEXTCHANGED:
      TextChanged;
    CM_FONTCHANGED:
      FontChanged;
    CM_COLORCHANGED:
      ColorChanged;
    CM_FOCUSCHANGED:
      FocusChanged(TWinControl(Msg.LParam));
    CM_PARENTFONTCHANGED:
      ParentFontChanged;
    CM_PARENTCOLORCHANGED:
      ParentColorChanged;
    CM_PARENTSHOWHINTCHANGED:
      ParentShowHintChanged;
    CM_CURSORCHANGED:
      CursorChanged;
    CM_SHOWINGCHANGED:
      ShowingChanged;
    CM_SHOWHINTCHANGED:
      ShowHintChanged;
    CM_CONTROLLISTCHANGE:
      if Msg.LParam <> 0 then
        ControlsListChanging(TControl(Msg.WParam), True)
      else
        ControlsListChanged(TControl(Msg.WParam), False);
    CM_CONTROLCHANGE:
      if Msg.LParam = 0 then
        ControlsListChanging(TControl(Msg.WParam), False)
      else
        ControlsListChanged(TControl(Msg.WParam), True);
    WM_SETFOCUS:
      FocusSet(THandle(Msg.WParam));
    WM_KILLFOCUS:
      FocusKilled(THandle(Msg.WParam));
    WM_SIZE, WM_MOVE:
      begin
        inherited WndProc(Msg);
        BoundsChanged;
      end;
    WM_ERASEBKGND:
      if (Msg.WParam <> 0) and not IsDefaultEraseBackground(DoEraseBackground, @TJvExBitBtn.DoEraseBackground) then
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against Stock-Objects from Canvas
        Canvas := TCanvas.Create;
        try
          Canvas.Handle := HDC(Msg.WParam);
          Msg.Result := Ord(DoEraseBackground(Canvas, Msg.LParam));
        finally
          Canvas.Handle := 0;
          Canvas.Free;
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end
      else
        inherited WndProc(Msg);
    {$IFNDEF DELPHI2007_UP}
    WM_PRINTCLIENT, WM_PRINT: // VCL bug fix
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against changes
        try
          inherited WndProc(Msg);
        finally
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end;
    {$ENDIF ~DELPHI2007_UP}
    WM_GETDLGCODE:
      begin
        inherited WndProc(Msg);
        DlgCodes := [dcNative] + DlgcToDlgCodes(Msg.Result);
        GetDlgCode(DlgCodes);
        if not (dcNative in DlgCodes) then
          Msg.Result := DlgCodesToDlgc(DlgCodes);
      end;
    else
      inherited WndProc(Msg);
    end;
    case Msg.Msg of // precheck message to prevent access violations on released controls
      CM_MOUSEENTER, CM_MOUSELEAVE, WM_KILLFOCUS, WM_SETFOCUS, WM_NCPAINT:
        if DotNetHighlighting then
          HandleDotNetHighlighting(Self, Msg, MouseOver, Color);
    end;
  end;
end;

//============================================================================

{$IFDEF UNITVERSIONING}
initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}

end.