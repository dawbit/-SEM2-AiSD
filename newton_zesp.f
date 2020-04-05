        program zespolone
        implicit real*8(a-h,o-z)
        complex*16 z,f,fp
        n=1000
        z=(5,5)
        do 10 i=1,n
        f=z**2-(1.d0,1.d0)
        fp=2*z
        write(1,*)f,z
        z=z-f/fp
10      continue
        zr=dsqrt((1.d0+dsqrt(2.d0))/2.d0)
        zi=.5d0/zr
        write(1,*)zr,zi
        stop
        end
        
