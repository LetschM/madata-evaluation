push @{$c->{fields}->{eprint}},

# Typ der Ressource
# kann weggelassen werden, der normale Typ ist ausreichend
#{
#  name => 'ubma_resource_type',
#  type => 'namedset',
#  set_name => "ubma_resource_type",
#},

##### klaeren:: titel in mehreren Sprachen?
##### dann Compound noetig

# Titel
{
  name => 'title',
  type => 'longtext',
  input_rows => 3,

  # make_single_value_orderkey => 'EPrints::Extras::english_title_orderkey',
  # ?german_title_orderkey?
},

# Weitere Titel
{
  name => 'ubma_additional_title',
  type => 'longtext',
  input_rows => 3,
  input_boxes => 1,
  multiple => 1,

  # make_single_value_orderkey => 'EPrints::Extras::english_title_orderkey',
  # ?german_title_orderkey?
},

# Verantwortlicher fuer die Datenerhebung
{
  name => 'creators',
  type => 'compound',
  # muss multiple sein, sonst ep-error
  multiple => 1,
  fields => [
    {
      sub_name => 'name',
      type => 'name',
      hide_honourific => 1,
      hide_lineage => 1,
      family_first => 1,
    },
    #{
    #  sub_name => 'id',
    #  type => 'text',
    #  input_cols => 20,
    #  allow_null => 1,
    #},
  ],
  input_boxes => 1,
},

# Registrierungen
{
  name => 'ubma_registration',
  type => 'compound',
  multiple => 1,
  fields => [
    {
      sub_name => 'identifier',
      type => 'text',
	  input_cols => 20,
      allow_null => 1,
	  #  render_value => 'EPrints::Extras::render_possible_doi',
    },
    {
      sub_name => 'type',
      type => 'text',
	  input_cols => 20,
      allow_null => 1,
    },
	{
      sub_name => 'agency',
      type => 'text',
      input_cols => 20,
      allow_null => 1,
    }
  ],
  input_boxes => 1,
},

# Sprache
{
  name => 'ubma_language',
  type=> 'namedset',
  set_name => "ubma_language",
},

#Divisions
{
  name => 'divisions',
  type => 'subject',
  multiple => 1,
  top => 'divisions',
  browse_link => 'divisions',
},

# Subjects DDC
{
  name => 'subjects',
  type => 'subject',
  multiple => 1,
  top => 'subjects',
  browse_link => 'subjects',
},

# Allgemeine Klassifikationen
# JEL / Sonstige
{
  name => 'ubma_classification',
  type => 'compound',
  multiple => 1,
  fields => [
    {
      sub_name => 'name',
      type => 'namedset',
      set_name => 'ubma_classification',
	  # set only JEL
    },
    {
      sub_name => 'keywords',
      type => 'text',
    },
  ],
  input_boxes => 1,
},

# Schlagw�rter
{
  name => 'keywords',
  type => 'longtext',
  input_rows => 2,
},

# Abstract
{
  name => 'abstract',
  type => 'longtext',
  input_rows => 10,
  render_value => \&render_html_field,
},

# Geographischer Raum (kontrolliert)
{
  name => 'ubma_region',
  type => 'namedset',
  set_name => "ubma_region",
},

# Geographischer Raum (frei)
{
  name => 'ubma_region_free',
  type => 'text'
},

# Grundgesamtheit
{
  name => 'ubma_population',
  type => 'text'
},

# Auswahlverfahren
{
  name => 'ubma_screening',
  type => 'text'
},

# Zeitraum der Erhebung
{
  name => 'ubma_fieldtime',
  type => 'compound',
  fields => [
    {
      sub_name => 'start',
      type => 'date',
	  min_resolution => 'year',
    },
    {
      sub_name => 'end',
      type => 'date',
	  min_resolution => 'year',
    },
  ],
  input_boxes => 1,
},

# Zeitliche Dimension
{
  name => 'ubma_period',
  type => 'namedset',
  set_name => "ubma_period",
},

# Frequenz
{
  name => 'ubma_frequency',
  type => 'text'
},

# Erhebungsverfahren (kontrolliert)
{
  name => 'ubma_survey_method',
  type => 'namedset',
  set_name => "ubma_survey_method",
},

# Erhebungsverfahren (frei)
{
  name => 'ubma_survey_method_free',
  type => 'text',
},

# Datensatz
{
  name => 'ubma_data_type',
  type => 'text',
},

#### ausgelagert nach document_fields.pl

