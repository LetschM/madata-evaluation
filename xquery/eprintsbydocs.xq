declare default element namespace "http://eprints.org/ep2/data/2.0";
for $eprint in //eprint
let $nr_docs := count($eprint//file)
group by $nr_docs
order by $nr_docs
return <docs nr_docs="{$nr_docs}">
{count($eprint/eprintid)}
</docs>