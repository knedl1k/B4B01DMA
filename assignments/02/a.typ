#set text(font: "New Computer Modern", lang:"cs", size:10pt)
#set enum(numbering: "a)")

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 2A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. 3.

*1.* Dokažte, že pro každé $a, b in ZZ$ platí: Jestliže $a | b$, pak $a | (-b)$.\
*2.* Dokažte, že pro každé $a, b in ZZ$ platí: Jestliže $a | b$, pak $a | (a+b)$.
\
\
\
*1.* Důkaz:
#indent[
  #indent[
      $a, b in ZZ$ libovolné.\
      předpoklad: $a | b$.\
      $b=a dot k$, $k in ZZ$.\
      $-b=-(a dot k) => -b = a dot (-k)$.\
      A tedy: $a | (a dot (-k))$, protože $-k in ZZ$.\
      Z toho plyne: $a | (-b)$.
]]
#set align(right)
$square$
#set align(left)
*2.* Důkaz:
#indent[
  #indent[
      $a, b in ZZ$ libovolné.\
      předpoklad: $a | b$.\
      $b= a dot k$, $k in ZZ$.\
      $a +b=a + a dot k = a (1 + k)$.\
      A tedy: $a | (a dot (1 + k))$, protože $1+k in ZZ$.\
      Z toho plyne: $a | (a+ b)$.
]]
#set align(right)
$square$
#set align(left)