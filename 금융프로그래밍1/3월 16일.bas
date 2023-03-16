Attribute VB_Name = "Module1"
Sub 연습()
    Dim 주가수익률()
    
    i = 1
    Do
        If Sheets(1).Cells(i + 2, 3) = "" Then
            Exit Do
        End If
        
        ReDim Preserve 주가수익률(i)
        주가수익률(i) = Sheets(1).Cells(i + 2, 3)
        
        i = i + 1
    Loop
    
    Sheets(1).Cells(1, 5) = Application.Average(주가수익률)
    Sheets(1).Cells(2, 5) = Application.StDev(주가수익률)
    Sheets(1).Cells(3, 5) = Application.Sum(주가수익률)
End Sub

'이 함수는 양수 혹은 음수인 표본의 평균을 계산함
'b가 1이면 양수, -1이면 음수
Function conditionalAverage(x, b)
    tmpSum = 0      '합을 계산하는 변수
    tmpCount = 0    '갯수를 계산하는 변수
    
    If TypeName(x) = "Range" Then
        n = x.Rows.Count
    Else
        n = UBound(x)
    End If
    
    For i = 1 To n
        If x(i) * b > 0 Then
            tmpSum = tmpSum + x(i)
            tmpCount = tmpCount + 1
        End If
        
        conditionalAverage = tmpSum / tmpCount
    Next i
End Function

'이 함수는 양수 혹은 음수인 표본의 표준편차를 계산함
'b가 1이면 양수, -1이면 음수
Function conditionalStdev(x, b)
    Dim tmpArray()
    
    If TypeName(x) = "Range" Then
        n = x.Rows.Count
    Else
        n = UBound(x)
    End If
    
    For i = 1 To n
        If x(i) * b > 0 Then
            ReDim Preserve tmpArray(i)
            tmpArray(i) = x(i)
        End If
    Next i
    
    conditionalStdev = Application.StDev(tmpArray)
End Function

