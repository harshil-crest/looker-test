connection: "chronicle_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test-harshil_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test-harshil_default_datagroup

explore: events {
    join: events__about {
      view_label: "Events: About"
      outer_only: yes
      sql: LEFT JOIN UNNEST(${events.about}) as events__about ;;
      relationship: many_to_many
    }
    join: events__principal__ip {
      view_label: "Events: Principal Ip"
      sql: LEFT JOIN UNNEST(${events.principal__ip}) as events__principal__ip ;;
      relationship: one_to_many
    }
    join: events__security_result {
      view_label: "Events: Securityresult"
      sql: LEFT JOIN UNNEST(${events.security_result}) as events__security_result ;;
      relationship: one_to_many
    }
    join: events__about__labels {
      view_label: "Events: About Labels"
      outer_only: yes
      sql: LEFT JOIN UNNEST(${events__about.labels}) as events__about__labels ;;
      relationship: many_to_many
    }
    join: events__principal__labels {
      view_label: "Events: Principal Labels"
      sql: LEFT JOIN UNNEST(${events.principal__labels}) as events__principal__labels ;;
      relationship: one_to_many
    }
    join: events__principal__ip_geo_artifact {
      view_label: "Events: Principal Ipgeoartifact"
      sql: LEFT JOIN UNNEST(${events.principal__ip_geo_artifact}) as events__principal__ip_geo_artifact ;;
      relationship: one_to_many
    }
    join: events__target__user__email_addresses {
      view_label: "Events: Target User Emailaddresses"
      sql: LEFT JOIN UNNEST(${events.target__user__email_addresses}) as events__target__user__email_addresses ;;
      relationship: one_to_many
    }
    join: events__metadata__ingestion_labels {
      view_label: "Events: Metadata Ingestionlabels"
      sql: LEFT JOIN UNNEST(${events.metadata__ingestion_labels}) as events__metadata__ingestion_labels ;;
      relationship: one_to_many
    }
    join: events__principal__asset__software {
      view_label: "Events: Principal Asset Software"
      sql: LEFT JOIN UNNEST(${events.principal__asset__software}) as events__principal__asset__software ;;
      relationship: one_to_many
    }
    join: events__principal__user__email_addresses {
      view_label: "Events: Principal User Emailaddresses"
      sql: LEFT JOIN UNNEST(${events.principal__user__email_addresses}) as events__principal__user__email_addresses ;;
      relationship: one_to_many
    }
    join: events__principal__asset__attribute__labels {
      view_label: "Events: Principal Asset Attribute Labels"
      sql: LEFT JOIN UNNEST(${events.principal__asset__attribute__labels}) as events__principal__asset__attribute__labels ;;
      relationship: one_to_many
    }
    join: events__principal__resource_ancestors {
      view_label: "Events: Principal Resourceancestors"
      sql: LEFT JOIN UNNEST(${events.principal__resource_ancestors}) as events__principal__resource_ancestors ;;
      relationship: one_to_many
    }
}
