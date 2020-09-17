USER_AGENT='Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0' 
DEFAULT_OPTS=--title-bar-style 'hiddenInset' \
	     --user-agent ${USER_AGENT} \
	     --single-instance
DEST=bins

all: clean keep

clean:
	rm -rf ${DEST}

bins:
	mkdir -p ${DEST}

keep: bins
	nativefier -f \
	  ${DEFAULT_OPTS} \
	  --inject styles/keep.css \
	  --name "Keep" \
	"https://keep.google.com" \
	${DEST}

.PHONY: clean keep all
