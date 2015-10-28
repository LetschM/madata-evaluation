declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $jpg :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "jpg"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $txt :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "txt"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $pdf :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "pdf"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $xlsx :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "xlsx" 
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $xls :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "xls" 
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $sav :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() let $xlsx :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "xlsx" 
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "sav"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $doc :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "doc"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $docx :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "docx"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $gz :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "gz"  
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $png :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "png"  
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $zip :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "zip"
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $sql :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "sql"  
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $csv :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "csv" 
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link> 
let $html :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "html"
  return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $Tos_Ext_raw :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "Tos_Ext_raw"  
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link>
let $Tos_Ext_hist :=
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last(
  $file_name, "."
)
where $ending = "Tos_Ext_hist"  
 return 
<madoc-link> 
{
  $ending
} 
</madoc-link>

return 
<file_amount>
<files end="pdf">{
  count(
    $pdf
  )
}</files>
<files end="txt">{
  count(
    $txt
  )
}</files>
<files end="jpg">{
  count(
    $jpg
  )
}</files>
<files end="xlsx">{
  count(
    $xlsx
  )
}</files>
<files end="sav">{
  count(
    $sav
  )
}</files>
<files end="xls">{
  count(
    $xls
  )
}</files>
<files end="docx">{
  count(
    $docx
  )
}</files>
<files end="gz">{
  count(
    $gz
  )
}</files>
<files end="png">{
  count(
    $png
  )
}</files>
<files end="zip">{
  count(
    $zip
  )
}</files>
<files end="sql">{
  count(
    $sql
  )
}</files>
<files end="csv">{
  count(
    $csv
  )
}</files>
<files end="doc">{
  count(
    $doc
  )
}</files>
<files end="html">{
  count(
    $html
  )
}</files>
<files end="Tos_Ext_raw">{
  count(
    $Tos_Ext_raw
  )
}</files>
<files end="Tos_Ext_hist">{
  count(
    $Tos_Ext_hist
  )
}</files>
</file_amount>



