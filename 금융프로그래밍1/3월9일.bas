Attribute VB_Name = "Module1"

Sub 연습()
    MsgBox "안녕하세요"
    
End Sub
Function hap(a, b)
    '이 함수는 a와 b를 더하는 함수이다.
    'a와 b는 숫자
    hap = a + b
End Function
Sub 연습2()
    Dim a, b As Double
    a = 1
    b = 2
    MsgBox hap(a, b)
End Sub
Sub 연습3()
    Dim x(3)
    x(1) = 3
    x(2) = 2
    x(3) = 1
    'UBound는배열의 크기를 돌려주는 함수
    Dim y(2, 3)
    
    Dim z()
    n = 4
    ReDim z(n)
    
    z(1) = 3
    z(2) = 5
    
    '배열 사이즈를 유지하되 초기화는 하지 않음
    n = 5
    ReDim Preserve z(n)
    
    MsgBox z(2)
End Sub
Sub 연습4()
    '시트 숫자로 불러오기
    a = Sheets(1).Cells(1, 2)
    '시트 이름으로 불러오기
    'a = Sheets("sheet1").Cells(1, 2)
    b = Sheets(1).Cells(2, 2)
    Sheets(1).Cells(5, 2) = hap(a, b)
End Sub
