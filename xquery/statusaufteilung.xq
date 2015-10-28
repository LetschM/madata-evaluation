declare default element namespace "http://eprints.org/ep2/data/2.0";
let $nr_archive := for $eprint in //eprint_status[. = "archive"] return <stat> 
{$eprint/eprint_status} 
</stat>
let $nr_inbox := for $eprint in //eprint_status[. = "inbox"] return <stat> 
{$eprint/eprint_status} 
</stat>
let $nr_buffer := for $eprint in //eprint_status[. = "buffer"] return <stat> 
{$eprint/eprint_status} 
</stat>
let $nr_deletion := for $eprint in //eprint_status[. = "deletion"] return <stat> 
{$eprint/eprint_status} 
</stat>
return <nr_stat><archive>{count($nr_archive)}</archive><inbox>{count($nr_inbox)}</inbox><buffer>{count($nr_buffer)}</buffer><deletion>{count($nr_deletion)}</deletion></nr_stat>