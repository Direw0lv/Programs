VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6990
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13695
   LinkTopic       =   "Form1"
   ScaleHeight     =   6990
   ScaleWidth      =   13695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&CHECK"
      Height          =   615
      Left            =   10080
      TabIndex        =   2
      Top             =   1440
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   4560
      TabIndex        =   0
      Top             =   840
      Width           =   2655
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
      Height          =   1095
      Left            =   3120
      TabIndex        =   1
      Top             =   2640
      Width           =   5415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If StrComp(Text1.Text, StrReverse(Text1.Text), vbTextCompare) = 0 Then
Label1.Caption = "Pallindrome"
Else
Label1.Caption = "Not Pallindrome"
End If
End Sub
