view: events {
  sql_table_name: `datalake.events` ;;

  dimension: about {
    hidden: yes
    sql: ${TABLE}.about ;;
  }
  dimension_group: metadata__collected_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.metadata.collectedTimestamp ;;
  }
  dimension: metadata__description {
    type: string
    sql: ${TABLE}.metadata.description ;;
    group_label: "Metadata"
    group_item_label: "Description"
  }
  dimension: metadata__enrichment_state {
    type: string
    sql: ${TABLE}.metadata.enrichmentState ;;
    group_label: "Metadata"
    group_item_label: "Enrichment State"
  }
  dimension_group: metadata__event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.metadata.eventTimestamp ;;
  }
  dimension: metadata__event_type {
    type: string
    sql: ${TABLE}.metadata.eventType ;;
    group_label: "Metadata"
    group_item_label: "Event Type"
  }
  dimension: metadata__id {
    type: string
    sql: ${TABLE}.metadata.id ;;
    group_label: "Metadata"
    group_item_label: "ID"
  }
  dimension_group: metadata__ingested_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.metadata.ingestedTimestamp ;;
  }
  dimension: metadata__ingestion_labels {
    hidden: yes
    sql: ${TABLE}.metadata.ingestionLabels ;;
    group_label: "Metadata"
    group_item_label: "Ingestion Labels"
  }
  dimension: metadata__log_type {
    type: string
    sql: ${TABLE}.metadata.logType ;;
    group_label: "Metadata"
    group_item_label: "Log Type"
  }
  dimension: metadata__product_event_type {
    type: string
    sql: ${TABLE}.metadata.productEventType ;;
    group_label: "Metadata"
    group_item_label: "Product Event Type"
  }
  dimension: metadata__product_log_id {
    type: string
    sql: ${TABLE}.metadata.productLogId ;;
    group_label: "Metadata"
    group_item_label: "Product Log ID"
  }
  dimension: network__session_id {
    type: string
    sql: ${TABLE}.network.sessionId ;;
    group_label: "Network"
    group_item_label: "Session ID"
  }
  dimension: principal__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.asset.attribute.labels ;;
    group_label: "Principal Asset Attribute"
    group_item_label: "Labels"
  }
  dimension: principal__asset__software {
    hidden: yes
    sql: ${TABLE}.principal.asset.software ;;
    group_label: "Principal Asset"
    group_item_label: "Software"
  }
  dimension: principal__ip {
    hidden: yes
    sql: ${TABLE}.principal.ip ;;
    group_label: "Principal"
    group_item_label: "IP"
  }
  dimension: principal__ip_geo_artifact {
    hidden: yes
    sql: ${TABLE}.principal.ipGeoArtifact ;;
    group_label: "Principal"
    group_item_label: "IP Geo Artifact"
  }
  dimension: principal__labels {
    hidden: yes
    sql: ${TABLE}.principal.labels ;;
    group_label: "Principal"
    group_item_label: "Labels"
  }
  dimension: principal__location__country_or_region {
    type: string
    sql: ${TABLE}.principal.location.countryOrRegion ;;
    group_label: "Principal Location"
    group_item_label: "Country or Region"
  }
  dimension: principal__location__region_coordinates__latitude {
    type: number
    sql: ${TABLE}.principal.location.regionCoordinates.latitude ;;
    group_label: "Principal Location Region Coordinates"
    group_item_label: "Latitude"
  }
  dimension: principal__location__region_coordinates__longitude {
    type: number
    sql: ${TABLE}.principal.location.regionCoordinates.longitude ;;
    group_label: "Principal Location Region Coordinates"
    group_item_label: "Longitude"
  }
  dimension: principal__location__region_latitude {
    type: number
    sql: ${TABLE}.principal.location.regionLatitude ;;
    group_label: "Principal Location"
    group_item_label: "Region Latitude"
  }
  dimension: principal__location__region_longitude {
    type: number
    sql: ${TABLE}.principal.location.regionLongitude ;;
    group_label: "Principal Location"
    group_item_label: "Region Longitude"
  }
  dimension: principal__location__state {
    type: string
    sql: ${TABLE}.principal.location.state ;;
    group_label: "Principal Location"
    group_item_label: "State"
  }
  dimension: principal__network__asn {
    type: number
    sql: ${TABLE}.principal.network.asn ;;
    group_label: "Principal Network"
    group_item_label: "Asn"
  }
  dimension: principal__network__http__user_agent {
    type: string
    sql: ${TABLE}.principal.network.http.userAgent ;;
    group_label: "Principal Network HTTP"
    group_item_label: "User Agent"
  }
  dimension: principal__network__organization_name {
    type: string
    sql: ${TABLE}.principal.network.organizationName ;;
    group_label: "Principal Network"
    group_item_label: "Organization Name"
  }
  dimension: principal__resource__name {
    type: string
    sql: ${TABLE}.principal.resource.name ;;
    group_label: "Principal Resource"
    group_item_label: "Name"
  }
  dimension: principal__resource__product_object_id {
    type: string
    sql: ${TABLE}.principal.resource.productObjectId ;;
    group_label: "Principal Resource"
    group_item_label: "Product Object ID"
  }
  dimension: principal__resource__resource_subtype {
    type: string
    sql: ${TABLE}.principal.resource.resourceSubtype ;;
    group_label: "Principal Resource"
    group_item_label: "Resource Subtype"
  }
  dimension: principal__resource__resource_type {
    type: string
    sql: ${TABLE}.principal.resource.resourceType ;;
    group_label: "Principal Resource"
    group_item_label: "Resource Type"
  }
  dimension: principal__resource_ancestors {
    hidden: yes
    sql: ${TABLE}.principal.resourceAncestors ;;
    group_label: "Principal"
    group_item_label: "Resource Ancestors"
  }
  dimension: principal__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.principal.user.emailAddresses ;;
    group_label: "Principal User"
    group_item_label: "Email Addresses"
  }
  dimension: principal__user__product_object_id {
    type: string
    sql: ${TABLE}.principal.user.productObjectId ;;
    group_label: "Principal User"
    group_item_label: "Product Object ID"
  }
  dimension: principal__user__user_display_name {
    type: string
    sql: ${TABLE}.principal.user.userDisplayName ;;
    group_label: "Principal User"
    group_item_label: "User Display Name"
  }
  dimension: principal__user__userid {
    type: string
    sql: ${TABLE}.principal.user.userid ;;
    group_label: "Principal User"
    group_item_label: "Userid"
  }
  dimension: security_result {
    hidden: yes
    sql: ${TABLE}.securityResult ;;
  }
  dimension: target__resource__name {
    type: string
    sql: ${TABLE}.target.resource.name ;;
    group_label: "Target Resource"
    group_item_label: "Name"
  }
  dimension: target__resource__product_object_id {
    type: string
    sql: ${TABLE}.target.resource.productObjectId ;;
    group_label: "Target Resource"
    group_item_label: "Product Object ID"
  }
  dimension: target__resource__resource_subtype {
    type: string
    sql: ${TABLE}.target.resource.resourceSubtype ;;
    group_label: "Target Resource"
    group_item_label: "Resource Subtype"
  }
  dimension: target__resource__resource_type {
    type: string
    sql: ${TABLE}.target.resource.resourceType ;;
    group_label: "Target Resource"
    group_item_label: "Resource Type"
  }
  dimension: target__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.target.user.emailAddresses ;;
    group_label: "Target User"
    group_item_label: "Email Addresses"
  }
  dimension: target__user__product_object_id {
    type: string
    sql: ${TABLE}.target.user.productObjectId ;;
    group_label: "Target User"
    group_item_label: "Product Object ID"
  }
  dimension: target__user__user_display_name {
    type: string
    sql: ${TABLE}.target.user.userDisplayName ;;
    group_label: "Target User"
    group_item_label: "User Display Name"
  }
  dimension: target__user__userid {
    type: string
    sql: ${TABLE}.target.user.userid ;;
    group_label: "Target User"
    group_item_label: "Userid"
  }
  measure: count {
    type: count
    drill_fields: [target__resource__name, principal__resource__name, target__user__user_display_name, principal__user__user_display_name, principal__network__organization_name]
  }
}

