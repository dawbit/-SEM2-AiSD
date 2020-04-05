	program nnn
	implicit real*8(a-h,o-z)
	dimension IE(100000), p(100000)
	n=10000
	L=1000
	ip=10000
	pp=0.d0
	do 5 i=1,n
5	IE(i)=0
	x=.5d0
	a=3.7d0
	E=0.d0
	dx=1.d0/L
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
	E=E-p(k)*dlog(p(k))
	pp=pp+p(k)
300	continue
	write(1,*)E/dlog(2.d0)
	stop
	end
			
