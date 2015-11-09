declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>
{
for $time in //eprint[eprint_status = "archive"]//date/text()
  let $b := $time 
  order by $b
  group by $b
  return <count date="{$b}">
  
  {count($time)}
    </count>
}
</data>
