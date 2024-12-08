#import "@preview/fletcher:0.5.0" as fletcher: diagram, node, edge

#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#let N = 9
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

*1.* Uvažujte funkci zadanou $f(0)=1, f(1)=2$ a $f(n+1)=f(n)+2 f(n-1)$ pro $n in NN$.

a) Spočítejte několik prvních hodnot této funkce a odhadněte obecný vzorec pro $f(n)$.\
b) Dokažte indukcí, že váš odnadnutý vzorec je správně.

*2.* Uvažujte funkci zadanou $f(1)=0$ a $f(n+1)=f(n) + n$ pro $n in NN$.

Dokažte indukcí, že takto zadaná funkce splňuje nerovnost $f(n) <= n^2$ pro $n in NN$.

*Bonus:*\
Nechť $cal(R)$ je relace na $A$. Dokažte:\
Je-li $cal(R)$ antisymetrická, tak je i $cal(R)^(-1)$ antisymetrická.\
Použijte strukturu důkazu, kdy je závěr brán jako cesta.

\
\

*1.*\
a) $f(2)=2+2=4, f(3)=4+2 dot 2=8, f(4) = 8 + 2 dot 4=16, f(5)=16 + 2 dot 8 = 32$.\
$ f(n) = 2^n, n in NN $
b)
#proof[
  (0) $n=1$: $2^1 = 2 = f(1)$.\
  (1) $n >= 1$: IP: $f(n)=2^n, f(n-1)=2^(n-1)$.\
  Pak $f(n+1) = f(n) + 2f(n-1) =^("IP") 2^n + 2 dot 2^(n-1) = 2 dot 2^n = 2^(n+1) $.
]
\
*2.*\
#proof[
  (0) $n=1$: $f(1)=((1-1) dot 1)/2 = 0 <= 1^2$.\
  (1) $n >= 1$: IP: $f(n) <= n^2$.\
  Pak $f(n+1) = f(n) +n <=^("IP") n^2 +n <=_([n+1 >= 0]) n^2 +2n +1 <= (n+1)^2$. 
]
\
*Bonus.*\
#proof[
  $forall a, b in A$.\
  předpoklad $(a cal(R) b and b cal(R) a) => a=b$.\
  $a cal(R) b iff b cal(R^(-1)) a space and space b cal(R) a iff a cal(R^(-1)) b$.\
  z předpokladu tedy platí: $(b cal(R^(-1)) a and a cal(R^(-1)) b) => a=b$.\
  což je přesná definice antisymetrie pro $cal(R^(-1))$.
]