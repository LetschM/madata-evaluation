madata-evaluation
=================

Building the citation graph
---------------------------

* Open BaseX
* Load `datavis/citation_analysis/citations.xml`
* Run the query `xquery/citations.xq`
* Copy the result
* Open a terminal
* Run `xclip -o | sed 's/-&gt;/->/' |dot -Tsvg -ocitations.svg`
