.PHONY: test

VTTFILE=Gambämark - En musikal av humorgruppen KAJ.vtt

test:
	diff "${VTTFILE}" <(cat "${VTTFILE}" | ./vtt2smi | ./smi2vtt)
