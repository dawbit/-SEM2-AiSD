        program hh
        implicit real*8(a-h,o-z)
        a=2.95d0
        x=.5d0
        n=100
        do 10 k=0,n
        write(2,*)k,x
        x=a*x*(1.d0-x)
10      continue
        stop
        end
        
