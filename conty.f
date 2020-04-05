        program xyz
        implicit real*8(a-h,o-z)
        dimension a(2,2),f(2),fx(2,2),x(2),w(2),z(2)
c        niekompletny program
        x(1)=1.d0
        x(2)=0.d0
        p=0.d0
        dp=.00001d0
        
        n=400000
        do 200 k=1,n
        
c        f(1)=dsqrt((dcos(x(1)*x(2)+1.d0))**3)*dlog(p**2)
c        f(2)=(x(2)/x(1)*dasin(p))**2
        
        write(1,*)p,x(1),x(2)
         
        fx(1,1)=1.5d0*dsqrt(dcos(x(1)*x(2)+1.d0))
     1  *dsin(x(1)*x(2)+1.d0)*x(2)*dlog(p**2)
        fx(1,2)=1.5d0*dsqrt(dcos(x(1)*x(2)+1.d0))
     1  *dsin(x(1)*x(2)+1.d0)*x(1)*dlog(p**2)
        fx(2,1)=-2/x(1)**3*(x(2)*dasin(p))**2
        fx(2,2)=2*x(2)*(1.d0/x(1)*dasin(p))**2
        
        det=fx(1,1)*fx(2,2)-fx(2,1)*fx(1,2)
        a(1,1)=fx(2,2)/det
        a(1,2)=-fx(1,2)/det
        a(2,1)=-fx(2,1)/det
        a(2,2)=fx(1,1)/det
        
        w(1)=1.d0
        w(2)=2*p
        
        do 100 i=1,2
        z(i)=0.d0
        do 100 j=1,2
100     z(i)=z(i)+a(i,j)*w(j)

        is=1
        if(det.lt.0.d0)is=-1
        do 150 l=1,2
150     x(l)=x(l)-z(l)*dp*is
        p=p+dp*is
        
200     continue
        stop
        end
        
