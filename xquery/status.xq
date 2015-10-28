declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $a := for $status in //eprint_status
  let $b := $status/text()
  group by $b
  return <count stat="{$b}">
  {count($status)}
  </count>
return <data>{$a}</data>

