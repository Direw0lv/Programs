VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   5490
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13425
   LinkTopic       =   "Form7"
   ScaleHeight     =   5490
   ScaleWidth      =   13425
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "&EXIT"
      Height          =   855
      Left            =   7200
      TabIndex        =   6
      Top             =   3600
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   1200
      TabIndex        =   5
      Top             =   2760
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&COLSUM"
      Height          =   855
      Left            =   7200
      TabIndex        =   4
      Top             =   2520
      Width           =   2055
   End
   Begin VB.ListBox List2 
      Height          =   2010
      Left            =   4080
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&ROWSUM"
      Height          =   855
      Left            =   7200
      TabIndex        =   2
      Top             =   1440
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&GENERATE"
      Height          =   855
      Left            =   7200
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin VB.ListBox List1 
      Height          =   2010
      Left            =   1200
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim a(2, 2) As Integer
Dim str As String
Dim i, j, s As Integer

Private Sub Command1_Click()
List1.Clear
For i = 0 To 2
str = ""
For j = 0 To 2
a(i, j) = InputBox("Enter 9 elements one by one")
str = str & space(3) & a(i, j)
Next
List1.AddItem str
Next
End Sub

Private Sub Command2_Click()
List2.Clear
For i = 0 To 2
s = 0
For j = 0 To 2
s = s + Val(a(i, j))
Next
List2.AddItem s
Next
End Sub

Private Sub Command3_Click()
Text1.Text = ""
For i = 0 To 2
s = 0
For j = 0 To 2
s = s + Val(a(j, i))
Next
Text1.Text = Text1.Text & space(3) & s
Next
End Sub

Private Sub Command4_Click()
End
End Sub
