#set text(font: "New Computer Modern", lang:"cs", size:10pt)
#set enum(numbering: "a)")

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 1A

#today.day(). #today.month(). #today.year()

#set align(left)
*1.* Uvažujte následující výrok: Každé reálné číslo je menší než svůj dvojnásobek.\
#indent[
  + Zapište tento výrok formálním jazykem.
  + Rozhodněte, zda je pravdivý.
  + Dokažte správnost své odpovědi.
  + Pokud pravdivý není, zkuste změnit jeden znak ve formálním vyjádření výroku tak, aby už pravdivý byl.
  Kdo chce, může to pak jako bonus zkusit dokázat.
  ]
\
a) $forall n in RR: n lt 2n$.\
b) nepravdivý.\
c) p-p: $n=-5$. $-5 lt.not -10$.\
#set align(right)
$square$
#set align(left)
d) $exists n in RR: n lt 2n$.\
Dk.: $n=1$. $1 lt 2$.
#set align(right)
$square$
#set align(left)

*2.* Dokažte následující výrok: $forall n in ZZ: n gt 5 => 2n gt 10$.\
Dk.:
#indent[
  #indent[
      $n in ZZ$ libovolné.\
      předpoklad: $n gt 5$.\
      $ n gt 5 space space space space space space space space space space space space space space space space space \/ dot 2, space 2 gt 0$\
      $ 2n>10$\
]]
#set align(right)
$square$
#set align(left)