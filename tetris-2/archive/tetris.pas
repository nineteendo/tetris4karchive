program tetris;uses Crt;const b=10;i=20;const x:array[1..7,1..3,0..1]of ShortInt=(((1,0),(1,1),(0,1)),((-1,0),(1,0),(2,0)),((0,1),(1,0),(2,0)),((0,1),(-1,0),(-2,0)),((-1,0),(1,0),(0,1)),((1,0),(0,1),(-1,1)),((-1,0),(0,1),(1,1)));aa:array[1..7,0..1]of Byte=((Yellow,Brown),(LightCyan,Cyan),(LightBlue,Blue),(White,LightGray),(LightMagenta,Magenta),(LightGreen,Green),(LightRed,Red));var k:array[1..b+2,1..i+1]of Byte;g:array[0..3,0..1]of Byte;y,z,r,n:LongInt;v,s,t,u,h,a,l,w:Word;c,j,e,f,d,q:Byte;m:Boolean;procedure ab(c,e,f,d:Byte);begin g[0,0]:=e;g[0,1]:=f;for a:=1 to 3 do begin g[a,0]:=e+x[c,a,d mod 2]*(Ord(d in[0,1])*2-1);g[a,1]:=f+x[c,a,1-d mod 2]*(Ord(d in[0,3])*2-1);end;end;procedure p(c,e,f,d:Byte;af:Boolean);begin ab(c,e,f,d);for a:=0 to 3 do begin GotoXY(g[a,0]*2+1,g[a,1]);if af then begin TextColor(aa[c,0]);TextBackground(aa[c,1]);Write('[]');end else begin TextBackground(Black);Write('  ');end;end;end;function o(ad,ae,ac:Byte):Boolean;begin ab(c,ad,ae,ac);m:=True;for a:=0 to 3 do if k[g[a,0],g[a,1]]<>0 then m:=False;if m then begin e:=ad;f:=ae;d:=ac;end;o:=m;end;begin Randomize;TextColor(LightGray);TextBackground(Black);ClrScr;h:=WindMax;for a:=0 to b+1 do for l:=1 to i+1 do k[a,l]:=9*Ord(not((a in[1..b])and(l in[1..i])));Window(1,1,b*2+4,i+2);for a:=1 to(b+2)*(i+1)do Write('##');Window(3,1,b*2+2,i);ClrScr;Window(1,1,Lo(h),Hi(h));Window(b*2+7,1,b*2+25,10);Writeln('Next');Writeln;Writeln;Writeln('Piece');Writeln('Line');Writeln('Level');Writeln('Score');Window(1,1,Lo(h),Hi(h));y:=0;z:=0;r:=1;n:=0;c:=9;j:=9;t:=0;repeat if c=9 then begin if j=9 then j:=Random(7)+1 else p(j,b+9,1,0,False);c:=j;j:=Random(7)+1;e:=b div 2;f:=1;d:=0;v:=1100-r*100;s:=v;Inc(y);Inc(n);if t=25 then begin Inc(r);t:=0;end;p(j,b+9,1,0,True);Window(b*2+15,4,b*2+25,10);TextColor(LightGray);TextBackground(Black);Writeln(y:5);Writeln(z:5);Writeln(r:5);Writeln(n:5);Window(1,1,Lo(h),Hi(h));if not o(e,f,d)then begin GotoXY(b*2+7,10);Write('Game Over');Break;end;end;p(c,e,f,d,True);GotoXY(1,1);repeat Delay(1);Dec(s);until KeyPressed or(s=0);p(c,e,f,d,False);if KeyPressed then begin q:=Ord(ReadKey);case q of 75,77:o(e+Ord(q=77)*2-1,f,d);72,80:o(e,f,(d+Ord(q=80)*2+1)mod 4);32:begin v:=1;Inc(n);end;end;end;if s=0 then begin if not o(e,f+1,d)then begin p(c,e,f,d,True);for a:=0 to 3 do k[g[a,0],g[a,1]]:=c;u:=0;for l:=1 to i do begin m:=True;for a:=1 to b do if k[a,l]=0 then m:=False;if m then begin for w:=l downto 2 do for a:=1 to b do k[a,w]:=k[a,w-1];for a:=1 to b do k[a,1]:=0;Inc(n,10+u*2);Inc(z);Inc(u);Window(3,1,b*2+2,i);TextBackground(Black);GotoXY(1,l);DelLine;GotoXY(1,1);InsLine;Window(1,1,Lo(h),Hi(h));end;end;if u<>0 then Inc(t);c:=9;end;s:=v;end;until q=27;ReadKey;TextColor(LightGray);TextBackground(Black);ClrScr;end.