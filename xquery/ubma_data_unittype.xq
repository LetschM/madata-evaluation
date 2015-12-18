declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $a := for $ubma in //eprint[eprint_status = "archive"]//ubma_data_unittype
  let $b := $ubma/text()
  group by $b
order by count($ubma) descending
  return <count content="{$b}">
  {count($ubma)}
  </count>
return <data>{$a}</data>
