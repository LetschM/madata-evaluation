declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $eprints := //eprint
let $documents := //document
let $creators :=
for $x in //creators/item/name
let $y := string-join(($x/family, ", ", $x/given))
group by $y
order by count($x) descending
return
<data><count licsec="{$y}">{count($x)}</count></data>
let $a := //date
let $b := //creators
let $c := //documents
let $d := //eprint/title
let $e := //subjects
let $f := //keywords
let $g := //abstract
let $h := //ubma_project
let $i := //license

return <data><count comment="total amount of eprints">{count($eprints)}</count><count comment="total amount of documents">{count($documents)}</count><count comment="total amount of different creators">{count($creators)}</count><count comment="eprints with dates">{count($a)}</count><count comment="eprints with responsibility">{count($b)}</count><count comment="eprints with documents">{count($c)}</count><count comment="eprints with title">{count($d)}</count><count comment="eprints with subject">{count($e)}</count><count comment="eprints with keywords">{count($f)}</count><count comment="eprints with abstract">{count($g)}</count><count comment="eprints with ubma project">{count($h)}</count><count comment="eprints with license">{count($i)}</count></data>