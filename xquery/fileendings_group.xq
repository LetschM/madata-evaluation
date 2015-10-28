declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';
(: let $countfiles := :)
(: let $filecount :=   :)
  for $file_name in eprints/eprint/documents/document/files/file/filename/text() 
  let $ending := functx:substring-after-last($file_name, ".")
  group by $ending
  return 
<madoc-link> 
{$ending} 
</madoc-link>
(: return count($filecount) :)

(: return <result>{count($countfiles)}</result> :)

