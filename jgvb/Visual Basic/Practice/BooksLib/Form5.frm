VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H80000007&
   Caption         =   "Form5"
   ClientHeight    =   6360
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14415
   LinkTopic       =   "Form5"
   ScaleHeight     =   6360
   ScaleWidth      =   14415
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   11280
      Top             =   720
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H80000007&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   1335
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   3960
      Width           =   2415
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000007&
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   1335
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000007&
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   1335
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   840
      Width           =   2415
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H80000007&
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  'Solid
      Height          =   5175
      Left            =   5160
      Top             =   600
      Width           =   2895
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Timer1.Enabled = True
Shape1.Visible = True
Shape2.Visible = False
Shape3.Visible = False
End Sub


Private Sub Timer1_Timer()
If Shape1.Visible Then

Shape2.Visible = True
Shape1.Visible = False
Shape3.Visible = False

ElseIf Shape2.Visible Then

Shape3.Visible = True
Shape2.Visible = False
Shape1.Visible = False

Else

Shape1.Visible = True
Shape2.Visible = False
Shape3.Visible = False

End If
End Sub

