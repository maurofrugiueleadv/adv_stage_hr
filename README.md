VERSIONAMENTO GITHUB https://github.com/maurofrugiueleadv/adv_stage_hr

Il versionamento su una repository online viene spesso utilizzato per poter ricreare lo stato di un db a una determinata versione.
Questo esercizio utilizzerà lo schema HR per simulare una modifica e creare un esempio pratico di versionamento, nel quale creeremo gli schema HRD (HR Dev, il nostro schema di sviluppo) e HRP(HR Prod, schema che sta a simulare l'ambiente di produzione al quale si faranno le modifiche solo una volta che siano definitive e verificate) e una tabella .


Esercizio di versionamento degli oggetti del DB e simulazione di push in Produzione

1 - Registrare o loggare sul proprio account su https://github.com/ 
2 - Scaricare GitHub Desktop https://desktop.github.com/ e durante l'installazione porre attenzione a quale sarà la cartella 	che Git 
	usera' per allineare la repository
3 - Esportare il db HR (inserire steps)
4 - creare nuovo script sql (dettagli)
5 - pushare le modifiche


exp hrd/hrd file=hrd.dmp statistics=none
imp hrd/hrd file=hrd.dmp