declare option output:item-separator "&#xa;";

for $publication in //publication
let $from := $publication/title/text()
let $to := for $creator in $publication/creators//creator
  return string-join(($from, " [arrow] " , $creator/family/text(), ", ", $creator/given/text(), ";" , "&#xa;"))
return $to
