        program ggg
        implicit real*8(a-h,o-z)
        x1=0.17d0
        x2=1.5d0
        t=0.d0
        dt=.0001d0
        tk=3.d0
10      f1=x1+x2
        f2=-x1*x2
        write(1,*)t,x1,x2
        x1=x1+f1*dt
        x2=x2+f2*dt
        t=t+dt
        if(t.le.tk)go to 10
        stop
        end
        
