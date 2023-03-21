Attribute VB_Name = "Module2"
Sub 연습1()
    x0 = 5
    i = 1
    Do
        x1 = x0 - myFunction(x0) / myFunctionDe(x0)
        
        If Abs(x1 - x0) < 0.00001 Or i = 1000 Then
            Exit Do
        End If
    
        x0 = x1 '이게 중요
        i = i + 1
    Loop
    
    If i < 1000 Then
        MsgBox x1
    Else
        MsgBox "Not Converged"
    End If
End Sub

Function myFunction(x)
    myFuncton = x * x - 2 * x
    
End Function

Function myFunctionDe(x)
    myFunctionDe = 2 * x - 2
    
End Function
