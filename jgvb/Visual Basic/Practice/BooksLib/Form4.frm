VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   7080
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13770
   LinkTopic       =   "Form4"
   ScaleHeight     =   7080
   ScaleWidth      =   13770
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "&AVERAGE"
      Height          =   615
      Left            =   7680
      TabIndex        =   8
      Top             =   6000
      Width           =   2055
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   4800
      TabIndex        =   7
      Top             =   3960
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&SORT"
      Height          =   615
      Left            =   5400
      TabIndex        =   5
      Top             =   6000
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   6360
      TabIndex        =   4
      Top             =   2160
      Width           =   5895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&GENERATE"
      Height          =   615
      Left            =   3120
      TabIndex        =   1
      Top             =   6000
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   6480
      TabIndex        =   0
      Top             =   600
      Width           =   5895
   End
   Begin VB.Label Label3 
      Caption         =   "AVERAGE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   6
      Top             =   3960
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "SORTED ARRAY"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Top             =   2400
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "UNSORTED ARRAY"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   840
      Width           =   3615
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim a(4) As Integer
Dim i, j, t As Integer
Dim str As String
Private Sub Command1_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
str = ""
For i = 0 To 4
a(i) = InputBox("Enter a number ")
str = str & space(2) & a(i)
Next
Text1.Text = str
End Sub

Private Sub Command2_Click()
For i = 0 To 4
For j = 0 To 5 - i - 2
If Val(a(j)) > Val(a(j + 1)) Then
t = a(j)
a(j) = a(j + 1)
a(j + 1) = t
End If
Next
Next
str = ""
For i = 0 To 4
str = str & space(2) & a(i)
Next
Text2.Text = str
End Sub

Private Sub Command4_Click()
t = 0
For i = 0 To 4
t = t + a(i)
Next
Text3.Text = t / 5
End Sub
