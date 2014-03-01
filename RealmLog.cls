VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub CB_Abyss_Click()
    FillData "Start", "Abyss"
End Sub

Private Sub CB_ATT_Click()
    FillData "Pot", "ATT"
End Sub

Private Sub CB_Cemetary_Click()
    FillData "Start", "Cemetary"
End Sub

Private Sub CB_DEF_Click()
    FillData "Pot", "DEF"
End Sub

Private Sub CB_DEX_Click()
    FillData "Pot", "DEX"
End Sub

Private Sub CB_UDL_Click()
    FillData "Start", "UDL"
End Sub

Private Sub CB_LIFE_Click()
    FillData "Pot", "LIFE"
End Sub

Private Sub CB_MANA_Click()
    FillData "Pot", "MANA"
End Sub

Private Sub CB_Manor_Click()
    FillData "Start", "Manor"
End Sub

Private Sub CB_Pentaract_Click()
    FillData "Start", "Pentaract"
End Sub

Private Sub CB_Pit_Click()
    FillData "Start", "Pit"
End Sub

Private Sub CB_Reset_Click()
    Dim row As Integer
    If MsgBox("Clear all data?", vbOKCancel, "Reset") = vbOK Then
        row = Cells(Cells.Rows.Count, 1).End(xlUp).row
        Range(Cells(4, 1), Cells(row, 9)).Delete Shift:=xlShiftUp
    End If
End Sub

Private Sub CB_SPD_Click()
    FillData "Pot", "SPD"
End Sub

Private Sub CB_Sprite_Click()
    FillData "Start", "Sprite"
End Sub

Sub FillData(value1 As String, Optional value2 As String = "")
    Dim lastRow As Integer
    Dim time As Variant
    Application.ScreenUpdating = False
    timestamp = Now
    If value1 = "Nexus" Then value2 = InputBox("Enter XP (hit return to skip)", "Nexus", "")
    lastRow = Cells(Cells.Rows.Count, 1).End(xlUp).row + 1
    Range(Cells(4, 1), Cells(lastRow, 9)).Copy
    Range("A5").Select
    ActiveSheet.Paste
    Range("A4").Select
    Cells(4, 1) = timestamp
    Cells(4, 2) = value1
    Cells(4, 3) = value2
    Cells(4, 4).Formula = "=IF(Time 3:3=""Time"",0,IF(Event=""Nexus"",0,(Time 3:3-Time)*24*60))"
    Cells(4, 5).Formula = "=Duration + Elapsed 5:5*(Active=Active 5:5)*(Dungeon=Dungeon 5:5)*(Duration>0)"
    Cells(4, 6).Formula = "=IF(Event=""Pot"",VLOOKUP(Data,PotValues,2,FALSE),"""")"
    Cells(4, 7).Formula = "=IF(Event=""Nexus"","""",""Active"")"
    Cells(4, 8).Formula = "=IF(Event=""Start"",""Dungeon"",IF(OR(Event=""Realm"",Event=""Nexus""),"""",Dungeon 5:5))"
    Cells(4, 9).Formula = "=IF(AND(Active=""Active"",Dungeon=""""),""Realm"","""")"
    Range("J1").Select
    Application.ScreenUpdating = True
End Sub

Private Sub CB_Realm_Click()
    FillData "Realm"
End Sub

Private Sub CB_Nexus_Click()
    FillData "Nexus"
End Sub

Private Sub CB_Trench_Click()
    FillData "Start", "Trench"
End Sub

Private Sub CB_Back_Click()
    Dim lastRow As Integer
    Application.ScreenUpdating = False
    lastRow = Cells(Cells.Rows.Count, 1).End(xlUp).row
    Range(Cells(5, 1), Cells(lastRow, 9)).Copy
    Range("A4").Select
    ActiveSheet.Paste
    Range("A4").Select
    Range(Cells(lastRow, 1), Cells(lastRow, 9)).Delete Shift:=xlShiftUp
    Application.ScreenUpdating = True
End Sub

Private Sub CB_Troom_Click()
    FillData "Found", "Troom"
End Sub

Private Sub CB_VIT_Click()
    FillData "Pot", "VIT"
End Sub

Private Sub CB_White_Click()
    FillData "Found", "White"
End Sub

Private Sub CB_WIS_Click()
    FillData "Pot", "WIS"
End Sub

