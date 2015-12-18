declare default element namespace "http://eprints.org/ep2/data/2.0";
import module namespace functx = 'http://www.functx.com';

let $ea := //eprint[eprint_status = "archive"]/ubma_survey_method
let $eb := //eprint[eprint_status = "archive"]/ubma_region_free
let $ec := //eprint[eprint_status = "archive"]/ubma_project
let $ed := //eprint[eprint_status = "archive"]/ubma_language
let $ee := //eprint[eprint_status = "archive"]/ubma_id_number_checked
let $ef := //eprint[eprint_status = "archive"]/ubma_additional_title
let $eg := //eprint[eprint_status = "archive"]/ubma_classification
let $eh := //eprint[eprint_status = "archive"]/ubma_population
let $ei := //eprint[eprint_status = "archive"]/ubma_screening
let $ej := //eprint[eprint_status = "archive"]/ubma_survey_method_free
let $ek := //eprint[eprint_status = "archive"]/ubma_period
let $el := //eprint[eprint_status = "archive"]//ubma_fieldtime
let $em := //eprint[eprint_status = "archive"]//ubma_availibility_free
let $en := //eprint[eprint_status = "archive"]//ubma_availibility
let $da := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_docid_number_checked
let $db := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_docid_number
let $dc := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_unittype
let $de := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_unitcount
let $df := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_varcount
let $dg := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_techspec
let $dh := //eprint[eprint_status = "archive"]//document[not(relation)]/ubma_data_software
return 
<data>
<count field="ubma_additional_title">{count($ef)}</count>
<count field="ubma_availibility">{count($en)}</count>
<count field="ubma_availibility_free">{count($em)}</count>
<count field="ubma_classification">{count($eg)}</count>
<count field="ubma_fieldtime">{count($el)}</count>
<count field="ubma_id_number_checked">{count($ee)}</count>
<count field="ubma_language">{count($ed)}</count>
<count field="ubma_period">{count($ek)}</count>
<count field="ubma_population">{count($eh)}</count>
<count field="ubma_project">{count($ec)}</count>
<count field="ubma_region_free">{count($eb)}</count>
<count field="ubma_screening">{count($ei)}</count>
<count field="ubma_survey_method">{count($ea)}</count>
<count field="ubma_survey_method_free">{count($ej)}</count>




</data>
