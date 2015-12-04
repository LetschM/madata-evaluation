declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
<data>{
  for $field in //eprint[eprint_status = "archive"]//ubma_fieldtime
    let $ext := string-join(($field/start, " - ", $field/end))
    group by $ext
    order by count($field) descending
    return <count fieldtime="{$ext}">{count($field)}</count>
}</data>