view: events__about {

  dimension: application {
    type: string
    sql: application ;;
  }
  dimension: events__about {
    type: string
    hidden: yes
    sql: events__about ;;
  }
  dimension: labels {
    hidden: yes
    sql: labels ;;
  }
}

view: events__principal__ip {

  dimension: events__principal__ip {
    type: string
    sql: events__principal__ip ;;
  }
  dimension: events__principal__ip__location {
    sql: events__principal__ip ;;
    html: <span style="color:darkgreen;">{{rendered_value}}}</span> ;;
#     html: <ul>
# <li> value: {{ value }} </li>
#       <li> rendered_value: {{ rendered_value }} </li>
#       <li> linked_value: {{ linked_value }} </li>    </ul> ;;
  }
  dimension:  events__principal__ip__location__value{
    type: string
    sql:  ${events__principal__ip__location};;
    html:   <ul>
<li> value: {{ value }} </li>
      <li> rendered_value: {{ rendered_value }} </li>
      <li> linked_value: {{ linked_value }} </li>    </ul>
      <script>
      const userAction = async () => {
  const response = await fetch('http://example.com/movies.json');
  const myJson = await response.json(); //extract JSON from the http response
  console.log(myJson);
  ${events__principal__ip__location__value} = "OKAY"
  }
      </script>;;
  }
}

