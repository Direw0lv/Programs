VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H00404000&
   Caption         =   "Form5"
   ClientHeight    =   6150
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15000
   LinkTopic       =   "Form5"
   ScaleHeight     =   6150
   ScaleWidth      =   15000
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&EXIT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7440
      TabIndex        =   8
      Top             =   4440
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9960
      TabIndex        =   7
      Top             =   3360
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&SCORE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7440
      TabIndex        =   6
      Top             =   3360
      Width           =   2175
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   720
      Top             =   3600
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   1320
      TabIndex        =   5
      Text            =   "10"
      Top             =   3480
      Width           =   615
   End
   Begin VB.OptionButton Option4 
      Caption         =   "MS DHONI"
      Height          =   615
      Left            =   8040
      TabIndex        =   4
      Top             =   1440
      Width           =   2175
   End
   Begin VB.OptionButton Option3 
      Caption         =   "VIRAT KOHLI"
      Height          =   615
      Left            =   5640
      TabIndex        =   3
      Top             =   1440
      Width           =   2175
   End
   Begin VB.OptionButton Option2 
      Caption         =   "SACHIN TENDULKAR"
      Height          =   615
      Left            =   3240
      TabIndex        =   2
      Top             =   1440
      Width           =   2175
   End
   Begin VB.OptionButton Option1 
      Caption         =   "SOURAV GANGULY"
      Height          =   615
      Left            =   840
      TabIndex        =   1
      Top             =   1440
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "WHO IS THE CAPTAIN OF THE INDIAN CRICKET TEAM ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   13815
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command1_Click()
Timer1.Enabled = False
If Form4.Option1.Value = True Then
Form4.marks = Form4.marks + 4
Else
Form4.marks = Form4.marks - 2
End If
If Form5.Option3.Value = True Then
Form4.marks = Form4.marks + 4
Else
Form4.marks = Form4.marks - 2
End If
Text2.Text = Form4.marks
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Command1.Enabled = False
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Form_Activate()
Option1.Value = False
Option2.Value = False
Option3.Value = False
Option4.Value = False
End Sub

Private Sub Timer1_Timer()
If Text1.Text = 0 Then
Command1_Click
Else
Text1.Text = Val(Text1.Text) - 1
End If
End Sub
