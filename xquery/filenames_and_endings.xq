declare default element namespace "http://eprints.org/ep2/data/2.0";
let $madoc_uris := for $madoc_item in //ubma_publications/item/text()
  return substring-before(substring-after($madoc_item, "a href='"), "' ")
return
<madoc-link>
{count($madoc_uris)}
</madoc-link>