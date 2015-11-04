
import module namespace functx = 'http://www.functx.com';

<data>
{
for $a in //publication
let $b := count($a/citations/citation)
group by $b
order by count($a) descending
return <count citations="{$b}">{count($a/title)}</count>
}
</data>