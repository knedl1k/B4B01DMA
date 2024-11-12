#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. 5B

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte po přednášce a před cvičením.\
Pokud vám něco není jasné, zeptejte se na cvičení nebo na konzultaci.\

*1.* Uvažujme relaci $cal(R)$ z množiny $A = {4,5,6,7,8}$ do množiny $B = {e, i, n, t}$ definovanou pro
$alpha in A$ a $beta in B$ takto: $alpha cal(R) beta$ jestliže se písměno $beta$ (případně s háčkem) objeví
ve slovním vyjádření čísla $alpha$.\
Napište danou relaci (jako množinu s výpisem dvojic) a nakreslete její graf, pak najděte její reprezentující
matici a na závěr její inverzní relaci.

*2.* Mějme dvě relace na množině $A = {1, 2, 3, 4}$, relaci $cal(R) = {(1,1),(1,4),(2,1),(3,4)}$ a relaci
$cal(S) = {(1,4),(1,3),(4,3),(3,2)}$. Najděte relace $cal(S) compose cal(R)$ a $cal(R) compose cal(S)$.
