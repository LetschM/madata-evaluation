declare option output:item-separator "&#xa;";

for $eprint in //eprint
let $from := $eprint/doi/text()
let $to := for $publication in $eprint/publications/publication/title
  return string-join(($from, " [arrow] " , $publication/text(), " ;" , "&#xa;"))
return $to
