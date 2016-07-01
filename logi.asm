org 00h

init:
  setb p1.0
  setb p1.1
  setb p3.0
again:
  jnb p2.0,and
  jnb p2.1,or
  jnb p2.2,not
  sjmp again
and:
  again1:
  jnb p1.0,n1
  jnb p1.1,n2
  sjmp again1

n1:
  clr p1.0
  clr p3.0

nxt:
  jnb p1.1,cn
  sjmp nxt

cn:
  clr p1.1

ref1:
  jnb p2.3,init
  sjmp ref1

n2:
  clr p1.1
  clr p3.0

nxt1:
  jnb p1.0,cn1
  sjmp nxt1

cn1:
  clr p1.0

or:
  again2:
  jnb p1.0,again3
  jnb p1.1,again4
  sjmp again2

again3:
  clr p1.0

n3:
  jnb p1.1,again5
  sjmp n3

again5:
  clr p1.1
  clr p3.0

ref2:
  jnb p2.3,init
  sjmp ref2

again4:
  clr p1.1

n4:
  jnb p1.0,again6
  sjmp n4

again6:
  clr p1.0
  clr p3.0

ref3:
  jnb p2.3,init
  sjmp ref3

not:
  clr p1.1
  clr p3.0

again7:
  jnb p1.0,again8
  sjmp again7

again8:
  clr p1.0
  setb p3.0

ref4:
  jnb p2.3,init
  sjmp ref4

stop:
  
end