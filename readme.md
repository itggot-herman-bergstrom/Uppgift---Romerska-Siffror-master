# Romerska Siffror #

Den här uppgiften går ut på att skriva en funktion som omvandlar arabiska (våra vanliga) siffror till romerska siffror.

## Bedömningsmatris ##

### Planering ###

| Förmågor                         | E 																																   | C | A |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|---|---|
| Aktivitetsdiagram och pseudokod  | Du använder pseudokod och/eller aktivitetsdiagram för att planera dina uppgifter utifrån exempel, eller i samråd med utbildaren.  | Som för E, men utan exempel eller handledning |   |
| Anpassning					   | Du anpassar med viss säkerhet planeringen till uppgiften 																		   |   | Som för E, men med säkerhet
| Utformning                       | Du väljer med viss säkerhet lämpliga kontrollstrukturer, metoder, variabler, datastrukturer och algoritmer | | Som för E, men du väljer med säkerhet, och motiverar utförligt dina val.|
| Utvärdering | Med viss säkerhet utvärderar du, med enkla omdömen, programmets prestanda, använder datalogiska begrepp, och bedömer din egen förmåga | som för E, men med nyanserade omdömen | Som för C, men med säkerhet, och med förbättringsförslag

### Syntax och Teori ###

| Förmågor                                       | E 																			| C | A |
|------------------------------------------------|------------------------------------------------------------------------------|---|---|
| Datatyper					                     | Du kan redogöra för och använda de vanligaste datatyperna                    |   |   |
| Grundläggande syntax		                     | Du kan redogöra för och använda programmeringsspråkets grundläggande syntax  |   |   |
| Villkor och IF-satser		                     | Du kan redogöra för och använda villkor och IF-satser                        |   |   |
| Loopar & iteration                             | Du kan redogöra för och använda loopar och iterera över listor               |   |   |

### Kodning och kodningsstil ###

| Förmågor                                      | E                                                                         | C                                               | A                                              |
|-----------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| Komplexitet									| Du kan skriva enkla program                                               | Du kan skriva lite mer avancerade program       | Du kan skriva komplexa program
| Sekventiell- & funktionsbaserad programmering | Du använder dig av sekventiell programmering och fördefinerade funktioner | Du skapar och använder enkla funktioner         | Du skapar mer komplexa funktioner              |
| Objektorienterad programmering                | Du använder dig av av fördefinerade klasser och objekt                    | Du skapar och använder enkla klasser och objekt | Du skapar och använder mer komplicerade klasser och objekt  |
| Struktur		 				                | Du skriver kod som är delvis strukturerad, har en konsekvent kodningsstil och tydlig namngivning | Som för E, men du skriver kod som är helt strukturerad |   			   |
| Felsökning                                    | Du felsöker på egen hand enkla syntaxfel | Som för E, men systematiskt, och dessutom även körtidsfel och programmeringslogiska fel | Som för C, men med effektivitet   	   |
| Undantagshantering                            |     																		| Du validerar användardata						  | Som för C, men du skriver även kod som använder undantagshantering |
| Dokumentering 								| Du skriver kod som är delvis dokumenterad									|  												  | Du skriver kod som är utförligt kommenterad    |

### Datastrukturer ###

| Förmågor        | E 														   | C 																     | A 									 |
|-----------------|------------------------------------------------------------|---------------------------------------------------------------------|---------------------------------------|
| Listor          | Du kan redogöra för och använda dig av listor (Array)      |   																     |   									 |
| Hashtabeller    | Du kan redogöra för vad hashtabeller (Hash) är             | Du kan använda dig av hashtabeller 							     |   									 |

## Beskrivning ##

Funktionen ska omvandla tal skrivna med arabiska siffror till motsvarande tal skrivet med romerska siffror.

### Det romerska talsystemet ###

I det romerska talsystemet kombinerar man tecken och lägger ihop värdena. II är två ettor, det vill säga 1 + 1.
XII är en tia, och två ettor, det vill säga 10 + 1 + 1. Det romerska talsystemet innehåller inte siffran noll, så 207 skrivs
CCVII (100 + 100 + 5 + 1 + 1). 1066 är MLXVI (1000 + 50 + 10 + 5 + 1)

Talen skrivs från vänster, och man börjar med tecknet med störst värde. Men, för att undvika att fyra likadana tecken hamnar i rad finns det ett par undantag:

* I kan placeras före V och X för att skapa talet 4 (IV) och 9 (IX) (tänk -1 + 5 och -1 + 10).
* X kan placeras före L och C för att skapa 40 (XL) och 90 (XC) (tänk -10 + 50 och -10 + 100)
* C kan placeras före D och M för att skapa 400 (CD) och 900 (CM) (tänk -100 + 500 och -100 + 1000)

Jämförelsetabell:

    Arabiska  0 1, 2,  3,   4,  5, 6,  7,   8,    9,  10, 40, 50, 90, 100, 400, 500, 900, 1000
    Romerska    I, II, III, IV, V, VI, VII, VIII, IX, X,  XL, L,  XC, C,   CD,  D,   CM,  M


Ett par exempel till:

* 80 är LXXX (50 + 10 + 10 + 10)
* 88 är LXXXVII (50 + 10 + 10 + 5 + 1 + 1
* 89 är LXXXIX (50 + 10 + 10 + (- 1 + 10)

För en mer ingående förklaring, läs på [Wikipedia](http://en.wikipedia.org/wiki/Roman_numerals), och kolla exemplen i testfilen

## Genomförande ##

### Versionshantering ###

Gör en `fork` av projektet.
Gör *regelbundna* commits med beskrivande meddelande och synka åtminstone en gång per dag.

Om du vill kan du ta bort de filer som är inte är relevanta för ditt språk

#### Ruby ####

Om du läser kursen i ruby kan du ta bort följande filer och mappar:

* lib/\_\_init\_\_.py
* lib/romanize.py
* test/**

#### Python ####

Om du läser kursen i python kan du ta bort föjande filer och mappar:

* lib/romanize.rb
* spec/**
* .rspec
* .gemfile

### Flödesschema ###

Innan du börjar koda ska du skapa ett flödesschema för programmet.
Flödesschemat ska checkas in i github.

### Kodning ###

Programmet skall utvecklas testdrivet.

#### Ruby ####

Testerna finns i `spec/romanize_spec.rb`.
Läs dem för att förstå hur funktionen skall fungera.

Kör `ruby spec/romanize_test.rb` för att köra testerna.

#### Python ####

Testerna finns i `test/romanize_test.py`.
Läs dem för att förstå hur funktionen skall fungera.

Kör `nosetests --rednose` för att köra testerna.

### Utvärdering ###

Efter programmet är avslutat skall du utvärdera hur projektet gick.
