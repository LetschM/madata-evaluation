JENA_VERSION = 3.0.1
JENA_DIR = apache-jena-$(JENA_VERSION)
JENA_TARGZ = $(JENA_DIR).tar.gz
JENA_URL = http://artfiles.org/apache.org/jena/binaries/$(JENA_TARGZ)
JENAROOT = $(PWD)/$(JENA_DIR)

SPARQL = $(JENAROOT)/bin/sparql --results csv --data output.xml

$(JENA_DIR): $(JENA_TARGZ)
	tar xmf $(JENA_TARGZ)

$(JENA_TARGZ):
	wget $(JENA_URL)


clean:
	rm -rf sparql-csv

sparql-csv: sparql-csv/from-to.csv

sparql-csv/%.csv: sparql/%.rq
	mkdir -p sparql sparql-csv
	$(SPARQL) --query $< > $@
