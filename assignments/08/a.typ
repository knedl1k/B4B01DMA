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


a)

Nechť $I(a)$ je první písmeno třípísmenné zkratky předmětu $a in A$.

#grid(
  columns: (1fr, 1fr, 1fr),
  align(left)[
    $bb(R)$eflexivita:
    #proof[
    $ a Rel a, a in A.$\
    $I(a) = I(a)$ platí vždy $==> a Rel a$.
    ]
  ],
  align(left)[
    $bb(S)$ymetrie:
    #proof[
      $a, b in A$ libovolné.\
      předpoklad: $a Rel b$.\
      $I(a) = I(b)$.\
      a tedy $I(b) = I(a) ==> b Rel a$.
    ]
  ],
  align(left)[
    $bb(T)$ranzivita:
    #proof[
      $a, b, c in A$ libovolné.\
      předpoklad: $(a Rel b) and (b Rel c)$.\
      $I(a) = I(b) and I(b) = I(c)$.\
      což znamená $I(a) = I(c)$.
    ]
  ],
)
Protože $Rel$ splňuje $bb(R)$eflexivitu, $bb(S)$ymetrii a $bb(T)$ranzivitu, $Rel$ je ekvivalence.

b)

Nechť $I(X)$ je první písmeno třípísmenné zkratky předmětu $X in A$.

$["DMA12"]_Rel = \{X in A; "DMA12"space Rel space X\} = \{I(X) = D\}$.

\
*2.* \
#proof[
  $(0)$ $n = 1: 0 =^? 0 space checkmark$\
  $(1)$ $n >= 1:
        "indukční předpoklad:" sum_(k=1)^n 0 = 0$.\
        Pak: $ sum_(k=1)^n (0) + 0(n+1) = 0n + 0n + 0 = 0 (2n + 1) = 0.$
]

#set math.vec(delim: "[")

*Bonus.*\ 

#proof[
  předpoklad: $Rel$ je reflexivní.\
  pak $vec((a,a) in Rel union cal(S))-> 
       vec((a,a) in Rel space or space (a,a) in cal(S))
      -->^"předp." Rel union cal(S)$.
]