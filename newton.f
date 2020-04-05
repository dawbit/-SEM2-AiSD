       program hh
       implicit real*8(a-h,o-z)
       x=7.d0
       n=100
       do 10 i=1,n
       f=x**2-1.d0
       fp=2*x
       write(1,*)f,x
       x=x-f/fp
10     continue
       stop
       end

