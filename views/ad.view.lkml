view: ad {
  sql_table_name: [bigquery-connectors:google_ads.ad]
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: accent_color {
    type: string
    sql: ${TABLE}.accent_color ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: allow_flexible_color {
    type: string
    sql: ${TABLE}.allow_flexible_color ;;
  }

  dimension: automated {
    type: string
    sql: ${TABLE}.automated ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
  }

  dimension: call_only_phone_number {
    type: string
    sql: ${TABLE}.call_only_phone_number ;;
  }

  dimension: call_to_action_text {
    type: string
    sql: ${TABLE}.call_to_action_text ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: combined_approval_status {
    type: string
    sql: ${TABLE}.combined_approval_status ;;
  }

  dimension: creative_destination_url {
    type: string
    sql: ${TABLE}.creative_destination_url ;;
  }

  dimension: creative_final_app_urls {
    type: string
    sql: ${TABLE}.creative_final_app_urls ;;
  }

  dimension: creative_final_mobile_urls {
    type: string
    sql: ${TABLE}.creative_final_mobile_urls ;;
  }

  dimension: creative_final_urls {
    type: string
    sql: ${TABLE}.creative_final_urls ;;
  }

  dimension: creative_tracking_url_template {
    type: string
    sql: ${TABLE}.creative_tracking_url_template ;;
  }

  dimension: creative_url_custom_parameters {
    type: string
    sql: ${TABLE}.creative_url_custom_parameters ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.[date] ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_1 {
    type: string
    sql: ${TABLE}.description_1 ;;
  }

  dimension: description_2 {
    type: string
    sql: ${TABLE}.description_2 ;;
  }

  dimension: device_preference {
    type: string
    sql: ${TABLE}.device_preference ;;
  }

  dimension: display_url {
    type: string
    sql: ${TABLE}.display_url ;;
  }

  dimension: enhanced_display_creative_landscape_logo_image_media_id {
    type: string
    sql: ${TABLE}.enhanced_display_creative_landscape_logo_image_media_id ;;
  }

  dimension: enhanced_display_creative_logo_image_media_id {
    type: string
    sql: ${TABLE}.enhanced_display_creative_logo_image_media_id ;;
  }

  dimension: enhanced_display_creative_marketing_image_media_id {
    type: string
    sql: ${TABLE}.enhanced_display_creative_marketing_image_media_id ;;
  }

  dimension: enhanced_display_creative_marketing_image_square_media_id {
    type: string
    sql: ${TABLE}.enhanced_display_creative_marketing_image_square_media_id ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: format_setting {
    type: string
    sql: ${TABLE}.format_setting ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: headline_part_1 {
    type: string
    sql: ${TABLE}.headline_part_1 ;;
  }

  dimension: headline_part_2 {
    type: string
    sql: ${TABLE}.headline_part_2 ;;
  }

  dimension: image_ad_url {
    type: string
    sql: ${TABLE}.image_ad_url ;;
  }

  dimension: image_creative_image_height {
    type: string
    sql: ${TABLE}.image_creative_image_height ;;
  }

  dimension: image_creative_image_width {
    type: string
    sql: ${TABLE}.image_creative_image_width ;;
  }

  dimension: image_creative_mime_type {
    type: string
    sql: ${TABLE}.image_creative_mime_type ;;
  }

  dimension: image_creative_name {
    type: string
    sql: ${TABLE}.image_creative_name ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.label_ids ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: long_headline {
    type: string
    sql: ${TABLE}.long_headline ;;
  }

  dimension: main_color {
    type: string
    sql: ${TABLE}.main_color ;;
  }

  dimension: path_1 {
    type: string
    sql: ${TABLE}.path_1 ;;
  }

  dimension: path_2 {
    type: string
    sql: ${TABLE}.path_2 ;;
  }

  dimension: policy_summary {
    type: string
    sql: ${TABLE}.policy_summary ;;
  }

  dimension: price_prefix {
    type: string
    sql: ${TABLE}.price_prefix ;;
  }

  dimension: promo_text {
    type: string
    sql: ${TABLE}.promo_text ;;
  }

  dimension: short_headline {
    type: string
    sql: ${TABLE}.short_headline ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [id, business_name, image_creative_name]
  }
}
