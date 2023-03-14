Attribute VB_Name = "Module1"
Sub 연습1()
    For i = 1 To 10
        For j = 1 To i
            Sheets(1).Cells(i, j) = "*"
        Next j
    Next i
End Sub
Sub 연습2()
    Dim x(20)
    tmpSum = 0
    
    For i = 1 To 20
        x(i) = Sheets(1).Cells(i, 1)
    Next i
    
    MsgBox Application.Sum(x)
    
    For i = 1 To UBound(x)
        tmpSum = tmpSum + x(i)
    Next i
    
    MsgBox (tmpSum)
End Sub
Sub 연습3()
    '난수
    Randomize
    x = Rnd
    
    'MsgBox x
    
    If x > 0.9 Then
        damage = 10 * x * 3
    Else
        damage = 10 * x
    End If
    
    MsgBox damage
End Sub
Sub 연습4()
    Dim x()
    i = 1 '셀은 1번셀부터
    
    Do
        If Sheets(1).Cells(i, 1) = "" Then
            Exit Do
        End If
        
        ReDim Preserve x(i)
        x(i) = Sheets(1).Cells(i, 1)
        
        i = i + 1
    Loop
    
    MsgBox Application.Average(x)
End Sub
Sub 연습5()
    tmpSum = 0
    For i = 1 To 10
        If i Mod 2 = 1 Then
            tmpSum = tmpSum + i
        End If
    Next i
    
    MsgBox tmpSum
End Sub
Sub 연습6()
    Dim x(3, 3)
    tmpSum = 0
    
    For i = 1 To 3
        For j = 1 To 3
            x(i, j) = Sheets(1).Cells(i + 2, j + 4)
        Next j
    Next i
    
    For i = 1 To 3
        For j = 1 To 3
            tmpSum = tmpSum + x(i, j)
        Next j
    Next i
    
    MsgBox tmpSum
End Sub
Sub 연습7()
    Dim x()
    
    i = 1 '셀은 1번셀부터
    tmpSum = 0
    
    Do
        If Sheets(2).Cells(i, 1) = "" Then
            Exit Do
        End If
        
        ReDim Preserve x(i)
        x(i) = Sheets(2).Cells(i, 1)
        
        If x(i) > 0 Then
            tmpSum = tmpSum + x(i)
        End If
        
        i = i + 1
    Loop
    
    Sheets(2).Cells(1, 4) = Application.Sum(x)
    Sheets(2).Cells(2, 4) = Application.Average(x)
    Sheets(2).Cells(3, 4) = Application.StDev(x)
    Sheets(2).Cells(3, 4) = tmpSum
End Sub
