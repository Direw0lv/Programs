VERSION 5.00
Begin VB.Form Form8 
   Caption         =   "Form8"
   ClientHeight    =   9915
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14130
   LinkTopic       =   "Form8"
   ScaleHeight     =   9915
   ScaleWidth      =   14130
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   6360
      PasswordChar    =   "*"
      TabIndex        =   17
      Top             =   8520
      Width           =   2535
   End
   Begin VB.TextBox Text5 
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   6360
      PasswordChar    =   "*"
      TabIndex        =   15
      Top             =   7200
      Width           =   2535
   End
   Begin VB.TextBox Text4 
      Height          =   735
      Left            =   6360
      TabIndex        =   13
      Top             =   6000
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&RESET"
      Height          =   735
      Left            =   9960
      TabIndex        =   11
      Top             =   1560
      Width           =   1935
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "Form8.frx":0000
      Left            =   6360
      List            =   "Form8.frx":000D
      TabIndex        =   10
      Top             =   5040
      Width           =   2535
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form8.frx":002B
      Left            =   6360
      List            =   "Form8.frx":003B
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   3960
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&SUBMIT"
      Height          =   735
      Left            =   9960
      TabIndex        =   3
      Top             =   360
      Width           =   1935
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   6360
      TabIndex        =   2
      Top             =   2640
      Width           =   2535
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   6360
      TabIndex        =   1
      Top             =   1440
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   6360
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label Label8 
      Caption         =   "RE-ENTER PASSWORD : "
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
      Left            =   240
      TabIndex        =   16
      Top             =   8520
      Width           =   5895
   End
   Begin VB.Label Label7 
      Caption         =   "PASSWORD : "
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
      Left            =   1200
      TabIndex        =   14
      Top             =   7320
      Width           =   3495
   End
   Begin VB.Label Label6 
      Caption         =   "EMAIL_ID : "
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
      Left            =   1200
      TabIndex        =   12
      Top             =   6120
      Width           =   2775
   End
   Begin VB.Label Label5 
      Caption         =   "GENDER : "
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
      Left            =   1200
      TabIndex        =   9
      Top             =   4920
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "DEPARTMENT : "
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
      Left            =   1200
      TabIndex        =   8
      Top             =   3840
      Width           =   3975
   End
   Begin VB.Label Label3 
      Caption         =   "DATE OF BIRTH : "
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
      Left            =   1200
      TabIndex        =   7
      Top             =   2640
      Width           =   4335
   End
   Begin VB.Label Label2 
      Caption         =   "MOBILE NUMBER : "
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
      Left            =   1200
      TabIndex        =   6
      Top             =   1440
      Width           =   4695
   End
   Begin VB.Label Label1 
      Caption         =   "NAME : "
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
      Left            =   1200
      TabIndex        =   5
      Top             =   360
      Width           =   1935
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim c, at, od, td, att As Integer

Private Sub Combo1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Combo2.SetFocus
End If
End Sub

Private Sub Combo2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Text4.SetFocus
End If
End Sub

Private Sub Command1_Click()
at = InStr(1, Text4.Text, "@", vbTextCompare)
att = InStr(at + 1, Text4.Text, "@", vbTextCompare)
od = InStr(at + 2, Text4.Text, ".", vbTextCompare)
td = InStr(at + 2, Text4.Text, "..", vbTextCompare)
If IsDate(Text3.Text) = False Then
MsgBox ("Enter valid date")
Text3.Text = ""
ElseIf Text1.Text = "" Then
MsgBox ("Enter valid name")
ElseIf Text2.Text = "" Or c <> 10 Then
MsgBox ("Enter valid mobile number")
ElseIf at = 0 Or od = 0 Or Not td = 0 Or Not att = 0 Or Right(Text4.Text, 1) = "." Or Text4.Text = "" Then
MsgBox ("Enter valid email_id")
ElseIf Len(Text5.Text) < 8 Or Text5.Text = "" Then
MsgBox ("Password must be of 8 characters")
Text5.Text = ""
Text6.Text = ""
Text5.SetFocus
ElseIf Text5.Text <> Text6.Text Then
MsgBox ("Re enter password correctly")
Text6.Text = ""
Else
End
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
End Sub

Private Sub Form_Load()
c = 0
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii >= 48 And KeyAscii <= 57 Then
KeyAscii = 0
MsgBox ("NO DIGIT")
End If
If KeyAscii = 13 Then
Text2.SetFocus
End If
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
If KeyAscii <> 8 And KeyAscii <> 13 Then
c = c + 1
End If
If KeyAscii = 13 And c < 10 Then
MsgBox ("Enter a valid mobile number")
ElseIf KeyAscii = 13 Then
Text3.SetFocus
ElseIf KeyAscii < 48 Or KeyAscii > 57 Then
If KeyAscii <> 8 Then
KeyAscii = 0
MsgBox ("Enter number only")
c = c - 1
Else
c = c - 1
End If
ElseIf c > 10 Then
KeyAscii = 0
MsgBox ("Only 10 digits allowed")
c = c - 1
End If
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) And KeyAscii <> 8 And KeyAscii <> 47 And KeyAscii <> 13 And KeyAscii <> 46 Then
KeyAscii = 0
MsgBox ("NO ALPHABET")
End If
If KeyAscii = 13 Then
Combo1.SetFocus
End If
End Sub

Private Sub Text4_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Text5.SetFocus
End If
End Sub

Private Sub Text5_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Text6.SetFocus
End If
End Sub

Private Sub Text6_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If
End Sub
