Changelog
=========

2.0
	- rsyslog 7.6.3
	- metacentricke patche
		imgssapi: add keepalive option 
		https://github.com/rsyslog/rsyslog/commit/d17fdbc923a408f37ef189e8ff5d5cdb93803ec6

		imgssapi: log remote peer ip in some error messages 
		https://github.com/rsyslog/rsyslog/commit/7d0676e73996c8bfd1766929eb9cbf3a78e9d2d9

		include remote host ip in some tcp server error messages 
		https://github.com/rsyslog/rsyslog/commit/6722579707239fbbbac9dbf902f8d9ed940e083b

	- logstash 1.4.2
	- elasticsearch 1.2
	- rizeni masterless puppetem
	




1.5	
	- odstraneni zavislosti na openafs (volani pagsh)
        - zruseni binarnich balicku z repozitare (zabiraji moc mista)


1.4
	- finalizovan distribuovany test01
        - upravy v buildskriptech a plny prechod na plnou verzi v5.8.13 (v1.3 byla tak trochu 5.8.12, viz rainer...)
	- nove mongodb 2.2.2, rockmongo 1.1.4, pymongo 2.4.1
        - prechod na logstash-1.1.9
		https://logstash.jira.com/browse/LOGSTASH-494 -- vylepseni v upstreamu
		https://logstash.jira.com/browse/LOGSTASH-456 -- vylepseni v upstreamu
		https://logstash.jira.com/browse/LOGSTASH-762 -- bug
	    	https://jira.mongodb.org/browse/RUBY-490 -- bug
                https://logstash.jira.com/browse/LOGSTASH-832 -- vylepseni v upsreamu
                https://logstash.jira.com/browse/LOGSTASH-853 -- input redis pipelining
	- spousta dalsich uprav pro vyladeni na ESB4, prezentace v TaiPei, Manchester, Europen, Eunis
	- RT4.CESNET.CZ#35418 - podminene volani pagsh.openafs


1.3
	- testovani forwardu do elasticu
		instalace ES a testovani v privatnim cloudu
	- testi&tcpkill testcase a skripty
		metapatches/tcpsrv_onsessaccept.patch (server null ptr deref in tcpsessinitgss)
		# opraveno v upstreamu a lepe
		 #metapatches/omgssapi-shutdown-pqueuenull.patch (null ptr deref while shutdown)
	- metapatches/build-debug.patch
       		cistka build skriptu
	- opravy z upstreamu
		http://git.adiscon.com/?p=rsyslog.git;a=commitdiff;h=3ebbb9c4bbfe5d4a815861afde28df47d35b022e
		http://git.adiscon.com/?p=rsyslog.git;a=commitdiff;h=dec9bcfe2a869b0f70b5f2a18e08a0322ebf5517
        - rozcestnik na esb
        - rsyslogweb, logstash a kibana PoC


1.2a 
	- novy service log pbs, job_too_log report
        - novy service auth tcp forward smerem na esb
        - logstash + filter, grok typu SSHLINE, output do mogodb
	- webove rozhrani a PoC mongomine


1.2 
	- prechod na build z git::v5stable + metapatches


1.1
	- pridano preservefqdn do klienta/serveru abychom dokazali prijimat i forwardovane zpravy z jinych collectoru (cerit...)
	- zmenen format ukladanych zprav, pridano hostname pro spravnou identifikaci zdroje v pripade preposilan
	- update a import pomocnych skriptu


1.0
	- opravena konfigurace RepeatedMsgReduction
	- action.c patchnuto aby se redukovaly i hlasky z printk() ktere maji na zacatku dodatecny timestamp


0.9 
	- pridan $ActionQueueTimeoutEnqueue aby nebyl system zablokovan pri zaplneni cache


0.8
	- konfigurace centralniho logovani presunuta do rsyslog.d (defaultne -DISABLED)
	- rbXX verze pridana do jmena baliku
        - nastavena maximalni velikost cache na 100m
	- refreshcc
        -- cron do dev null
        -- planovani rychlejsi obnovy pri failu (at)
        -- logovani udalosti do logu i stderr

0.7 	
	- elasticsearch, logstash, dokumentace


0.6 
	- added support scripts


0.5 
	- omgssapi.c cleaned from maintainer git cleaned version


0.4 
	- rewrite omgssapi.c tak aby fungoval stejne jako omfwd.c a nedelal reconnect DoS kdyz server odmita spojeni pres RST


0.3 
	- oprava forwardovani logu na 2 servery soucasne


0.2 
	- vkladani principalu do zpravy


0.1 
	- prvni release

                  


