import msvcrt as m,os;f=c=s=0;a=34636833;r=range;p=1<<32;t=30
while 1:
 if m.kbhit()and b"\xe0"==m.getch():p=[p>>(not(a|f<<1)&p),p,p<<(not(a<<4|f>>1)&p),p>>5-5*(bool(f&p>>5)or p<t)][ord(m.getch())-77]
 c+=1;print("\n".join("".join(".#"[1&(f|p)>>i*5+j]for j in r(5))for i in r(6))[::-1]);os.system("cls")
 if c%t<1:
  if f&p>>5or p<t:s=~s;f|=p;p=2-s<<26
  else:p>>=5
 for i in r(0,t,5):
  if f|31<<i==f:b=bin(f)[2:].zfill(t);f=int(b[:-i-5]+b[t-i:],2)