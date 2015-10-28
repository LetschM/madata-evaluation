declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $a := for $license in //license
  let $b := $license/text()
  group by $b
  return <count lic="{$b}">
  {count($license)}
  </count>
return <data>{$a}</data>

