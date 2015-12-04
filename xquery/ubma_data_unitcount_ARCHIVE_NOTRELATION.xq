declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{

  for $a in //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_unitcount
    let $b := $a/text()
    group by $b
    order by count($a) descending
    return <count unitcount="{$b}">{count($a)}</count>

}</data>