## Typ der Einheit
#{
#  name => 'ubma_data_unittype',
#  # type => 'text',
#  type => 'namedset',
#  set_name => "ubma_data_unittype",
#},
#
## Anzahl der Einheiten
#{
#  name => 'ubma_data_unitcount',
#  type => 'int',
#},
#
## Anzahl der Variablen
#{
#  name => 'ubma_data_varcount',
#  type => 'int',
#},
#
## Technische Beschreibung
#{
#  name => 'ubma_data_techspec',
#  type => 'text',
#},

## Datenformat
#{
#  name => 'ubma_data_format',
#  type => 'text',
#},

## Software
#{
#  name => 'ubma_data_software',
#  type => 'text',
#},

## Groesse
#{
#  name => 'ubma_data_objectsize',
#  type => 'text',
#},

# Anmerkung
{
  name => 'note',
  type => 'longtext',
  input_rows => 3,
},

# Verf�gbarkeit (kontrolliert)
{
  name => 'ubma_availibility',
  type => 'namedset',
  set_name => "ubma_availibility",
},

# Verf�gbarkeit (frei)
{
  name => 'ubma_availibility_free',
  type => 'text',
},

# Rechte
{
  name => 'ubma_rights',
  type => 'namedset',
  set_name => "ubma_rights",
},

# Relation
{
  name => 'ubma_relation',
  type => 'compound',
  fields => [
    {
      sub_name => 'type',
      type => 'text',
    },
    {
      sub_name => 'identifier',
      type => 'text',
    },
  ],
  input_boxes => 3,
},

# Publikationen (MADOC)
{
  name => 'ubma_publications',
  type => 'longtext',
  input_rows => 3,
  multiple => 1,
  render_value => \&render_html_field,
  input_boxes => 1,
},

# Publikationen (DOI)
{
  name => 'ubma_doi',
  type => 'text',
  multiple => 1,
  render_value => 'EPrints::Extras::render_possible_doi',
  input_boxes => 1,
},

{
  name => 'ubma_url_external',
  type => 'url',
  multiple => 1,
  render_value => 'EPrints::Extras::render_url_truncate_end',
  input_boxes => 1,
},

# Projektangaben
{
  name => 'ubma_project',
  type => 'compound',

  fields => [
    {
      sub_name => 'title',
      type => 'longtext',
	  input_rows => 3,
    },
    {
      sub_name => 'description',
      type => 'longtext',
	  input_rows => 3,
    },
  ],
  # input_boxes => 3,
},

# Kontaktperson
{
  name => 'ubma_contact',
  type => 'compound',
  multiple => 1,
  fields => [
    {
      sub_name => 'name',
      type => 'name',
      hide_honourific => 1,
      hide_lineage => 1,
      family_first => 1,
    },
    {
      sub_name => 'email',
      type => 'text',
      input_cols => 20,
      allow_null => 1,
    }
  ],
  input_boxes => 1,
},

# Weitere Felder die ggf. gebraucht werden koennten:

{
  name => 'date',
  type => 'date',
  min_resolution => 'year',
},

{
  name => 'institution',
  type => 'text',
  multiple => 1,
},

{
  name => 'id_number',
  type => 'text',
  render_value => 'EPrints::Extras::render_possible_doi',
},

{
  name => 'ubma_id_number_checked',
  type => 'boolean',
},



#{
#  name => 'full_text_status',
#  type => 'set',
#  options => [qw(
#    public
#    restricted
#    none
#  )],
#  input_style => 'medium',
#},

#{
#  name => 'suggestions',
#  type => 'longtext',
#  render_value => 'EPrints::Extras::render_highlighted_field',
#  export_as_xml => 0,
#},

#{
#  name => 'official_url',
#  type => 'url',
#  render_value => 'EPrints::Extras::render_url_truncate_end',
#},

#{
#  name => 'related_url',
#  type => 'compound',
#  multiple => 1,
#  render_value => 'EPrints::Extras::render_related_url',
#  fields => [
#    {
#      sub_name => 'url',
#      type => 'url',
#      input_cols => 40,
#    },
#    {
#      sub_name => 'type',
#      type => 'set',
#      options => [qw(
#        pub
#        author
#        org
#      )],
#    }
#  ],
#  input_boxes => 1,
#  input_ordered => 0,
#},

#{
#  name => 'gscholar',
#  type => 'compound',
#  volatile => 1,
#  fields => [
#    { sub_name => 'impact', type => 'int', },
#    { sub_name => 'cluster', type => 'id', },
#    { sub_name => 'datestamp', type => 'time', },
#  ],
#  sql_index => 0,
#},

;