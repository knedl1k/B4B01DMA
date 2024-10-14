#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 4A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. 5.

*1.* Dokažte, že když moduly $m, n in NN$ splňují $m | n$
a čísla $a, b in ZZ$ splňují $a equiv b (mod n)$,\
pak $a equiv b (mod m)$.\

*2.* Nechť $p, q in NN$. Dokažte, že když čísla $a, b in ZZ$ splňují
$a equiv b (mod p q)$, pak $a equiv b (mod p)$\
a $a equiv b (mod q)$.
\
\
\
*1.* Důkaz:
#indent[
    #indent[
        $m, n in NN$ libovolné.
        $a, b in ZZ$ libovolné.\
        předpoklad: $m | n$ $space and space$ $a equiv b (mod n)$.\
        $n = k m$, $k in ZZ$.\
        $a - b = l n$, $l in ZZ$.\
        $a - b = l(k m) = (l k) m$, $(l k) in ZZ$.\
        A tedy platí $a equiv b (mod m)$.
    ]
]
#set align(right)
$square$
#set align(left)
\
\
\
*2.* Důkaz:
#indent[
    #indent[
        $p, q in NN$ libovolné.
        $a, b in ZZ$ libovolné.\
        předpoklad: $a equiv b (mod p q)$.\
        $a - b = k p q$, $k in ZZ$.\
        No ale to nutně znamená, že $a-b$ je dělitelné $p$ i $q$.\
        A tedy platí $a equiv b (mod p)$ a $a equiv b (mod q)$.
    ]
]

#set align(right)
$square$
#set align(left)
