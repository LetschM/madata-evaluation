declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $a := for $sec in //eprint[eprint_status = "archive"]//document[relation]//security
  let $b := $sec/text()
  group by $b
  return <count sec="{$b}">
  {count($sec)}
  </count>
return <data>{$a}</data>

