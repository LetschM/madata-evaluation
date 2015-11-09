declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>
{
for $time in //eprint[eprint_status = "archive"]//datestamp/text()
  let $b := substring($time, 1, 4) 
  order by $b descending
  group by $b
  return <count date="{$b}">
  
  {count($time)}
    </count>
}
</data>
