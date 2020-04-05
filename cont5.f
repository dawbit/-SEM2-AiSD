        program xyz
        implicit real*8(a-h,o-z)
        dimension a(2,2),f(2),fx(2,2),x(2),w(2),z(2)
        
c       CZAS RYS. 95 SEK

        x(1)=1.d0
        x(2)=0.d0
        p=0.d0
        dp=.0000025d0
        
        n=2000000
        do 200 k=1,n
        
c        f(1)=x(1)**2+x(2)**2+p-1.d0
c        f(2)=x(1)*x(2)+p**2+dsin(x(2))
        
        write(1,*)p,x(1),x(2)
         
        fx(1,1)=2*x(1)
        fx(1,2)=2*x(2)
        fx(2,1)=x(2)
        fx(2,2)=x(1)+dcos(x(2))
        
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
        do 150 i=1,2
150     x(i)=x(i)-z(i)*dp*is
        p=p+dp*is
        
200     continue
        stop
        end
        
