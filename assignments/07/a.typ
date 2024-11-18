#import "@preview/fletcher:0.5.0" as fletcher: diagram, node, edge

#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#let N = 7
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

*1.* $space$Uvažujme následující relaci na $ZZ$:\
$a Rel b$ právě tehdy, když $b-a$ je dělitelné dvěma nebo třemi.\
Vyšetřete, zda splnňuje základní čtyři vlastnosti (reflexivita, symetrie, antisymetrie, tranzitivita).\
Je to částečné uspořádání?

Poznámka: Při přemýšlení může pomoci alternativní definice:
#indent[
  $a Rel b$ právě tehdy, když $a equiv b (mod 2)$ nebo $a equiv b (mod 3)$.
]
Poznámka: Pro správnou práci s relací je třeba korekktně interpretovat definici. Pro konkrétní dvojici $a, b$ se otázka "jsou spolu v relaci?" překládá do podoby:
#indent[
  "je pravda, že $a equiv b (mod 2)$ nebo $a equiv b (mod 3)$?"
]
Výběr mezi dvojkou a trojkou tedy není nějaký centrální jednou pro vždy, ale dělá se pro každou dvojici $a, b$ znovu, volba je tedy individuální a ptáme se, zda to "nebo" lze zařídit, ne že si jedno z čísel $2, 3$ vybereme a chceme jej.

*2.* $space$Na množině konečných řetězců písmen malé latinské abecedy (tedy "slovo") zavedeme následující relaci: $a Rel b$ právě tehdy, když řetězec $beta$ vznikl tak, že se přidala písmena před řetězec nebo za řetězec $alpha$ (přičemž připouštíme i možnost přidání žádných písmen).\
Například "tema" je v relaci s "matematika", nebo "abc" je v relaci s "abcde".\
a) Nakresleste Hasseův diagram pro množinu {au, auto, automobil, to, mobil} uspořádánou relací $Rel$.\
b) určete největší prvek, maxima, nejmenší prvek a minima, pokud existují.\
c) Najděte nějakou linearizaci.

*3.* $space$Krátký bonusový příklad pro pilné:\
Uvažujme množinu $A$ uspořádáných trojic $(r, t, s)$, kde\
$r$ je přirozené číslo $1, 2, ..., 9$ (ročník);\
$t$ je přirozené číslo $A, B, C, ...$ (třída);\
$s$ je řetězec písmen (přijmení studenta);\
V první souřadnici řadíme dle velikosti čísla, v druhé a třetí souřadnici řadíme dle abecedy. Podle teorie je lexikografické uspořádání lineární, a množinu $A$ je tedy možné seřadit do jednoho řetízku.\
Ukažte toto seřazení (tedy vlastně Hasseův diagram), pokud se množina $A$ skládá z těchto trojic:\
(5,A,Alda), (7,B,Cody), (6,C,Ego), (5,B,Fink), (7,A,Job), (5,A,Klen), (7,B,Mold), (5,A,Nub).

#pagebreak()

*1.*\

#grid(
  columns: (1fr, 1fr),
  align(left)[
    Reflexivita: $forall a in ZZ : a Rel a $. Platí.\ 
    Důkaz.
    #proof[
        $a in ZZ$ libovolné.\
        $a-a = 0$.\
        $0 equiv 0 (mod 2) $.\
        a tedy: $a equiv a (mod 2) ==> a Rel a$.
    ]
  ],
  align(left)[
    Symetrie: $forall a, b in ZZ: (a Rel b ==> b Rel a)$. Platí.\
    Důkaz.
    #proof[
      $a, b in ZZ$ libovolné.\
      předpoklad: $a equiv b (mod 2) space or space a equiv b (mod 3)$.\
      $a - b = 2k space or space a - b = 3l$, $space k, l in ZZ space space space space space space  \/ dot (-1)$.\
      $b - a = 2(-k) space or space b - a = 3(-l)$, $space (-k), (-l) in ZZ$.\
      tedy: $(b equiv a (mod 2) space or space b equiv a (mod 3)) ==> b Rel a$.
    ]
  ]
)
\
#grid(
  columns: (1fr, 1fr),
  align(left)[
    Antisymetrie: $forall a, b in ZZ : (a Rel b and b Rel a) ==> a = b $. Neplatí.\ 
        Důkaz.
        #proof[
          p-p:\
          $a = 1, b=3$.\
          $1 Rel 3 and 3 Rel 1$, ale neplatí $1 = 3$.
        ]
  ],
  align(left)[
    Tranzitivita: $forall a, b, c in ZZ: (a Rel b and b Rel c) ==> a Rel c$. Neplatí.\
        Důkaz.
        #proof[
          p-p:\
          $a=1, b=5, c=14$.\
          $1 Rel 5 and 5 Rel 14$, ale neplatí $1=14$.
        ]
      ]
)
Aby relace byla částečně uspořádánou, musí být tranzitivní, reflexivní a antisymetrická. Tuto vlastnost $Rel$ nesplňuje.

#grid(
  columns: (1fr, 1fr),
  align(left)[
    *2.*\
    a) \
    #indent[$M = $  {au, auto, automobil, to, mobil}]
    #figure(
      diagram(
        //debug: true,
        spacing: (1em, 1em), 
        node((2,0), "automobil", name: <1>),
        node((1,1), "auto", name: <2>),
        node((0,2), "au", name: <3>),
        node((1,2), "to", name: <4>),
        node((3,2), "mobil", name:<5>),
        edge(<1>, <2>, "-"),
        edge(<2>, <3>, "-"),
        edge(<2>, <4>, "-"),
        edge(<1>, <5>, "-"),
    
      ),
      caption: [Hassův diagram pro množinu $M$]
    )
    b) \
    #indent[
      Největší prvek: automobil
    
      Maximum: automobil
      
      Nejmenší prvek: au, to, mobil
      
      Minimum: au, to, mobil
    ]
    
    c) \ 
    #indent[
      au $scripts(<=)_L $ to $scripts(<=)_L$ mobil $scripts(<=)_L$ auto $scripts(<=)_L$ automobil.
    ]
  ],
  align(left)[
    *3.*\
    #figure(
      diagram(
        //debug: true,
        spacing: (1em, 1em), 
        node((0,7), "(5,A,Alda)", name: <1>),
        node((0,6), "(5,A,Klen)", name: <2>),
        node((0,5), "(5,A,Nub)", name: <3>),
        node((0,4), "(5,B,Fink)", name: <4>),
        node((0,3), "(6,C,Ego)", name: <5>),
        node((0,2), "(7,A,Job)", name: <6>),
        node((0,1), "(7,B,Cody)", name: <7>),
        node((0,0), "(7,B,Mold)", name: <8>),
        edge(<1>, <2>, "-"),
        edge(<2>, <3>, "-"),
        edge(<3>, <4>, "-"),
        edge(<4>, <5>, "-"),
        edge(<5>, <6>, "-"),
        edge(<6>, <7>, "-"),
        edge(<7>, <8>, "-"),
      ),
      caption: [Hassův diagram pro množinu $A$]
    )
  ]
)

