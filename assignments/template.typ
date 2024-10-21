#set text(font: "New Computer Modern", lang:"cs", size:10pt)

#let today = datetime.today()
#let indent = pad.with(left: 1em)

#let N = 5 #!CHANGEME

#set align(center)
= B4B01DMA
Jakub Adamec\
Domácí úkol č. #{N}A

#today.day(). #today.month(). #today.year()

#set align(left)
Tento úkol vypracujte a pak přineste na cvičení č. #{N +1}.\

*1.* \

*2.* 
\
\
\
*1.* Důkaz:
#indent[
 #indent[

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
    
  ]
]

#set align(right)
$square$
#set align(left)

