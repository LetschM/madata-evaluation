declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

<data>
{
for $time in //datestamp/text()
  let $b := substring-before($time, " ") 
  order by $b descending
  group by $b
  return <count date="{$b}">
  <date>{$b}</date>
  <num>{count($time)}</num>
    </count>
}
</data>
