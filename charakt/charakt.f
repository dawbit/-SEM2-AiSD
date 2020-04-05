	PROGRAM CAL
	IMPLICIT REAL*8(A-H,O-Z)
	DIMENSION y(500000),yg(500000)
	t=0.d0
	tk=2.d0
	m=1000
	dx=1.d0/m
	y(1)=1.d0
        do 5 i=2,m
5       y(i)=0.d0
10      write(1,*)t,y(1),y(m/2),y(m)
	do 100 i=1,m
100	yg(i)=y(i)+y(i)*dx
	do 200 i=1,m-1
200	y(i+1)=yg(i)
        y(1)=y(1)+y(1)*dx
        t=t+dx
        if(t.le.tk)go to 10
        stop
	END
