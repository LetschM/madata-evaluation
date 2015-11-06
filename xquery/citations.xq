declare function local:slugify($title as element()*)
  as xs:string {
    let $chars := for $word in tokenize($title/text(), " ")
      return substring($word, 1, 1) 
    return replace(string-join($chars), '[^A-Za-z0-9]', '_')
};

let $indent := "  "
let $semicolon := ";"
let $nl := "&#10;"
let $arrow := " -> "
let $default_attr := concat(
  'fontname="Courier-Bold",',
  'fontcolor="black",',
  'style="filled",')
let $creator_attr     := concat('[', $default_attr, 'fillcolor="#8888ff"', ']')
let $madata_attr      := concat('[', $default_attr, 'fillcolor="#ff8888"', ']')
let $publication_attr := concat('[', $default_attr, 'fillcolor="#88ff88"', ']')
let $citation_attr    := concat('[', $default_attr, 'fillcolor="#ffff88"', ']')

let $graph_attr := 'bgcolor="#eeeeee";'
let $all_lines := for $eprint in //eprint
  let $madata := concat('"', $eprint/doi/text(), '"')
  let $madata_def := concat($indent, $madata, $madata_attr, $semicolon, $nl)
  let $madataToCreator := for $creatorElem in $eprint/creators//creator
    let $creator := concat('"', $creatorElem/family/text(), '"')
    return concat(
      $indent, $creator,  $creator_attr, $semicolon, $nl,
      $indent, $creator, $arrow, $madata, $semicolon, $nl)
  let $madataToPublication := for $publicationElem in $eprint/publications/publication
    let $publication := concat('"pub:', local:slugify($publicationElem/title), '"')
    let $publicationToCitation := for $citationElem in $publicationElem/citations/citation
      let $citation := concat('"cit:', local:slugify($citationElem/title), '"')
      let $citationToCreator := for $creatorElem in $citationElem/creators/creator
        let $creator := concat('"', $creatorElem/family/text(), '"')
        return concat(
          $indent, $creator,  $creator_attr, $semicolon, $nl,
          $indent, $creator, $arrow, $citation, $semicolon, $nl)
      return concat(
        string-join($citationToCreator),
        $indent, $citation,  $citation_attr, $semicolon, $nl,
        $indent, $publication, $arrow, $citation, $semicolon, $nl)
    return concat(
      string-join($publicationToCitation),
      $indent, $publication, $publication_attr, $semicolon, $nl,
      $indent, $publication, $arrow, $madata, $semicolon, $nl
    )
  return concat($madata_def,
    string-join($madataToCreator),
    string-join($madataToPublication))
return concat("digraph madataToCreator {", $nl, $graph_attr, $nl, string-join($all_lines), "}")
