Attribute VB_Name = "Module1"

Sub ����()
    MsgBox "�ȳ��ϼ���"
    
End Sub
Function hap(a, b)
    '�� �Լ��� a�� b�� ���ϴ� �Լ��̴�.
    'a�� b�� ����
    hap = a + b
End Function
Sub ����2()
    Dim a, b As Double
    a = 1
    b = 2
    MsgBox hap(a, b)
End Sub
Sub ����3()
    Dim x(3)
    x(1) = 3
    x(2) = 2
    x(3) = 1
    'UBound�¹迭�� ũ�⸦ �����ִ� �Լ�
    Dim y(2, 3)
    
    Dim z()
    n = 4
    ReDim z(n)
    
    z(1) = 3
    z(2) = 5
    
    '�迭 ����� �����ϵ� �ʱ�ȭ�� ���� ����
    n = 5
    ReDim Preserve z(n)
    
    MsgBox z(2)
End Sub
Sub ����4()
    '��Ʈ ���ڷ� �ҷ�����
    a = Sheets(1).Cells(1, 2)
    '��Ʈ �̸����� �ҷ�����
    'a = Sheets("sheet1").Cells(1, 2)
    b = Sheets(1).Cells(2, 2)
    Sheets(1).Cells(5, 2) = hap(a, b)
End Sub
