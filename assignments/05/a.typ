#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)
#let spaces = $space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space space$
#let N = 5

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. #{N}A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. #{N +1}.\

Tento týden trochu přitvrdíme. První tvrzení se dokazuje tak, jak už umíme a jak to
budeme potřebovat k první semestrální písemce (přímočará úprava vzorců), ale budete
se muset vyrovnat s tím, že nejde o implikaci, ale ekvivalenci. Na přednáškách jsme už
to několikrát viděli, neměl by to být problém.\
Druhé tvrzení vyžaduje jiný, pokročilejší typ důkazu: Není třeba nic počítat, ale správně
sestavit předpoklady a poznatky o pojmech, které se tam objeví. Opět napoví, když se
na to zkusíte podívat odzadu: Co máme (podle definice) čtenáři přinést, aby nám už
uvěřil, že platí závěr? Pokud si to dobře rozmyslíte, tak zjistíte, že ten důkaz je vlastně
také snadný (když už je vymyšlený), takže nečekejte půlstránkové orgie.
Možná vás bude zajímat, že si takový důkaz umím představit u ústní zkoušky, někde
na rozhraní B a C.\

*1.* Nechť $n in NN$ a $a in ZZ$. Dokažte, že $a equiv 0 (mod n)$ právě tehdy, když $n | a$. \

*2.* Nechť $a, b in NN$. Dokažte, že jestliže $a | b$, pak gcd($a$, $b$)$= a$.
\
\
*1.* Důkaz:
#indent[
 #indent[
    „$==>$“:\
    $n in NN$ libovolné, $a in ZZ$ libovolné.\
    předpoklad: $a equiv 0 (mod n)$.\
    $a - 0 = k n$, $k in ZZ$.\
    $a = k n$.\
    což znamená $n | a$.\

    „$<==$“:\
    $n in NN$ libovolné, $a in ZZ$ libovolné.\
    předpoklad: $n | a$.\
    $a = k n$, $k in ZZ$.\
    $a + (-0) = k n + (-0)$.\
    $a -0 = k n$.\
    a to je stejný zápis jako $a equiv 0 (mod n)$.
 ] 
]

#set align(right)
$square$
#set align(left)
\
*2.* Důkaz:
#indent[
  #indent[
    #grid(
      columns: 2,
      gutter: 15pt,
      [
        $a, b in NN$ libovolné.\
        předpoklad: $a | b$.\
        $b = k a$, $k in ZZ$.\
        $b gt.eq a$.\
        protože každé číslo, které dělí $a$ musí dělit i $b$,\
        a zároveň gcd($a, a$)$=a$, tak gcd($a, b$)$ = a$.\
      ],
      
      [
        
        $a, b in NN$ libovolné.\
        předpoklad: $a | b$.\
        $b = k a$, $k in ZZ$.\
        obecně také platí, že $a | a$.\
        $==> a$ je společným dělitelem $a, b$.\
        #line(length: 25%)
        $forall d in NN$ taková, že $d | a space and space d | b <==> d$ je společný dělitel $a, b$.\
        dosadíme předpoklad: $d | a space and space d | (k a)$.\
        $d | a ==> |d| lt.eq |a|$.\
        a protože $a$ i $d$ jsou společnými děliteli $a, b$, a zároveň platí
        $|d| lt.eq |a|$, tak gcd($a$, $b$)$=a$.\
        $#spaces square$
      ]
    )
    
  ]
]

