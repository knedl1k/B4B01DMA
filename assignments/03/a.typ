#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 3A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. 4.

*1.* Nechť $n in NN$. Dokažte,\
  $space space space space space$ jestliže $a, b in ZZ$ splňují $a equiv b space (mod n)$, pak $13a equiv 13b space (mod n)$.

*2.* Nechť $n in NN$. Dokažte,\
  $space space space space space$ jestliže $a, b, c in ZZ$ splňují $a equiv b space (mod n)$ a $b equiv c space (mod n)$, 
  pak $a equiv c space (mod n)$.
\
\
\
*1.* Důkaz:
#indent[
  #indent[
      $a, b in ZZ$ libovolné.\
      předpoklad: $a equiv b space (mod n)$.\
      $a-b = k n$, pro nějaké $k in ZZ$.\
      $13a-13b=13(a-b)$.\
      dosadím: $13(a-b)=13(k n)=(13k)n$, $(13k) in ZZ$.\
      a tedy: $13a equiv 13b space (mod n)$.

]]
#set align(right)
$square$
#set align(left)
*2.* Důkaz:
#indent[
  #indent[
     $a, b, c in ZZ$ libovolné.\
     předpoklad: $a equiv b space (mod n)$ $and$ $b equiv c space (mod n)$.\
     $a-b = k n$, pro nějaké $k in ZZ$.\
     $b-c = l n$, pro nějaké $l in ZZ$.\
     $a-c = (a-b) + (b-c) = (k+l)n$, $(k+l) in ZZ$.\
     bonusová substituce pro radost: $a-c = m dot n$, $m in ZZ$.\
     a tedy: $a equiv c space (mod n)$.
]]
#set align(right)
$square$
#set align(left)