view: events__security_result {

  dimension: action_details {
    type: string
    sql: actionDetails ;;
  }
  dimension: description {
    type: string
    sql: description ;;
  }
  dimension: events__security_result {
    type: string
    hidden: yes
    sql: events__security_result ;;
  }
  dimension: rule_id {
    type: string
    sql: ruleId ;;
  }
  dimension: rule_name {
    type: string
    sql: ruleName ;;
  }
  dimension: rule_set {
    type: string
    sql: ruleSet ;;
  }
  dimension: rule_version {
    type: number
    sql: ruleVersion ;;
  }
  dimension: severity {
    type: string
    sql: severity ;;
  }

  dimension: severity_details {
    type: number
    sql: severityDetails ;;
  }
}

view: events__about__labels {

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: events__principal__labels {

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: events__principal__ip_geo_artifact {

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.countryOrRegion ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }
  dimension: location__region_coordinates__latitude {
    type: number
    sql: ${TABLE}.location.regionCoordinates.latitude ;;
    group_label: "Location Region Coordinates"
    group_item_label: "Latitude"
  }
  dimension: location__region_coordinates__longitude {
    type: number
    sql: ${TABLE}.location.regionCoordinates.longitude ;;
    group_label: "Location Region Coordinates"
    group_item_label: "Longitude"
  }
  dimension: location__region_latitude {
    type: number
    sql: ${TABLE}.location.regionLatitude ;;
    group_label: "Location"
    group_item_label: "Region Latitude"
  }
  dimension: location__region_longitude {
    type: number
    sql: ${TABLE}.location.regionLongitude ;;
    group_label: "Location"
    group_item_label: "Region Longitude"
  }
  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }
  dimension: network__asn {
    type: number
    sql: ${TABLE}.network.asn ;;
    group_label: "Network"
    group_item_label: "Asn"
  }
  dimension: network__carrier_name {
    type: string
    sql: ${TABLE}.network.carrierName ;;
    group_label: "Network"
    group_item_label: "Carrier Name"
  }
  dimension: network__dns_domain {
    type: string
    sql: ${TABLE}.network.dnsDomain ;;
    group_label: "Network"
    group_item_label: "Dns Domain"
  }
  dimension: network__organization_name {
    type: string
    sql: ${TABLE}.network.organizationName ;;
    group_label: "Network"
    group_item_label: "Organization Name"
  }
}

view: events__target__user__email_addresses {

  dimension: events__target__user__email_addresses {
    type: string
    sql: events__target__user__email_addresses ;;
  }
}

view: events__metadata__ingestion_labels {

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: events__principal__asset__software {

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: events__principal__user__email_addresses {

  dimension: events__principal__user__email_addresses {
    type: string
    sql: events__principal__user__email_addresses ;;
  }
}

view: events__principal__asset__attribute__labels {

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: events__principal__resource_ancestors {

  dimension: product_object_id {
    type: number
    sql: ${TABLE}.productObjectId ;;
  }
  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resourceSubtype ;;
  }
  dimension: resource_type {
    type: string
    sql: ${TABLE}.resourceType ;;
  }
}
