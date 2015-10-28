declare default element namespace "http://eprints.org/ep2/data/2.0";
let $median_idx := round(count(//file) div 2)
let $sortedfiles :=
  for $file in //file
  let $filesize := number($file//filesize/text())
  order by $filesize
  return $file
return <result>
<median>{$sortedfiles[$median_idx]//filesize}</median>
<median-idx>{$median_idx}</median-idx>
<by-filesize>{
  for $file in $sortedfiles
  return $file//filesize
}</by-filesize>
</result>
