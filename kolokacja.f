        program jjj
        implicit real*8(a-h,o-z)
        t=0.d0
        dt=.0001d0
        tk=2.d0
        y1=1.d0
        y2=0.d0
        y3=0.d0
10        write(1,*)t,y1,y2,y3
        y1g=y1+0*dt
        y2g=y2+(3*y1-8.d0/3.d0*y2-1.d0/3.d0*y3)*dt
        y3=y3+(-6*y1+32.d0/3.d0*y2-14.d0/3.d0*y3)*dt
        y1=y1g
        y2=y2g
        t=t+dt
        if(t.le.tk)go to 10
        stop
        end
        
