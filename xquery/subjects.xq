declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $a := for $subject in //subjects/item
  let $b := $subject/text()
  group by $b
order by count($subject) descending
  return <count sub="{$b}">
  {count($subject)}
  </count>
return <data>{$a}</data>
