declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{

  for $a in //eprint[eprint_status = "archive"]/ubma_additional_title
    let $b := $a/item
    group by $b
    order by count($a) descending
    return <count title="{$b}">{count($a)}</count>

}</data>
