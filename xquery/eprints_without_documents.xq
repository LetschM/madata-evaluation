declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>{
let $a := //eprint[not(documents)]
return $a/eprintid
}</data>