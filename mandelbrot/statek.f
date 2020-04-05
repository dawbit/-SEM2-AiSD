	program mmm
	implicit real*8(a-h,o-z)
	complex*8 z,c
	dc=.000078d0
	n=100
	cr=-1.8d0
	ci=-.1d0
	crk=-1.7d0
	cik=.05d0
	c=cmplx(cr,ci)
	crp=cr
50	z=0.
	do 10 i=1,n
	if(abs(z).gt.2.d0)go to 300
c	z=z**2+c
	zzr=(real(z))**2-(imag(z))**2
	zzi=2*abs(real(z)*imag(z))
	z=cmplx(zzr,zzi)+c
10	continue
	write(1,*)real(c),-imag(c)
300	continue
	cr=cr+dc
	c=cmplx(cr,ci)
	if(cr.le.crk)go to 50
	ci=ci+dc
	if(ci.gt.cik)stop
	cr=crp
	c=cmplx(cr,ci)
	go to 50
	end

