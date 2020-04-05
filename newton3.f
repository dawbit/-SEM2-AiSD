        program xyz
        implicit real*8(a-h,o-z)
        dimension a(2,2),f(2),fp(2,2),x(2),z(2)
        x(1)=0.4d0
        x(2)=2.d0
        n=10000
        do 200 k=1,n
        
        f(1)=x(1)+x(2)-dsin(x(2))-2.d0
        f(2)=x(1)*x(2)-1.d0
        fp(1,1)=1.d0
        fp(1,2)=1.d0-dcos(x(2))
        fp(2,1)=x(2)
        fp(2,2)=x(1)
        
        det=fp(1,1)*fp(2,2)-fp(2,1)*fp(1,2)
        a(1,1)=fp(2,2)/det
        a(1,2)=-fp(1,2)/det
        a(2,1)=-fp(2,1)/det
        a(2,2)=fp(1,1)/det
        do 100 i=1,2
        z(i)=0.d0
        do 100 j=1,2
100     z(i)=z(i)+a(i,j)*f(j)
        write(1,*)f(1),f(2),x(1),x(2)
        do 150 l=1,2
150     x(l)=x(l)-z(l)
200     continue
        stop
        end
        
