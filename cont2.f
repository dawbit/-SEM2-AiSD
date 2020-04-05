        program hh
        implicit real*8(a-h,o-z)
        b=1.7d0
        a=1.9d0
        a=1.8d0
        x=0.d0
        p=.0d0
        dp=.00005d0
        n=250000
        do 10 k=1,n
        f=x**2+a*dexp(-b*x)-p-a*dcos(p)
        fp=-1.d0+a*dsin(p)
        fx=2*x-a*b*dexp(-b*x)
        write(1,*)p,x
        is=1
        if(fx.lt.0.d0)is=-1
        x=x-fp/fx*dp*is
        p=p+dp*is
10      continue
        stop
        end
        
