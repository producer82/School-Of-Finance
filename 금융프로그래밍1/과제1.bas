Attribute VB_Name = "Module1"
Sub °úÁ¦1()
    i = 2
    k = 15
    writePointer = 2
    
    Do
        k = 2
        If Sheets(1).Cells(9, i) = "" Then
            Exit Do
        End If
        
        Do
            If Sheets(1).Cells(k, i) = "" Then
                Exit Do
            End If
            
            Sheets(2).Cells(writePointer, 1) = Sheets(1).Cells(9, i)
            Sheets(2).Cells(writePointer, 2) = Sheets(1).Cells(k, 1)
            If Sheets(1).Cells(k, 3) <> "" Then
                Sheets(2).Cells(writePointer, 3) = Sheets(1).Cells(k, i)
            End If
            
            k = k + 1
            writePointer = writePointer + 1
        Loop
        
        i = i + 1
    Loop
End Sub
