// FUNZIONE

/* FAUST (Functional AUdio STream) è un linguaggio di programmazione 
puramente funzionale di dominio specifico per l'implementazione 
di algoritmi di elaborazione del segnale sotto forma di librerie, 
plug-in audio o applicazioni standalone. Un programma FAUST 
denota un processore di segnale: una funzione matematica 
che viene applicata a un segnale in ingresso e quindi emessa. 
FAUST è un linguaggio testuale ma orientato allo schema a blocchi. 
Combina due approcci: 
(1)programmazione funzionale e (2)diagrammi a blocchi algebrici, 
che sono costruiti tramite la composizione di funzioni. 
Per questo FAUST si basa su un'algebra 
di diagrammi a blocchi con le cinque operazioni di composizione. */

// La libreria standard di FAUST è chiamata "stdfaust.lib"
// e si importa in questo modo: 
import("stdfaust.lib");

/* Il modello di programmazione FAUST combina un approccio 
di programmazione funzionale con la sintassi del diagramma a blocchi.
l'approccio di programmazione funzionale fornisce un quadro diretto di come il segnale viene elaborato.

I segnali digitali sono modellati come funzioni discrete del tempo, 
i processori di segnale come funzioni del secondo ordine che operano 
su di essi.
Gli operatori di composizione del diagramma a blocchi di FAUST vengono 
utilizzati per combinare insieme i processori di segnale 
come funzioni del terzo ordine, ecc.

I diagrammi a blocchi, anche se puramente testuali come in FAUST, 
visualizzano un approccio modulare all'elaborazione del segnale conforme 
alle abitudini degli ingegneri del suono e degli sviluppatori audio.
Un programma FAUST non descrive un suono o un gruppo di suoni, 
ma un processore di segnale. 
Il sorgente del programma è organizzato come un insieme di definizioni 
con la definizione della parola chiave process 
(l'equivalente di main in C): */
process = no.noise;

/* Il compilatore FAUST traduce il codice FAUST in un oggetto C++, 
che può quindi interfacciarsi con altro codice C++ 
per produrre un programma completo.
Il codice generato funziona a livello di singoli campioni. 
È quindi adatto per implementare funzioni Digital Signal Processing
di basso livello come ad esempio i filtri ricorsivi. 
Il codice può anche essere incorporato. 
È autonomo e non dipende da alcuna libreria DSP o sistema runtime. 
Ha un comportamento deterministico e una dimensione di memoria costante.
La semantica di FAUST vuole essere semplice e ben definita. 
Questo consente al compilatore FAUST di essere guidato semanticamente. 
Invece di compilare letteralmente un programma, 
viene compilata la funzione matematica che denota. 
Ciò può favorire il riutilizzo dei componenti già scritti nel codice come le variabili. 
Inoltre, avere accesso alla semantica esatta di un programma FAUST 
può semplificare i problemi di conservazione del codice. */
