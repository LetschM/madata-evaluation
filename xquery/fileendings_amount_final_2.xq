declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<foo>{
  for $fname in //filename/text()
    let $ext := functx:substring-after-last($fname, ".")
    group by $ext
    return <count ext="{$ext}">{count($fname)}</count>
}</foo>