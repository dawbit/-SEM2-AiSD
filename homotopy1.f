        program hh
        implicit real*8(a-h,o-z)
        x=0.d0
        p=0.d0
        dp=.00000001d0
10      f=p*(x**3-x**2+x+1.d0)-(1.d0-p)*x
        fx=p*(3*x**2-2*x+1.d0)-(1.d0-p)
        fp=x**3-x**2+x+1.d0+x
        x=x-fp/fx*dp
        p=p+dp
        if(p.lt.1.d0)go to 10
        write(1,*)x,f,p
        stop
        end
        
