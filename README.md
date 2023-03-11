VERSIONAMENTO GITHUB https://github.com/maurofrugiueleadv/adv_stage_hr

Il versionamento su una repository online viene spesso utilizzato per poter ricreare lo stato di un db a una determinata versione.
Questo esercizio utilizzerà lo schema HR per simulare una modifica e creare un esempio pratico di versionamento, nel quale creeremo gli schema HRD (HR Dev, il nostro schema di sviluppo) e HRP(HR Prod, schema che sta a simulare l'ambiente di produzione al quale si faranno le modifiche solo una volta che siano definitive e verificate) e una tabella .


Esercizio di versionamento degli oggetti del DB e simulazione di push in Produzione

1 - Registrare o loggare sul proprio account su https://github.com/ 
2 - Scaricare GitHub Desktop https://desktop.github.com/ e durante l'installazione porre attenzione a quale sarà la cartella che Git 
	usera' per allineare la repository



3 - Esportare il db HR via Sqlplus con il comando: exp hr/hr file=hrd.dmp statistics=none

... - Creare una nuova repository su GitHub (andando sul + in alto a destra)

... - Nella pagina che viene presentata andare su setup in desktop

... - e caricare il file export (su github desktop fai 'show in explorer' e carica nella giusta directory)

... - Fai commit

... - Publish branch

4 - creare nuovo script sql (dettagli)

... - Commit 

5 - pushare le modifiche




exp hrd/hrd file=hrd.dmp statistics=none
imp hrd/hrd file=hrd.dmp

------------------------------------------------------------
