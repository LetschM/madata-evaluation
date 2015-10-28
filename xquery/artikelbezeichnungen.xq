xquery version "1.0";
<Artikelliste>
{
  let $doc := doc("lagerbestand.xml")
  for $x in $doc//Artikel
  where $x/Bezeichnung[contains(., "Jalou")] and $x/Bestand > 100
  order by $x/Bezeichnung
  return
    <Artikel>
     {$x/@*}
     {$x/Bezeichnung}
     {$x/Bestand}
    </Artikel>
}

</Artikelliste>
