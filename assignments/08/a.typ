#import "@preview/fletcher:0.5.0" as fletcher: diagram, node, edge

#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#let N = 8
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

*1.* $space$Nechť $A$ je množina předmětů vyučovaných katedrou matematiky. Definujeme $Rel$ na $A$ takto:
Předměty $X, Y$ jsou v relaci, pokud se shodují první písmena jejich oficiálních třípísmenných zkratek.
a) Dokažte, že $Rel$ je ekvivalence.\
b) Najděte $["DMA12"]_Rel$ neboli třídu ekvivalence příslušnou předmětu Diskrétní matematika.\
Tip: V důkazu se může hodit zavést si indikátor $I$ předmětu $p$ definovaný takto: $I(p)$ je první písmeno oficiální
třípísmenné zkratky předmětu $p$.

*2.* $space$Dokažte indukcí, že pro $n in NN$ je $sum_(k=1)^n 0 = 0$.\
Poznámka: Může pro vás být jednodušší to vidět jako $underbrace(0 + 0 + ... + 0, n "krát") = 0$.

*Bonus:*\
Nechť $Rel, cal(S)$ jsou relace na $A$. Dokažte: Je-li $Rel$ reflexivní, tak je i u $Rel union cal(S)$ reflexivní.
\
\
*1.* Například $"DMA"Rel"DRN"$.\
$bb(R): a Rel a, a in A. checkmark$\
$bb(S): \ 
  a, b in A "libovolné."\
  "předpoklad:" a Rel b \

 ==> b Rel a, a,b in A. checkmark $\
$bb(T):$\