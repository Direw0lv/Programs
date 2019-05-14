VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   6495
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14910
   LinkTopic       =   "Form2"
   ScaleHeight     =   6495
   ScaleWidth      =   14910
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   9960
      TabIndex        =   3
      Top             =   1200
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   855
      Left            =   5160
      TabIndex        =   1
      Top             =   600
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   1440
      TabIndex        =   0
      Top             =   600
      Width           =   3135
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2880
      TabIndex        =   2
      Top             =   2760
      Width           =   6375
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If InStr(1, Text1.Text, Text2.Text, vbTextCompare) <> 0 Then
Label1.Caption = "Substring found"
Else
Label1.Caption = "Substring not found"
End If
End Sub
