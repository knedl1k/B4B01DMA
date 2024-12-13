#import "@preview/fletcher:0.5.0" as fletcher: diagram, node, edge

#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#let N = 11
#let Rel = $cal(R)$
#let iff = $<==>$

#let proof(body) = block(width: 98%, fill: rgb("#EEEEEE"), {
  //[_Proof._ ]
  body
  box(width: 0pt)
  h(1fr)
  sym.wj
  sym.space.nobreak
  $qed$
})

#set page(numbering: "1")

#set align(center)

= B4B01DMA
Jakub Adamec\
Domácí úkol č. #{N}A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. #{N +1}.\

*1.* Napište induktivní definici množiny všech kladných celých čísel, která jsou dělitelná pěti, ale ne desíti.
Nápověda: Nejprve si napište prvních pár čísel z množiny, to by mělo napovědět.

*2.* Pro následující zobrazení rozhodněte, zda jsou prostá a zda jsou na. Své odpovědi dokažte.

a) $T$: $NN^2 |-> NN^3$, $T(m,n) = (m,n,m+n)$.

b) $T$: $NN^2 |-> NN$, $T(m,n) = m+n$.
\
\

*1.*\
$M = {5, 15, 25, 35, 45, ...}$\
(0) základní krok: $5 in M$.\
(1) induktivní krok: $n in M => n+10 in M$.\
\

*2.*\
a)

prostá: ano
#proof[
$(a, b), (c,d) in NN^2 $.\
$T(a,b) = T(c,d) -> (a,b,a+b) = (c,d,c+d) -> a=c; b=d; a+b=c+d$.
]

na: ne
#proof[
p-p:\
$y = (0, 0, 1) in NN^3 => x = (0, 0) in NN^2$.\
$T(0,0) = (0, 0, 0+0) = (0,0,0) != (0, 0, 1)$.\
Nalezli jsme vektor z $NN^3$, který nemůžeme vygenerovat, a tedy zobrazení nemůže být *na*.
]
\
b)

prostá: ne
#proof[
$(a, b), (c,d) in NN^2 $.\
$T(a,b) = T(c,d) -> a+b = c+d$.\
Může nastat například $a=2, b=2, c=3, d=1$, tedy $T(2,2) = T(3,1)$.\
A to porušuje vlastnost prosté funkce.
]

na: ano
#proof[
$y in NN.$\
volba: $(y,0) in NN^2$.\
$T(y,0) = y + 0 = y.$\
Obdobně to platí pro volbu $(0, y) in NN^2$.
]