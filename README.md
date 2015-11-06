madata-evaluation
=================

Prerequisites
-------------

* Basex (`sudo apt-get install basex`)
* xclip (`sudo apt-get install xclip`)
* graphviz (`sudo apt-get install graphviz`)


Building the citation graph
---------------------------

* Open BaseX
* Load `datavis/citation_analysis/citations.xml`
* Run the query `xquery/citations.xq`
* Copy the result (`CTRL-A` to select everything, `CTRL-C` to copy)
* Open a terminal
* Run `xclip -selection clipboard -o | sed 's/-&gt;/->/' |dot -Kcirco -Tsvg -ocitations.svg`
* Play with the argument to `-K`, e.g. `-Ktwopi` or `-Kneato`
