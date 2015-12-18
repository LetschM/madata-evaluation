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
<count field="ubma_data_software">{count($dh)}</count>
<count field="ubma_data_techspec">{count($dg)}</count>
<count field="ubma_data_unitcount">{count($de)}</count>
<count field="ubma_data_unittype">{count($dc)}</count>
<count field="ubma_data_varcount">{count($df)}</count>
<count field="ubma_docid_number">{count($db)}</count>
<count field="ubma_docid_number_checked">{count($da)}</count>



</data>
