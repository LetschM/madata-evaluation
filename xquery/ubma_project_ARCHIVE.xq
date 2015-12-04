declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{
  for $a in //eprint[eprint_status = "archive"]//ubma_project
    let $b := $a/title/text()
    group by $b
    order by count($a) descending
    return <count project="{$b}">{count($a)}</count>
}</data>