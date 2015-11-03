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

return <data><eprints comment="total amount of eprints">{count($eprints)}</eprints><documents comment="total amount of documents">{count($documents)}</documents><creators comment="total amount of different creators">{count($creators)}</creators><date comment="eprints with dates">{count($a)}</date><ewc comment="eprints with responsibility">{count($b)}</ewc><ewd comment="eprints with documents">{count($c)}</ewd><title comment="eprints with title">{count($d)}</title><ews comment="eprints with subject">{count($e)}</ews><ewk comment="eprints with keywords">{count($f)}</ewk><ewa comment="eprints with abstract">{count($g)}</ewa><ewp comment="eprints with ubma project">{count($h)}</ewp><ewl comment="eprints with license">{count($i)}</ewl></data>