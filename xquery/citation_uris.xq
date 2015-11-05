<data>{
for $a in //eprint
return <eprint>{$a/uri}{for $x in $a/creators/creator return $x/family}{
  for $b in $a/publications/publication
  return <pub>{$b/uri}{for $y in $b/creators/creator return $y/family}{
    for $c in $b/citations/citation
    return <citation>{$c/uri}{
      for $d in $c/creators/creator
      return $d/family}
    </citation>
}</pub>
}</eprint>
}</data>