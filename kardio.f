        program hh
        implicit real*8(a-h,o-z)
        a=5.d0/4.d0
        x=(dsqrt(17.d0)-1.d0)/2
        p=0.d0
        dp=.0001d0
        n=100000
        do 10 k=1,n
c       f=x**2+(a*p-dsqrt(dabs(x)))**2-4.d0
        fp=2*a*(a*p-dsqrt(dabs(x)))
        iss=1
        if(x.lt.0.d0)iss=-1
        fx=2*x-(a*p-dsqrt(dabs(x)))/
     1  dsqrt(dabs(x))*iss
        is=1
        write(1,*)x,p
        if(fx.lt.0.d0)is=-1
        x=x-fp/fx*dp*is
        p=p+dp*is
10      continue
        stop
        end
        
