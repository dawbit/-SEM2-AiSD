	program mmm
	implicit real*8(a-h,o-z)
	complex*8 z,c
	dc=.01d0
	n=1000
	cr=-1.5d0
	ci=0.d0
	crk=.5d0
	cik=1.d0
	c=cmplx(cr,ci)
	crp=cr
50	z=0.
	do 10 i=1,n
	if(abs(z).gt.2.d0)go to 300
	z=z**2+c
10	continue
	write(1,*)real(c),imag(c),-imag(c)
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

