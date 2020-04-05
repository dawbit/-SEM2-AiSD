        program hh
        implicit real*8(a-h,o-z)
        x=-1.d0
        p=1.d0
        dp=.00001d0
        n=200000
        do 10 k=1,n
C        f=x**2-p
        fp=-1.d0
        fx=2*x
        is=1
        write(1,*)p,x
        if(fx.lt.0.d0)is=-1
        x=x-fp/fx*dp*is
        p=p+dp*is
10      continue
        stop
        end
        
