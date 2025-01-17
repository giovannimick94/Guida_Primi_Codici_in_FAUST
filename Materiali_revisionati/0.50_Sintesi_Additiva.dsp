// SINTESI ADDITIVA

/* La sintesi additiva è una tecnica di sintesi del suono
utilizzata nella musica elettronica che crea timbriche, forme d'onda complesse, sommando insieme singole onde
generalmente sinusoidali.

In base alla teoria di Fourier, la forma d'onda di un segnale 
e il suo inviluppo nel tempo possono essere ottenuti matematicamente 
come combinazione di onde sinusoidali di frequenza multipla 
di una frequenza fondamentale (armoniche) e di onde sinusoidali 
parziali di frequenza, fase e ampiezza diversa che, entrambe, 
possono crescere, mantenersi e decadere nel tempo. 
(Rivedere la definizione e renderla più chiara)

Questa teoria si può applicare anche alle forme d'onda 
generate da uno strumento musicale 
consentendo così di scomporne il timbro e 
il suono in onde sinusoidali elementari.
La sintesi additiva sfrutta esattamente questo meccanismo 
per imitare il suono di un qualsiasi strumento musicale 
sommando l'uscita di più oscillatori usati come generatori di forme d'onda, 
modulati e regolati secondo le caratteristiche risultanti dalla scomposizione di Fourier. 
In questo modo è possibile riprodurre la forma d'onda corrispondente 
al timbro dello specifico strumento, emulandone quindi il proprio suono. */

//importiamo la libreria
import("stdfaust.lib");

//dichiariamo 2PI
due_pigreco = 6.2831853071795;

// creiamo una funzione che sottragga i numeri interi lasciando i decimali
decimale(x) = x-int(x);
// dichiariamo un argomento alla funzione per stabilire la frequenza nel process
// e dichiariamo un secondo argomento per stabilire l'ampiezza
// e creiamo la funzione dell'oscillatore sinusoidale
osc(frequenza, ampiezza) = sin((frequenza/ma.SR : (+ : decimale) ~ _ ) 
                                    *due_pigreco) *ampiezza;
            
// ora richiamo la funzione più volte per sommare le varie componenti 
// (onde sinusoidali) all'interno dello spettro.
// per ognuna: (frequenza, ampiezza).
// Uscita del segnale con il process:

process = 
osc(300.5, 0.500) +osc(450, 0.200) +osc(500, 0.100) +osc(600, 0.060);
