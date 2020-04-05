        program lorenz
        implicit real*8(a-h,o-z)
        tx=100.d0
        fpp=-1.d0
        t=0.d0
        dt=.001d0
        tk=50000.d0
        sigma=10.d0
        b=8.d0/3.d0
        r=28.d0
        x=0.d0
        y=.5d0
        z=1.d0
10      fpx=sigma*(y-x)
        xg=x+fpx*dt
        fpy=-x*z+r*x-y
        yg=y+fpy*dt
        fpz=x*y-b*z
        zg=z+fpz*dt
        if(t.ge.tx.and.fpp*fpx.le.0.d0)write(1,*)y,z
        fpp=fpx
        x=xg
        y=yg
        z=zg
        t=t+dt
        if(t.le.tk)go to 10
        stop
        end
        
