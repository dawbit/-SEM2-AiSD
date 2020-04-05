	program lll
	implicit real*8(a-h,o-z)
	pi=4*datan(1.d0)
	fi=0.d0
	dfi=.001d0
	z=.25d0
30	cr=z*dcos(fi)-1.d0
	ci=z*dsin(fi)
	write(3,*)cr,ci
	fi=fi+dfi
	if(fi.le.2*pi)go to 30
	stop
	END
