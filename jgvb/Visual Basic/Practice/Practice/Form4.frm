VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form4 
   BackColor       =   &H00404000&
   Caption         =   "Form4"
   ClientHeight    =   7485
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14670
   LinkTopic       =   "Form4"
   ScaleHeight     =   7485
   ScaleWidth      =   14670
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&NEXT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11040
      TabIndex        =   8
      Top             =   6120
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   7
      Text            =   "10"
      Top             =   6240
      Width           =   495
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   600
      Top             =   6240
   End
   Begin VB.OptionButton Option4 
      Caption         =   "KOALA"
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
      Left            =   8760
      TabIndex        =   6
      Top             =   5160
      Width           =   2175
   End
   Begin VB.OptionButton Option3 
      Caption         =   "HORSE"
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
      Left            =   6360
      TabIndex        =   5
      Top             =   5160
      Width           =   2175
   End
   Begin VB.OptionButton Option2 
      Caption         =   "SEALS"
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
      Left            =   3960
      TabIndex        =   4
      Top             =   5160
      Width           =   2175
   End
   Begin VB.OptionButton Option1 
      Caption         =   "SHARK"
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
      Top             =   5160
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SHOW QUESTION"
      Height          =   615
      Left            =   1440
      TabIndex        =   1
      Top             =   3120
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "WHICH ANIMAL IS NOT PRESENT IN THE VIDEO ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   2
      Top             =   4080
      Width           =   9375
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   2775
      Left            =   1440
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   12135
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   21405
      _cy             =   4895
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public marks As Integer

Private Sub Command1_Click()
WindowsMediaPlayer1.Controls.stop
Label1.Visible = True
Option1.Visible = True
Option2.Visible = True
Option3.Visible = True
Option4.Visible = True
Text1.Visible = True
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Form4.Hide
Form5.Show
End Sub

Private Sub Form_Load()
marks = 0
WindowsMediaPlayer1.URL = "C:\Users\Public\Videos\Sample Videos\wildlife.wmv"
Label1.Visible = False
Option1.Visible = False
Option2.Visible = False
Option3.Visible = False
Option4.Visible = False
Text1.Visible = False
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
If Text1.Text = 0 Then
Timer1.Enabled = False
Form4.Hide
Form5.Show
Else
Text1.Text = Val(Text1.Text) - 1
End If
End Sub
