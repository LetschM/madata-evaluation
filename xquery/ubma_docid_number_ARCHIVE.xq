declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{
let $a := //eprint[eprint_status = "archive"]//ubma_docid_number
return count($a)
}</data>