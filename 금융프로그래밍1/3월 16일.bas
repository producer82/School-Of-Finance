Attribute VB_Name = "Module1"
Sub ����()
    Dim �ְ����ͷ�()
    
    i = 1
    Do
        If Sheets(1).Cells(i + 2, 3) = "" Then
            Exit Do
        End If
        
        ReDim Preserve �ְ����ͷ�(i)
        �ְ����ͷ�(i) = Sheets(1).Cells(i + 2, 3)
        
        i = i + 1
    Loop
    
    Sheets(1).Cells(1, 5) = Application.Average(�ְ����ͷ�)
    Sheets(1).Cells(2, 5) = Application.StDev(�ְ����ͷ�)
    Sheets(1).Cells(3, 5) = Application.Sum(�ְ����ͷ�)
End Sub

'�� �Լ��� ��� Ȥ�� ������ ǥ���� ����� �����
'b�� 1�̸� ���, -1�̸� ����
Function conditionalAverage(x, b)
    tmpSum = 0      '���� ����ϴ� ����
    tmpCount = 0    '������ ����ϴ� ����
    
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

'�� �Լ��� ��� Ȥ�� ������ ǥ���� ǥ�������� �����
'b�� 1�̸� ���, -1�̸� ����
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

