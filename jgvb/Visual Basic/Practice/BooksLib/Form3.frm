VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   5805
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12735
   LinkTopic       =   "Form3"
   ScaleHeight     =   5805
   ScaleWidth      =   12735
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&Count Words"
      Height          =   735
      Left            =   1560
      TabIndex        =   1
      Top             =   3720
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   2655
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   8175
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5640
      TabIndex        =   2
      Top             =   3720
      Width           =   2655
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim str As String
Dim space As String
Dim w() As String

Private Sub Command1_Click()
str = Text1.Text
space = " "
w = Split(str, space)
Label1.Caption = "There are " & UBound(w) + 1 & " words"
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If
End Sub
