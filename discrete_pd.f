        program jj
        implicit real*8(a-h,o-z)
        a=1.d0
        da=.0005d0
        ak=4.d0
        n=500
        nx=400
        x=.3d0
10      do 20 k=1,n
        if(k.ge.nx)write(2,*)a,x
        x=a*x*(1.d0-x)
20      continue
        a=a+da
        if(a.le.ak)go to 10
        stop
        end
        
