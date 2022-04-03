// FONDAMENTI DI FAUST
// Logiche di funzionamento alla base del linguaggio di programmazione FAUST

// --- LA RIGA DI COMMENTO
// La sintassi di Faust proviene dal linguaggio C quindi in Faust la riga di
// commento si scrive con un doppio-slash ad inizio riga "//" come si può vedere da questi esempi.

// --- IL COMMENTO MULTI RIGA
/* Come nel linguaggio C si può iniziare un commento multiriga con i caratteri
slash asterisco ad inizio commento e asterisco slash a fine commento come fatto
in questo blocco di codice. */

// --- FUNZIONE
// Una funzione è una parte del programma che permette di raggruppare, una
// sequenza di istruzioni in un unico blocco, espletando così una specifica
// (e in generale più complessa) operazione (o elaborazione) sui dati
// del programma stesso in modo che, a partire da determinati INPUT,
// restituisca determinati OUTPUT.
// L'importanza, la praticità e i vantaggi di una funzione stanno nel fatto che
// può essere "chiamata" ("richiamata"o "attivata") in diversi
// punti del programma di cui fa parte ogni volta in cui si ha la necessità di
// farlo come se fosse una singola istruzione senza la necessità di dover
// scrivere ogni volta il relativo codice permettendo così il "riuso" dello stesso.

process = _;

// --- PROCESS
// process è il luogo in cui il programma di Faust diviene attivo, le funzioni
// esterne a process diventano attive solo se chiamate direttamente o
// indirettamente nella riga di process. process è assimilabile al ciclo main
// del linguaggio C.
// l'operatore _ indica un rapporto di identità tra entrata ed uscita,
// astrazione del canale di transito del segnale. 

// --- OPERATORI MATEMATICI
// Gli operatori matematici sono + - * / % ^ ognuno dei quali ha due entrate
// implicite ed una sola uscita: 
// esempio A + B dove A e B sono le entrate della
// dell'operatore somma producono una sola uscita C. process = A+B; process = C;

// --- OPERATORI COMPOSITIVI
// Il linguaggio di faust è algebrico con logica a blocchi. Si possono scrivere
// espressioni come astrazioni del diagramma a blocchi sulla base di cinque
// operatori per la composizione dei flussi audio:
//
// ":" collegamento sequenziale
// (esempio A : B dove l'usicita di A entra nella sola entrata di B)
// --> A --> B -->
//
// "," percorso parallelo
// (esempio A, B dove i flussi di A e di B sono paralleli)
// --> A -->
// --> B -->
//
// "<:" split del percorso in n uscite
// (esempio A <: B,C dove l'uscita di A entra in B e in C)
//          |--> B -->
// --> A --<:
//          |--> C -->
//
// ":>" unione combinata di più percorsi in entrata su una o più uscite
// (esempio A,B :> C dove i flussi di A e B sono paralleli e convergono in C)
// --> A -->|
//          :>--> C -->
// --> B -->|
//
// "~" collegamento ricorsivo
// (A~B dove l'uscita di A viene collegata all'entrata di B e
// l'uscita di B viene collegata all'entrata di A)
// esempio
// A con una sola entrata, questa verrà occupata dall'uscita di B.
// +-- B <--+
// |        |
// +--> A --+-->
// A con due entrate, l'uscita B occuperà la prima entrata di A.
//   +-- B <--+
//   |        |
// --+--> A --+-->
//
// "!" interruzione di percorso
// (esempio A:! l'uscita di A viene chiusa)

// --- OPERATORI LOGICI (BITWISE)
// & "and"
// | "or"
// xor
// << "shift left"
// << "shift right"

// --- OPERATORI DI CONFRONTO
// < "minore"
// <= "minore uguale"
// > "maggiore"
// >= "maggiore uguale"
// == "uguale"
// != "diverso"

// --- OPERATORI DI RITARDO
// 1. "@" ha due entrate, il segnale da ritardare e la quantità del ritardo.
// 2. "mem" ritardo di un campione
// 3. "'" numero di campioni di ritardo (esempio x'' --> x due campioni dopo)

// --- FUNZIONI MATEMATICHE PRIMITIVE
// acos asin atan atan2 cos sin tan exp log log10 pow sqrt abs min max fmod
// reminder floor ceil rint
