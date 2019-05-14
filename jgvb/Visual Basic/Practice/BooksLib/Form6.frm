VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   6345
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14700
   LinkTopic       =   "Form6"
   ScaleHeight     =   6345
   ScaleWidth      =   14700
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&GENERATE"
      Height          =   735
      Left            =   2880
      TabIndex        =   1
      Top             =   3720
      Width           =   2295
   End
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   11400
      Top             =   720
   End
   Begin VB.TextBox Text1 
      Height          =   1335
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   6975
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim n, a, b, c, d, x As Integer

Private Sub Command1_Click()
a = 0
b = 1
c = 0
n = InputBox("Enter range of series")
Timer1.Enabled = True
End Sub

Private Sub Form_Load()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
If c <= n Then
c = a + b
a = b
b = c
d = a + b
For x = c + 1 To d - 1
If x <= n Then
Text1.Text = Text1.Text & " " & x
Else
Exit For
End If
Next
Else
Timer1.Enabled = False
End If
End Sub
