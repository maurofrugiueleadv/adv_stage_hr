# VERSIONAMENTO GITHUB https://github.com/maurofrugiueleadv/adv_stage_hr

Il versionamento su una repository online viene spesso utilizzato per poter ricreare lo stato di un db a una determinata versione.
Per qualche informazione generale sul versionamento guardare il video https://youtu.be/CIQLXAqtLWU.
Questo esercizio guidato utilizzerà lo schema HR per simulare una modifica come ad esempio la creazione di una nuova tabella, e mostreremo la distinzione tra gli ambienti di sviluppo e produzione.

<!--, nel quale creeremo gli schema HRD (HR Dev, il nostro schema di sviluppo) e HRP(HR Prod, schema che sta a simulare l'ambiente di produzione al quale si faranno le modifiche solo una volta che siano definitive e verificate) e una tabella .
-->
## Esercizio di versionamento degli oggetti del DB e simulazione di push in Produzione

### Simulazione ambiente di sviluppo

L'ambiente di sviluppo è quello in cui uno sviluppatore può effettuare le modifiche sul codice che poi andrà in ambiente di produzione. 
Durante lo sviluppo, nel tentativo di aggiungere nuove funzionalità, è inevitabile ogni tanto rompere il programma, o perdere file perchè ci si dimentica di fare backup di versioni funzionanti. La suddivisione tra ambienti di sviluppo e di produzione permette di assicurare di avere sempre una versione pronta e funzionante del codice, e strumenti come GitHub semplificano questo lavoro.

In questa prima simulazione mostriamo una funzionalità fondamentale di GitHub, il 'Commit', che permette di salvare le modifiche fatte sui nostri codici. Se si è rotto il codice, o se si è rimasti delusi dalle ultime modifiche apportate, è sempre possibile tornare indietro, ai commit precedenti, e recuperare la versione funzionante di interesse. 

In pratica in questo primo esempio, GitHub funge semplicemente da sistema di Backup, e questa sequenza di istruzioni è sufficiente ad esempio se si lavora a progetti personali: come vedremo più avanti, l'altro punto focale di GitHub è la collaborazione: mette infatti a disposizione una serie di strumenti che aiutano a più sviluppatori di lavorare indipendemente allo stesso codice senza rovinare il codice già scritto o il codice scritto da altri.

Per sfruttare le funzionalità di GitHub ci appoggeremo ad una semplice interfaccia grafica, GitHub Desktop, che permette di gestire i file contenuti nel nostro computer, e sincronizzarli con i file remoti all'interno di GitHub. Come vedremo più avanti in realtà le funzionalità di GitHub Desktop sono sostitutive di un tool chiamato Git, disponibile da terminale Linux, che vedremo però più avanti più avanti.


* Registrarsi o loggarsi sul proprio account su https://github.com/. Questo sito permette di creare un punto in cui tenere online (in remoto) i propri codici, condividerli con altri sviluppatori e gestire il flusso di lavoro

* Scaricare GitHub Desktop https://desktop.github.com/. Come già anticipato, questa applicazione ci viene in soccorso nella gestione dei file sul nostro computer (in locale). Durante l'installazione porre attenzione a quale sarà la cartella che Git usera' per allineare la repository

* Successivamente possiamo dedicarci a simulare l'ambiente di sviluppo. Supponiamo che il compito degli sviluppatori sia banalmente creare una tabella all'interno dello schema HR. Come punto di partenza quindi esportiamo lo schema HR e lo portiamo al sicuro su GitHub di modo che potremo sempre tornare a questo punto di partenza se avremo problemi con le modifiche successive. Da riga di comando quindi si può esportare con il comando
```bash
exp hr/hr file=hr.dmp statistics=none
```

* Possiamo a questo punto creare su GitHub una repository, ossia un semplice contenitore di tutti i file e codici di cui vogliamo tenere traccia durante il nostro sviluppo. Basta andare in alto a destra a fianco dell'icona del nostro profilo e cliccare sul '+' -> 'New repository'. Qui possiamo dare un nome e una descrizione alla nostra repository, e scegliere se farla privata o pubblica. Il resto delle impostazioni si possono lasciare di Default.

* GitHub ci consiglierà quindi alcune alternative per settare la nostra directory per poterci caricare i file, ci mostrerà infatti ad esempio i comandi da utilizzare sul Git (il tool per terminale Linux) ma in questo primo semplice esempio utilizziamo GitHub Desktop, cliccando 'Set up in Desktop'

* Ora siamo pronti per caricare un primo file sulla repository, e sarà il file di export creato precedentemente, contenente lo schema HR. Sempre su GitHub Desktop poissiamo cliccare su 'Show in Explorer' per andare nella directory in cui abbiamo inizializzato GitHub Desktop, e all'interno di questa caricarci il file hr.dmp. Su GitHub Desktop si vedranno quindi le modifiche alla cartella locale (in questo caso la semplice aggiunta di un file), che nei passi successivi potremo convalidare ed esportare nella repository remota su GitHub


* Per convalidare questa modifica, e tenerne quindi traccia successivamente, utilizzando la nomenclatura di Git possiamo fare un 'Commit' (in basso a sinistra su GitHub Desktop). E' importante quando si fa un commit dare un titolo abbastanza espressivo che descrive le modifiche che sono appena fatte, sempre con l'obbiettivo di poter individuare questa versione funzionante e tornare indietro se ne avremo bisogno.

* A questo punto bisogna creare un 'Branch' nella repository. Spiegheremo più avanti in dettaglio cosa sono i branch, ma basti sapere che per poter tracciare le varie versioni del codice, Git usa una struttura ad albero, la quale va sempre inizializzata creando la sua radice: in questo esempio però ci limiteremo ad una struttura lineare, senza biforcazioni, tenendo un unico ramo (branch). Detto questo su GitHub Desktop bisogna andare su 'Publish branch', che quindi creerà il punto di partenza per tutte le prossime modifiche.


* Creare nuovo script sql (dettagli)

* Commit 

* Pushare le modifiche

* Sulla repository in GitHub andare su Releases -> Create a new release

Per la nomenclatura delle release vedere https://www.geeksforgeeks.org/introduction-semantic-versioning/

<!--Da aggiungere che se non si vuole sporcare il proprio schema HR si può tornare al commit iniziale e recuperare il file di export, oppure creare creare uno schema HRD -->
* Se non si vuole sporcare il proprio schema HR si può creare un nuovo schema HRD in cui importare HR (sempre con le utility imp ed exp) e fare le modifiche su questo

### Simulazione ambiente di produzione


<!--
exp hrd/hrd file=hrd.dmp statistics=none
imp hrd/hrd file=hrp.dmp 
-->
