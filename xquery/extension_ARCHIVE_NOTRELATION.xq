declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{
  for $fname in //eprint[eprint_status = "archive"]//document[not(relation)]//filename/text()
    let $ext := functx:substring-after-last($fname, ".")
    group by $ext
    order by count($fname) descending
    return <count ext="{$ext}">{count($fname)}</count>
}</data>