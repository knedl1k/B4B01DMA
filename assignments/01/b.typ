#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 1B

#today.day(). #today.month(). #today.year()

#set align(left)

Tento úkol vypracujte po přednášce a před cvičením.\
Pokud vám něco není jasné, zeptejte se na cvičení nebo na konzultaci.\

*1.* Najděte množinu všech přirozených čísel, která dělí číslo $a=24$.\
*2.* Najděte $gcd(192, -264)$ a příslušnou Bezoutovu identitu rozšířeným Euklidovým algoritmem.
\
\
*1.* $M={1, 2, 3, 4, 6, 8, 12, 24}$.\
\
*2.* $gcd(192, -264) = A x + B y$
#grid(
  columns: 2,
  gutter: 10pt,

  table(
    stroke: none,
    columns: (auto, auto, auto, auto),
    inset: 10pt,
    align: right,

    table.vline(),
    table.header(
      [_a/b_], [_A_], [_B_], [_q_]
    ),
    table.hline(),
    
    $264$,
    table.vline(),
    $1$,
    table.vline(),
    $0$,
    table.vline(),
    $$,
    table.vline(),

    $192$,
    $0$,
    $1$,
    $1$,
    table.hline(),
    $72$,
    $1$,
    $-1$,
    $2$,

    $48$,
    $-2$,
    $3$,
    $1$,

    $24$,
    $3$,
    $-4$,
    $2$,

    $0$
  ),

  grid(
    columns: 2,
    gutter: 20pt,

    [
      $ 264/192 = 1 "zb." 72 $
      $ 192/72 = 2 "zb." 48 $
      $ 72/48 = 1 "zb." 24 $
      $ 48/24 = 2 "zb." 0 $

    ],

    [
      \
      $A=1-0 dot 1=1$, $space$ $B=0-1 dot 1=-1$\
      \
      
      $A=0-1 dot 2=-2$, $space$ $B=1- (-1) dot 2=3$\
      \
      
      $A=1-(-2) dot 1=3$, $space$ $B=-1- 3 dot 1=-4$\
    ]

  )

  
)
$gcd(264, 192) = 24 = 3 dot 264 + (-4) dot 192$. \
A tedy $gcd(192, -264) = 24 = (-4) dot 192 + (-3) dot (-264)$.