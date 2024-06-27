# Tetris-84 Tutorial

## Zoom

Zoom: https://github.com/nineteendo/ti-84-plus-programs/tree/master/zoom

## The Full Program

```ti-basic
{16,19→dim([A]
Fill(1,[A]
3→dim(⌊TS  // Execute `"→TS` if you don't see this
Repeat C=1
    For(A,3,14
        For(B,2,17
            0→[A](A,B
        End
    End
    ClrDraw
    Vertical 0
    Vertical 50
    Text(−1,5,56,"TETRIS
    For(A,54,92,2
        Pt-On(A,60
        Pt-On(A,48
    End
    For(A,49,59,2
        Pt-On(53,A
        Pt-On(93,A
    End
    Text(18,58,"LEVEL
    Text(18,80,"01
    For(A,79,87,2
        Pt-On(A,45
        Pt-On(A,37
    End
    For(A,38,44,2
        Pt-On(78,A
        Pt-On(88,A
    End
    For(A,59,87,2
        Pt-On(A,34
        Pt-On(A,20
        Pt-On(A,17
        Pt-On(A,9
    End
    For(A,21,33,2
        Pt-On(58,A
        Pt-On(88,A
    End
    Text(46,60,"0000000
    For(A,10,16,2
        Pt-On(58,A
        Pt-On(88,A
    End
    Text(57,65,"MENU
    Line(63,0,63,5
    Line(64,6,80,6
    Line(81,0,81,5
    DelVar CDelVar DDelVar EDelVar FDelVar GDelVar HDelVar IDelVar N1→O
    randInt(1,7→L
    1→A
    18→B
    17→M
    Repeat not(A(Ans=14 or C=4
        0
        Repeat C=14 or B=2
            If Ans
            Then
                1→[A](A,B
                1→[A](A+D,B+E
                1→[A](A+F,B+G
                1→[A](A+H,B+I
                DelVar GIf B<M
                    B→M
                If B<5
                    5→M
                For(E,M-2,17
                    If [A](3,E)[A](4,E)[A](5,E)[A](6,E)[A](7,E)[A](8,E)[A](9,E)[A](10,E)[A](11,E)[A](12,E)[A](13,E)[A](14,E
                    Then
                        For(F,E,M-2,−1
                            For(D,3,14
                                [A](D,F-1→[A](D,F
                                Pt-On(4D-9,69-4F,2
                                Pt-Off(4D-9,69-4F,1+not(Ans
                            End
                        End
                        G+1→G
                        N+10³G→N
                        Text(46,84-4int(log(N)),N
                        1+int(N/5000→O
                        Text(18,84-4int(log(O)),O
                        M+1→M
                    End
                End
                1→D
                DelVar E1→G
                −1→F
                Ans→H
                1→I
                If L=1
                    DelVar F1→H
                If L=2
                    DelVar GDelVar I2→F
                If L=3
                    DelVar G
                If L=4
                    DelVar GDelVar H
                If L=5
                    DelVar I1→F
                If L=6
                    DelVar F
                If L=7
                Then
                    DelVar F1→H
                    −1→D
                End
                randInt(1,7→L
                Text(−1,30,64,"     // 3 spaces
                Text(−1,33,64,"     // 3 spaces
                If L=1
                Then
                    Text(33,70,"▫▫
                    Pt-On(71,29,2
                    Pt-On(75,29,2
                End
                If L=2
                    Text(31,66,"▫▫▫▫
                If L>2 and L<6
                Then
                    Text(29,68,"▫▫▫
                    Pt-On(57+4L,25,2
                End
                If L=6
                Then
                    Text(33,68,"▫▫
                    Pt-On(73,29,2
                    Pt-On(77,29,2
                End
                If L=7
                Then
                    Text(33,72,"▫▫
                    Pt-On(69,29,2
                    Pt-On(73,29,2
                End
                DelVar K8→A
                2→B
            End
            Repeat C=14 or Ansnot(CK
                Repeat C=14 or C=25 or Ans
                    Pt-On(4A-9,69-4B,2
                    Pt-On(4A+4D-9,69-4B-4E,2
                    Pt-On(4A+4F-9,69-4B-4G,2
                    Pt-On(4A+4H-9,69-4B-4I,2
                    getKey→C
                    If Ans or K≥25-O  // Change `25` for different difficulty
                    Then
                        Pt-Off(4A-9,69-4B,2
                        Pt-Off(4A+4D-9,69-4B-4E,2
                        Pt-Off(4A+4F-9,69-4B-4G,2
                        Pt-Off(4A+4H-9,69-4B-4I,2
                        If C=34 or K≥25-O  // Change `25` for different difficulty
                        Then
                            B+1→B
                            −1→K
                        End
                    End
                    K+1→K
                    A+(C=26)-(C=24→A
                    [A](A,B)+[A](A+D,B+E)+[A](A+F,B+G)+[A](A+H,B+I
                End
                DelVar YIf C=25
                Then
                    E→Y
                    D→E
                    −Y→D
                    G→Y
                    F→G
                    −Y→F
                    I→Y
                    H→I
                    −Y→H
                    −3→Y
                End
                For(θ,0,1
                    If [A](A,B) or [A](A+D,B+E) or [A](A+F,B+G) or [A](A+H,B+I
                    Then
                        If θ
                            B-(C=34 or not(K→B
                        If Y=−3
                        Then
                            D→Y
                            E→D
                            −Y→E
                            F→Y
                            G→F
                            −Y→G
                            H→Y
                            I→H
                            −Y→I
                        Else
                            A+(C=24)-(C=26→A
                        End
                    End
                End
                [A](A,B+1)+[A](A+D,B+E+1)+[A](A+F,B+G+1)+[A](A+H,B+I+1
            End
            Pt-On(4A-9,69-4B,2
            Pt-On(4A+4D-9,69-4B-4E,2
            Pt-On(4A+4F-9,69-4B-4G,2
            Pt-On(4A+4H-9,69-4B-4I,2
        End
        If C≠14
        Then
            If sum(N>⌊TS
                N→⌊TS(3
            SortD(⌊TS
            For(Y,0,14
                Text(57-4Y,2,"▫▫▫▫▫▫▫▫▫▫▫▫
            End
            For(Y,0,14
                Text(−1,4Y,2,"          // 8 spaces
            End
            For(θ,0,1
                For(A,1,4
                    For(B,0,56,8
                        Text(−1,B,6A+8,sub("GAMEOVER",A+4θ,1
                    End
                End
            End
            DelVar A
        End
        StorePic 1
        For(Y,30,46
            Line(5,Y+1,45,Y+1
            Line(5,61-Y,45,61-Y
            Line(6,Y,44,Y,0
            Line(6,62-Y,44,62-Y,0
        End
        4→C
        Repeat C≠2 or Ans=14
            For(θ,0,3
                Text(17+7θ,17,sub("BACKNEW RANKQUIT",1+4θ,4  // 1 space before RANK
            End
            getKey
            Repeat sum(Ans={14,21,105
                Pt-Off(11,13+7C,1+(0<Ans
                C-(Ans=34)+(Ans=25
                Ans+4((Ans<1)-(Ans>4→C
                Pt-On(11,13+7C,2
                getKey
            End
            If C=2 and Ans≠14
            Then
                For(θ,0,1
                    Text(−1,7θ+17,17,"      // 4 spaces
                End
                For(Y,31,38
                    Text(Y,10,"▫   RANK  // 3 spaces before RANK
                End
                If sum(⌊TS≥10^7
                    Fill(0,⌊TS
                For(θ,1,3
                    Text(10+7θ,17,⌊TS(θ
                End
                Repeat getKey
                End
                For(θ,0,1
                    Text(−1,8θ+17,15,"       // 5 spaces
                End
                For(Y,0,7
                    Text(38-Y,10,"▫   RANK             // 11 spaces, 3 before RANK
                End
            End
        End
        ClrDraw
        RecallPic 1
    End
End
ClrDraw
DelVar [A]DelVar Pic1Disp 
```

## Variation (A) - Tetris-83

```diff
 {16,19→dim([A]
 Fill(1,[A]
 3→dim(⌊TS  // Execute `"→TS` if you don't see this
 Repeat C=1
     For(A,3,14
         For(B,2,17
             0→[A](A,B
         End
     End
     ClrDraw
     Vertical 0
     Vertical 50
     Text(−1,5,56,"TETRIS
     For(A,54,92,2
         Pt-On(A,60
         Pt-On(A,48
     End
     For(A,49,59,2
         Pt-On(53,A
         Pt-On(93,A
     End
     Text(18,58,"LEVEL
     Text(18,80,"01
     For(A,79,87,2
         Pt-On(A,45
         Pt-On(A,37
     End
     For(A,38,44,2
         Pt-On(78,A
         Pt-On(88,A
     End
     For(A,59,87,2
         Pt-On(A,34
         Pt-On(A,20
         Pt-On(A,17
         Pt-On(A,9
     End
     For(A,21,33,2
         Pt-On(58,A
         Pt-On(88,A
     End
     Text(46,60,"0000000
     For(A,10,16,2
         Pt-On(58,A
         Pt-On(88,A
     End
     Text(57,65,"MENU
     Line(63,0,63,5
     Line(64,6,80,6
     Line(81,0,81,5
     DelVar CDelVar DDelVar EDelVar FDelVar GDelVar HDelVar IDelVar N1→O
     randInt(1,7→L
     1→A
     18→B
     17→M
     Repeat not(A(Ans=14 or C=4
         0
         Repeat C=14 or B=2
             If Ans
             Then
                 1→[A](A,B
                 1→[A](A+D,B+E
                 1→[A](A+F,B+G
                 1→[A](A+H,B+I
                 DelVar GIf B<M
                     B→M
                 If B<5
                     5→M
                 For(E,M-2,17
                     If [A](3,E)[A](4,E)[A](5,E)[A](6,E)[A](7,E)[A](8,E)[A](9,E)[A](10,E)[A](11,E)[A](12,E)[A](13,E)[A](14,E
                     Then
                         For(F,E,M-2,−1
                             For(D,3,14
                                 [A](D,F-1→[A](D,F
                                 Pt-On(4D-9,69-4F,2
                                 Pt-Off(4D-9,69-4F,1+not(Ans
                             End
                         End
                         G+1→G
                         N+10³G→N
                         Text(46,84-4int(log(N)),N
                         1+int(N/5000→O
                         Text(18,84-4int(log(O)),O
                         M+1→M
                     End
                 End
                 1→D
                 DelVar E1→G
                 −1→F
                 Ans→H
                 1→I
                 If L=1
                     DelVar F1→H
                 If L=2
                     DelVar GDelVar I2→F
                 If L=3
                     DelVar G
                 If L=4
                     DelVar GDelVar H
                 If L=5
                     DelVar I1→F
                 If L=6
                     DelVar F
                 If L=7
                 Then
                     DelVar F1→H
                     −1→D
                 End
                 randInt(1,7→L
                 Text(−1,30,64,"     // 3 spaces
                 Text(−1,33,64,"     // 3 spaces
                 If L=1
                 Then
                     Text(33,70,"▫▫
                     Pt-On(71,29,2
                     Pt-On(75,29,2
                 End
                 If L=2
                     Text(31,66,"▫▫▫▫
                 If L>2 and L<6
                 Then
                     Text(29,68,"▫▫▫
                     Pt-On(57+4L,25,2
                 End
                 If L=6
                 Then
                     Text(33,68,"▫▫
                     Pt-On(73,29,2
                     Pt-On(77,29,2
                 End
                 If L=7
                 Then
                     Text(33,72,"▫▫
                     Pt-On(69,29,2
                     Pt-On(73,29,2
                 End
                 DelVar K8→A
                 2→B
             End
             Repeat C=14 or Ansnot(CK
                 Repeat C=14 or C=25 or Ans
                     Pt-On(4A-9,69-4B,2
                     Pt-On(4A+4D-9,69-4B-4E,2
                     Pt-On(4A+4F-9,69-4B-4G,2
                     Pt-On(4A+4H-9,69-4B-4I,2
                     getKey→C
                     If Ans or K≥25-O  // Change `25` for different difficulty
                     Then
                         Pt-Off(4A-9,69-4B,2
                         Pt-Off(4A+4D-9,69-4B-4E,2
                         Pt-Off(4A+4F-9,69-4B-4G,2
                         Pt-Off(4A+4H-9,69-4B-4I,2
                         If C=34 or K≥25-O  // Change `25` for different difficulty
                         Then
                             B+1→B
                             −1→K
                         End
                     End
                     K+1→K
                     A+(C=26)-(C=24→A
                     [A](A,B)+[A](A+D,B+E)+[A](A+F,B+G)+[A](A+H,B+I
                 End
                 DelVar YIf C=25
                 Then
                     E→Y
                     D→E
                     −Y→D
                     G→Y
                     F→G
                     −Y→F
                     I→Y
                     H→I
                     −Y→H
                     −3→Y
                 End
                 For(θ,0,1
                     If [A](A,B) or [A](A+D,B+E) or [A](A+F,B+G) or [A](A+H,B+I
                     Then
                         If θ
                             B-(C=34 or not(K→B
                         If Y=−3
                         Then
                             D→Y
                             E→D
                             −Y→E
                             F→Y
                             G→F
                             −Y→G
                             H→Y
                             I→H
                             −Y→I
                         Else
                             A+(C=24)-(C=26→A
                         End
                     End
                 End
                 [A](A,B+1)+[A](A+D,B+E+1)+[A](A+F,B+G+1)+[A](A+H,B+I+1
             End
             Pt-On(4A-9,69-4B,2
             Pt-On(4A+4D-9,69-4B-4E,2
             Pt-On(4A+4F-9,69-4B-4G,2
             Pt-On(4A+4H-9,69-4B-4I,2
         End
         If C≠14
         Then
             If sum(N>⌊TS
                 N→⌊TS(3
             SortD(⌊TS
             For(Y,0,14
                 Text(57-4Y,2,"▫▫▫▫▫▫▫▫▫▫▫▫
             End
             For(Y,0,14
                 Text(−1,4Y,2,"          // 8 spaces
             End
             For(θ,0,1
                 For(A,1,4
                     For(B,0,56,8
                         Text(−1,B,6A+8,sub("GAMEOVER",A+4θ,1
                     End
                 End
             End
             DelVar A
         End
         StorePic 1
         For(Y,30,46
             Line(5,Y+1,45,Y+1
             Line(5,61-Y,45,61-Y
             Line(6,Y,44,Y,0
             Line(6,62-Y,44,62-Y,0
         End
         4→C
         Repeat C≠2 or Ans=14
             For(θ,0,3
                 Text(17+7θ,17,sub("BACKNEW RANKQUIT",1+4θ,4  // 1 space before RANK
             End
             getKey
             Repeat sum(Ans={14,21,105
                 Pt-Off(11,13+7C,1+(0<Ans
                 C-(Ans=34)+(Ans=25
                 Ans+4((Ans<1)-(Ans>4→C
                 Pt-On(11,13+7C,2
                 getKey
             End
             If C=2 and Ans≠14
             Then
                 For(θ,0,1
                     Text(−1,7θ+17,17,"      // 4 spaces
                 End
                 For(Y,31,38
                     Text(Y,10,"▫   RANK  // 3 spaces before RANK
                 End
                 If sum(⌊TS≥10^7
                     Fill(0,⌊TS
                 For(θ,1,3
                     Text(10+7θ,17,⌊TS(θ
                 End
                 Repeat getKey
                 End
                 For(θ,0,1
                     Text(−1,8θ+17,15,"       // 5 spaces
                 End
                 For(Y,0,7
                     Text(38-Y,10,"▫   RANK             // 11 spaces, 3 before RANK
+                    Line(10,18+Y,31,18+Y,0
                 End
             End
         End
         ClrDraw
         RecallPic 1
     End
 End
 ClrDraw
 DelVar [A]DelVar Pic1Disp 
```

## Variation (B) - Tetris-82 STATS

```diff
 {16,19→dim([A]
 Fill(1,[A]
 3→dim(⌊TS  // Execute `"→TS` if you don't see this
 Repeat C=1
     For(A,3,14
         For(B,2,17
             0→[A](A,B
         End
     End
     ClrDraw
     Vertical 0
     Vertical 50
-    Text(−1,5,56,"TETRIS
+    Text(1,56,"TETRIS TI-
+    Text(7,59,"82 STATS
     For(A,54,92,2
-        Pt-On(A,60
+        Pt-On(A,62
         Pt-On(A,48
     End
-    For(A,49,59,2
+    For(A,49,61,2
         Pt-On(53,A
         Pt-On(93,A
     End
     Text(18,58,"LEVEL
     Text(18,80,"01
     For(A,79,87,2
         Pt-On(A,45
         Pt-On(A,37
     End
     For(A,38,44,2
         Pt-On(78,A
         Pt-On(88,A
     End
     For(A,59,87,2
         Pt-On(A,34
         Pt-On(A,20
         Pt-On(A,17
         Pt-On(A,9
     End
     For(A,21,33,2
         Pt-On(58,A
         Pt-On(88,A
     End
     Text(46,60,"0000000
     For(A,10,16,2
         Pt-On(58,A
         Pt-On(88,A
     End
     Text(57,65,"MENU
     Line(63,0,63,5
     Line(64,6,80,6
     Line(81,0,81,5
     DelVar CDelVar DDelVar EDelVar FDelVar GDelVar HDelVar IDelVar N1→O
     randInt(1,7→L
     1→A
     18→B
     17→M
     Repeat not(A(Ans=14 or C=4
         0
         Repeat C=14 or B=2
             If Ans
             Then
                 1→[A](A,B
                 1→[A](A+D,B+E
                 1→[A](A+F,B+G
                 1→[A](A+H,B+I
                 DelVar GIf B<M
                     B→M
                 If B<5
                     5→M
                 For(E,M-2,17
                     If [A](3,E)[A](4,E)[A](5,E)[A](6,E)[A](7,E)[A](8,E)[A](9,E)[A](10,E)[A](11,E)[A](12,E)[A](13,E)[A](14,E
                     Then
                         For(F,E,M-2,−1
                             For(D,3,14
                                 [A](D,F-1→[A](D,F
                                 Pt-On(4D-9,69-4F,2
                                 Pt-Off(4D-9,69-4F,1+not(Ans
                             End
                         End
                         G+1→G
                         N+10³G→N
                         Text(46,84-4int(log(N)),N
                         1+int(N/5000→O
                         Text(18,84-4int(log(O)),O
                         M+1→M
                     End
                 End
                 1→D
                 DelVar E1→G
                 −1→F
                 Ans→H
                 1→I
                 If L=1
                     DelVar F1→H
                 If L=2
                     DelVar GDelVar I2→F
                 If L=3
                     DelVar G
                 If L=4
                     DelVar GDelVar H
                 If L=5
                     DelVar I1→F
                 If L=6
                     DelVar F
                 If L=7
                 Then
                     DelVar F1→H
                     −1→D
                 End
                 randInt(1,7→L
-                Text(−1,30,64,"     // 3 spaces
-                Text(−1,33,64,"     // 3 spaces
+                For(Y,24,30
+                    Line(66,Y,80,Y,0
+                End
                 If L=1
                 Then
                     Text(33,70,"▫▫
                     Pt-On(71,29,2
                     Pt-On(75,29,2
                 End
                 If L=2
                     Text(31,66,"▫▫▫▫
                 If L>2 and L<6
                 Then
                     Text(29,68,"▫▫▫
                     Pt-On(57+4L,25,2
                 End
                 If L=6
                 Then
                     Text(33,68,"▫▫
                     Pt-On(73,29,2
                     Pt-On(77,29,2
                 End
                 If L=7
                 Then
                     Text(33,72,"▫▫
                     Pt-On(69,29,2
                     Pt-On(73,29,2
                 End
                 DelVar K8→A
                 2→B
             End
             Repeat C=14 or Ansnot(CK
                 Repeat C=14 or C=25 or Ans
                     Pt-On(4A-9,69-4B,2
                     Pt-On(4A+4D-9,69-4B-4E,2
                     Pt-On(4A+4F-9,69-4B-4G,2
                     Pt-On(4A+4H-9,69-4B-4I,2
                     getKey→C
                     If Ans or K≥25-O  // Change `25` for different difficulty
                     Then
                         Pt-Off(4A-9,69-4B,2
                         Pt-Off(4A+4D-9,69-4B-4E,2
                         Pt-Off(4A+4F-9,69-4B-4G,2
                         Pt-Off(4A+4H-9,69-4B-4I,2
                         If C=34 or K≥25-O  // Change `25` for different difficulty
                         Then
                             B+1→B
                             −1→K
                         End
                     End
                     K+1→K
                     A+(C=26)-(C=24→A
                     [A](A,B)+[A](A+D,B+E)+[A](A+F,B+G)+[A](A+H,B+I
                 End
                 DelVar YIf C=25
                 Then
                     E→Y
                     D→E
                     −Y→D
                     G→Y
                     F→G
                     −Y→F
                     I→Y
                     H→I
                     −Y→H
                     −3→Y
                 End
                 For(θ,0,1
                     If [A](A,B) or [A](A+D,B+E) or [A](A+F,B+G) or [A](A+H,B+I
                     Then
                         If θ
                             B-(C=34 or not(K→B
                         If Y=−3
                         Then
                             D→Y
                             E→D
                             −Y→E
                             F→Y
                             G→F
                             −Y→G
                             H→Y
                             I→H
                             −Y→I
                         Else
                             A+(C=24)-(C=26→A
                         End
                     End
                 End
                 [A](A,B+1)+[A](A+D,B+E+1)+[A](A+F,B+G+1)+[A](A+H,B+I+1
             End
             Pt-On(4A-9,69-4B,2
             Pt-On(4A+4D-9,69-4B-4E,2
             Pt-On(4A+4F-9,69-4B-4G,2
             Pt-On(4A+4H-9,69-4B-4I,2
         End
         If C≠14
         Then
             If sum(N>⌊TS
                 N→⌊TS(3
             SortD(⌊TS
             For(Y,0,14
                 Text(57-4Y,2,"▫▫▫▫▫▫▫▫▫▫▫▫
             End
-            For(Y,0,14
-                Text(−1,4Y,2,"          // 8 spaces
+            For(Y,2,48
+                Line(Y,0,Y,62,0
             End
-            For(θ,0,1
-                For(A,1,4
-                    For(B,0,56,8
-                        Text(−1,B,6A+8,sub("GAMEOVER",A+4θ,1
-                    End
+            For(A,1,8
+                For(B,1,55,6
+                    Text(B,4A+6,sub("GAMEOVER",A,1
                 End
             End
             DelVar A
         End
         StorePic 1
         For(Y,30,46
             Line(5,Y+1,45,Y+1
             Line(5,61-Y,45,61-Y
             Line(6,Y,44,Y,0
             Line(6,62-Y,44,62-Y,0
         End
         4→C
         Repeat C≠2 or Ans=14
             For(θ,0,3
                 Text(17+7θ,17,sub("BACKNEW RANKQUIT",1+4θ,4  // 1 space before RANK
             End
             getKey
             Repeat sum(Ans={14,21,105
                 Pt-Off(11,13+7C,1+(0<Ans
                 C-(Ans=34)+(Ans=25
                 Ans+4((Ans<1)-(Ans>4→C
                 Pt-On(11,13+7C,2
                 getKey
             End
             If C=2 and Ans≠14
             Then
-                For(θ,0,1
-                    Text(−1,7θ+17,17,"      // 4 spaces
+                For(Y,33,44
+                    Line(17,Y,31,Y,0
                 End
                 For(Y,31,38
                     Text(Y,10,"▫   RANK  // 3 spaces before RANK
                 End
                 If sum(⌊TS≥10^7
                     Fill(0,⌊TS
                 For(θ,1,3
                     Text(10+7θ,17,⌊TS(θ
                 End
                 Repeat getKey
                 End
-                For(θ,0,1
-                    Text(−1,8θ+17,15,"       // 5 spaces
+                For(Y,33,44
+                    Line(17,Y,43,Y,0
                 End
                 For(Y,0,7
                     Text(38-Y,10,"▫   RANK             // 11 spaces, 3 before RANK
+                    Line(10,18+Y,31,18+Y,0
                 End
             End
         End
         ClrDraw
         RecallPic 1
     End
 End
 ClrDraw
 DelVar [A]DelVar Pic1Disp 
```
