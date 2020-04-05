        program jj
        implicit real*8(a-h,o-z)
        n=100
        x=.3d0
        a=3.5d0
        do 10 k=1,n
        write(2,*)k,x
        x=a*x*(1.d0-x)
10      continue
        stop
        end
        
