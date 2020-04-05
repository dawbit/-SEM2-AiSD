        program hhh
        implicit real*8(a-h,o-z)
        dimension b(10000),c(10000),d(10000),dd(10000),w(10000),z(1000)
     1  ,iw(1000)
        r=3.9d0
        xx=.5d0
        do 3 i=1,10000000
        xx=r*xx*(1.d0-xx)
3       continue
        read(8,10)y
c        x=.154d0
        n=100
        lw=1
        lwk=2500000
        read(1,10)a
5       read(2,20)(b(i),i=1,n)
        if(b(1).eq.a)stop
        l=1
        jw=0
10      format(a1)
20      format(100a1)
50      k=1
        do 100 i=l,n
        if(a.eq.b(i).and.k.eq.1)go to 550
        if(a.eq.b(i).and.k.le.4)go to 600
        if(a.eq.b(i).and.k.gt.4)go to 200
        k=k+1
        l=l+1
30      format(100a1)
100     continue

200     c(1)=b(i-k+1)
        c(k-1)=b(i-1)
        
        do 300 j=2,k-2
        d(j-1)=b(i-k+j)
300     continue

        kk=k-3
c        do 290 jj=1,kk
c        dd(jj)=d(kk-jj+1)
c        dd(jj)=d(jj)
c290     continue


        m=kk
        do 2000 is=1,m
        xx=r*xx*(1.d0-xx)
        z(is)=xx
        iw(is)=is
2000     continue
       do 5000 js=1,m-1
       x=z(js)
       ks=js
       do 4000 is=js+1,m
       if(z(is).lt.x)ks=is
       if(z(is).lt.x)x=z(is)
4000    continue
       y=z(js)
       z(js)=x
       z(ks)=y
       iy=iw(js)
       iw(js)=iw(ks)
       iw(ks)=iy
5000    continue
       do 10000 jj=1,kk
       dd(jj)=d(iw(jj))
10000   continue


        do 400 j=2,k-2
        c(j)=dd(j-1)
400     continue
        
        
        do 450 j=1,k-1
        w(j+jw)=c(j)
450     continue
        jw=jw+k
        w(jw)=a
        
500        l=l+1
        if(l.le.n)go to 50
550     lw=lw+1
        write(7,30)(w(i),i=1,jw)
        if(lw.le.lwk)go to 5
        stop
600     continue
        do 650 js=i-k,i
        w(jw)=b(js)
        jw=jw+1
650     continue
        jw=jw-1
        go to 500
        end
        
