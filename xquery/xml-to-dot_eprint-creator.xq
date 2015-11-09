declare option output:item-separator "&#xa;";

for $eprint in //eprint
let $from := $eprint/doi/text()
let $to := for $creator in $eprint/creators//creator
  return string-join(($from, " [arrow] " , $creator/family/text(), ", ", $creator/given/text(), ";" , "&#xa;"))
return $to
