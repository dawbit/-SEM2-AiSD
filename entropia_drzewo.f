	program nnn
	implicit real*8(a-h,o-z)
	dimension IE(10000000), p(10000000)
	ip=10000
	n=10000
	L=1000
        a=2.95d0
        da=.0005d0
        ak=4.d0
	dx=1.d0/L
	x=.5d0
1	do 5 i=1,L
5	IE(i)=0
c	x=.5d0
	E=0.d0
	do 200 i=-ip,n
	x=a*x*(1.d0-x)
	if(i.lt.1)go to 200
	do 10 k=1,L
	if(x.ge.(k-1)*dx.and.x.lt.k*dx)go to 100
10	continue
	stop 'err'
100	IE(k)=IE(k)+1
200	continue
	do 300 k=1,L
	xe=IE(k)
	p(k)=xe/n
	IF(IE(k).eq.0)go to 300
	E=E-p(k)*dlog(p(k))/dlog(2.d0)
300	continue
	write(1,*)a,e
	a=a+da
	if(a.le.ak)go to 1
	stop
	end
			
