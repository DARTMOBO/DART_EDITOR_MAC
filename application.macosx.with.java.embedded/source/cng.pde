// il valore speed che veniva caricato con encoder semplice era sbagliato... non veniva aumentato di 32
// 74 

// aggiungo modalità encoder - n19

// risolto problema nel caricamento del preset, sui valori negativi (speed)
// 73
// da risolvere il save del parametro speed- se è negativo non viene salvato -  viene salvato i valore zero "0"

// risolto un piccolo problema di doppioni di pulsanti con setUIButtonsPosition che era ripetuto più volte nell'init

// dovrebbe essere risolto il problema del send this su page 2
// non spunta più il selettore scale dopo aver premuto send this 


// LO SFONDO DEL MONITOR ADESSO è PIù SCURO
// alcune correzioni testuali sul MODE HINT 
// ho cambiato la posizione al selettore MODE messo in alto a destra, perchè è più importante
// quando spunta il selettore scale , value scompare
// in scale mode il selettore scala fissa (matrix) non spariva, sistemato
// 72

// adesso se togglemode è 0 , cioè se un modificatore è in modalità BLIND non si può illuminare quando riceve un feedback midi - da testare - vedi sezione midi_in

// 71

// aumentato il delay a 20ms tra un messaggio e l'altro... per evitare il fatto che a causa di PROGMEM ci siano intoppi col firmware
//70

// IN MYUI LE NUMBERBOX CONTENGONO UNA RIGA CHE DOPPIA I VALORI SULLA SECONDA PAGINA...

// problema feedback con pitch bend  - si illuminano tanti modificatori
// sistemata immagine ccircuito nnumerazione
// 68

// sistemato il send della tabella KEYBOARD - sistemato corrispondenze simboli (testato su win --- mac da testare)

// Qwertyvalue su GENERAL decide gli effetti visivi ... c'è qualche problema nel salvataggio e riassegnamento della variabile - risolto


// 67

// ho fatto in modo che gli elementi in hide inviano la modalità blind position al loro input.

// migliorate una cosetta sul sound che faceva bloccare tutto all'avvio
// risolto problema dei valori fissi di maxvalue e channel che rimanevano bloccati nella seconda pagina


// il default preset aveva un problema : la seconda pagina aveva tutti i modificatori in canale 0 - metto tutto su 1

// i modificatori danno un impulso visivo temporaneo quando ricevono il loro corrispettivo messaggio midi (no velocity)

// adesso vengono inviati 5 messaggi midi da editor.
// led è sul quinto messaggio
// ---- v60



// adesso l'editor carica sempre "Default-Preset.csv" all'avvio 
// quindi è possibil fare partire l'editor con un preset modificato... gli utenti possono creare il loro editor.

//se un modificatore è messo in GENERAL mode. sarà visibile solo in EDIT MODE.

//sto mettendo blind input su 0 
//e raggruppando pot e hyper
//e pot e toggle

// cambiato commento hint EDIT. conteneva ancora le indicazioni per cambiare etichette...

// 56

// cliccando sui modificatori viene inviato midi out per testare il feedback, solo su button e pot mode!

// il modificatore 60 impostato su GENERAL MODE è sempre attivo . non si può cancellare

// adesso vengono inviati anche i modificatori in HIDE . con un MODE value 19 - cioè in blind input mode.

// adesso anche general settings viene linkato tra page 1 e 2 

// a volte il selettore scle spuntava alla cavolo... sistemato scale_show in modo che appare solo al momento giusto

//adesso si possono definire quattro scale , due per ogni spinner -  le scale vengono immagazzinate da nt e max


// per fare spazio alla funzione scale sto mettendo speed  che va da -32 a +32 - bisogna adattare lo sketch dart



//i commenti hint di MODE sono tropppo prolissi!

// fare in modo che send this mandi anche il general mempos

// sistemato plugga_page in modo che general mempos è sempre linkato
// general mempos sempre visibile

