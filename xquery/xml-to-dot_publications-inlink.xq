declare option output:item-separator "&#xa;";

for $publication in //publication
let $from := $publication/title/text()
let $to := for $inlink in $publication/citations//citation
  return string-join(($from, " [arrow] ", $inlink/title/text(), ";" , "&#xa;"))
return $to
