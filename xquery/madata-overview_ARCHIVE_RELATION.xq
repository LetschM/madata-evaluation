declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $eprints := //eprint[eprint_status = "archive"]
let $documents := //eprint[eprint_status = "archive"]//document
let $relation := //eprint[eprint_status = "archive"]//document[relation]
let $notrelation := //eprint[eprint_status = "archive"]//document[not(relation)]
let $creators :=
for $x in //eprint[eprint_status = "archive"]//creators/item/name
let $y := string-join(($x/family, ", ", $x/given))
group by $y
order by count($x) descending
return
<data><count licsec="{$y}">{count($x)}</count></data>
let $a := //eprint[eprint_status = "archive"]//date
let $b := //eprint[eprint_status = "archive"]//creators
let $c := //eprint[eprint_status = "archive"]//documents
let $d := //eprint[eprint_status = "archive"]/title
let $e := //eprint[eprint_status = "archive"]//subjects
let $f := //eprint[eprint_status = "archive"]//keywords
let $g := //eprint[eprint_status = "archive"]//abstract
let $h := //eprint[eprint_status = "archive"]//ubma_project
let $i := //eprint[eprint_status = "archive"]//license

return <data><count comment="total amount of eprints">{count($eprints)}</count><count comment="total amount of documents">{count($documents)}</count>
<count comment="amount of research data documents">{count($notrelation)}</count>
<count comment="amount of thumbnail documents">{count($relation)}</count>
<count comment="total amount of different creators">{count($creators)}</count><count comment="eprints with dates">{count($a)}</count><count comment="eprints with responsibility">{count($b)}</count><count comment="eprints with documents">{count($c)}</count><count comment="eprints with title">{count($d)}</count><count comment="eprints with subject">{count($e)}</count><count comment="eprints with keywords">{count($f)}</count><count comment="eprints with abstract">{count($g)}</count><count comment="eprints with ubma project">{count($h)}</count><count comment="files with license">{count($i)}</count></data>