// aggiunto antidoppione per MODE general e plugga_page per copiarne i valori in entrambe le pagine

//se si seleziona page come MODE, antrambe le pagine vengono pluggate ... reso uguali. il problema è che il plug rimane. ammenocchè non si cambi due volte la page
// aggiungo MODE general . mancano ancora le etichette

// ho aggiunto un buffer di un messaggio midi nel monitor - adesso anche messaggi midi molto ravvicinati nel tempo,  vvengono comunque visualizzati

// ho limitato a 60 il numero massimo di modificatori - al momento UNO  e LEONARDO possono gestirne 60 massimo.

// pare ci sia un problema strano al monitor - che si manifesta solo col virtual touch : s
// su midiox vedo l'accceso a 127 e lo spento a 0 - sul dart editor vedo sempre spento 0
//
// ho analizzato il problema e ho capito che dipende dalla velocità di trasmissione- il touch virtual Accesso è seguito immediatamente dal messagggio encoder.
// l'algoritmo del dart-editor riceve il messaggio ma non fa in tempo a visualizzarlo, che ne arriva un'altro a sostituire i valori in channel raw1 value e intensity

//aggiunta la funzionalità midiout - quando si clicca su un modificatore

// adesso si collega automaticamente a tutti i dispositivi che contengono "DART" neel nome dispositivo

//quando si chiude l'editor  - vengonno sparati fuori dati a caso... forse sarebbe meglio staccare prima la porta midi e poi chiudere il programma

// scelta colori
// fix allarme


// per risolvere il problema dell'allarme doppioni (che si cancella facilmente) ... si resetta tutto a blind input e si evita che anche se in hide si triggherino gli hints dei numberbox...

// lista dei MODE che devono essere uguali per due pagine - tutti da page ( uguali in tutte e due le pagine ) in poi
// page deve avere anche i dati uguali
// meccanismo anti-doubles su : page, touch 1 2 , spinner 1, 2, pads , mouse, 


// togglemode deve ancche esso essere selezionabile nelle due pagine
// si potrebbero rendere singoli anche tutti i numberbox ... 

// adesso la finestra hintbox è una per tutti i modificatori. lo sketch è molto aleggerito.

// riscrivere il send out - send all: manda tutto - send single - manda solo il selezionato nella pagina selezionata - i modificatori con memoryposition 0 non devono essere mandati
// fare in modo che quando viene caricato un preset o all'avvio, il primo modificatore sia già selezionato.

// sto lavorano a un sistema che evita i doppioni di memoryposition -  se si mette 0 la memotyposition saraà "null" e non viene inviata al controller col send - invio solo 1-64
// quando viene aggiunto un modificatore , esso avrà una memoryposition 0

// fare in modo che page abbia sempre gli stessi settaggi in entrambe le pagine


// labeler_ è una veriabile non utilizzata al momento - sto usando MODE (togglemode) per il labeling e tutto
// possibilità di inserire value-list speciali per touch e altre funzioni speciali - con relativi suggerimenti



// se inserisco una hint con __ due accapo funziona se inserisco _ _ due accapo spaziati si blocca tutto
// i qwertyvalue sono tutti maiuscoli - risolto

// risolto problemii all'avvio... se era presente un flusso dati midi, la porta veniva bloccata all'avvio - ora risolto

// add modalità modifier 3 al + ctrl + shift
// add qwerty monitor - fatto
// spiegazione con mouseoover anche della sezione mouse.

// id list
// alarme page =2021
// label hint = 2012
// label led - 2014
// label 2013
// hintarea = 2011
// type = 2001
// note 2002
// min 2003
// max 2004
// channel 2005
// dmx 2006
// mode 2007
// keyboard 2010
// modifiers 2009
// toggle 2008
// mp 2000
// exit 1000
// send 1 1001
// send 2 1002
// save 1004
// load 1005
// edit 1006
// send page 1 1003
// send page 2 1003
