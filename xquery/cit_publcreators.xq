<data>{
for $b in //publication/creators/creator
let $a := string-join(($b/family, ", ", $b/given))
group by $a
order by count($b) descending

return

<count creator="{$a}">{count($b)}</count>
}</data>