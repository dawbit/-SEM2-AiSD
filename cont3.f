        program hh
        implicit real*8(a-h,o-z)
        x=1.d0
        p=0.d0
        dp=.0001d0
        n=55000
        a=.085d0
        a=.08d0
        do 10 k=1,n
c        f=x**2+p**2*dexp(-x*p)-1.d0+a*p**3
        fp=2*p*dexp(-x*p)-x*p**2*dexp(-x*p)+3*a*p**2
        fx=2*x-p**3*dexp(-x*p)
        is=1
        write(1,*)p,x
        if(fx.lt.0.d0)is=-1
        x=x-fp/fx*dp*is
        p=p+dp*is
10      continue
        stop
        end
        
