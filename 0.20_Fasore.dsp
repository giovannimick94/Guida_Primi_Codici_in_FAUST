// FASORE 

/* Per ottenere un segnale FASORE, 
dal nostro segnale di Rampa ad incremento infinito, vogliamo creare un segnale che si ripeta
secondo tale andamento ciclicamente (ogni tot. campioni)
determinando di conseguenza il suo incremento da un punto di partenza ad un punto di fine.
Bisogna creare una funzione che escluda I NUMERI INTERI che sappiamo essere in una RAMPA crescenti all'infinito.
E mantenere i suoi decimali che hanno un determinato incremento alla base
che si ripete crescendo sino ad arrivare ad un numero intero.

decimale(x) è la nostra prima funzione, in cui determiniamo che 
"decimale" vuole dire che ad x sottraiamo gli interi di x, 
e quindi si avranno i decimali di x.
decimale(x)= x-int(x);

Il "fasore" è la nostra seconda funzione.
0.002 in uscita è connesso in entrata (:) a + (+ connesso a funzione decimale) 
e tutto questo avviene in loop ~ (~ che punta al primo ingresso disponibile nella funzione)
fasore = 0.002 : (+ : decimale) ~ _;

il fasore muovendo ogni campione per un incremento di 0.002 
arriva da 0.002 a 1 in 500 campioni.
500 incrementi di 0.002. 
Avendo 48000 samples che definiscono un secondo, 
in 48000 samples, 500 equivalgono a 96 steps creando dunque 96Hz di frequenza (96 oscillazioni al secondo).

process infine, 
è la funzione finale e dichiara che il nostro fasore che si muove ora tra 0. e 1. 
con - 0.5, si muove tra - 0.5 e +0.5, 
e moltiplicando *2, si muove tra -1. e 1.
dunque con "process = (fasore-0.5)*2;"
viene effettuato il riscalamento perchè il fasore solo in fase positiva potrebbe creare problemi ai coni.
degli altoparlanti */

//CODICE:
decimale(x)= x-int(x);
phase = 0.002 : (+ : decimale) ~ _;
process = (phase);
