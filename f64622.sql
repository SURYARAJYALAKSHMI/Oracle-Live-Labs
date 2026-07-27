prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>129579700895791536081
,p_default_application_id=>64622
,p_default_id_offset=>0
,p_default_owner=>'WKSP_VSRLAPEX'
);
end;
/
 
prompt APPLICATION 64622 - ACME Shop
--
-- Application Export:
--   Application:     64622
--   Name:            ACME Shop
--   Date and Time:   02:40 Monday July 27, 2026
--   Exported By:     RAJYA.LAKSHMI@TABLESPACE.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     25
--       Items:                   58
--       Validations:              4
--       Processes:               31
--       Regions:                 56
--       Buttons:                 50
--       Dynamic Actions:         11
--     Shared Components:
--       Logic:
--         Items:                  2
--         Processes:              1
--         App Settings:           1
--         Build Options:          2
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_VSRLAPEX')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'ACME Shop')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'ACME-SHOP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BB11A271044FB7AE7886D629E5DD4A2528168DE392DC518CDC4A2F7D7B1509B6'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(14007019349191803142)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'ACME Shop'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(14007025467906803157)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'ACME Shop'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260704054120Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461224070550
,p_version_scn=>'15783868236411'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>2528231041045349458
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(14007021193148803148)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007014977676803135)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007015214126803136)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007015598624803137)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007015835238803137)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007016127720803138)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007016475610803138)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007016745499803138)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007017012587803139)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007017323213803139)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007017656092803140)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007017999941803140)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007018247945803140)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007018523394803141)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14007018890322803141)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14007278971340806026)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_version_scn=>'SH256:323GLOzYK8qCcWg5Qxls4uCIHE3zonulUseqv7P_zl4'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007279932824806027)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007279428820806026)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/application_administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14007280294334806027)
,p_name=>'Application Administration'
,p_static_id=>'application-administration'
,p_version_scn=>'SH256:Re3nGzYRZWdy1DyfestqmotSq4l3V9dgPQUrLZm4HnQ'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007281231881806028)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Clothing Lookup'
,p_static_id=>'clothing-lookup'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007281733183806028)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Color Lookup'
,p_static_id=>'color-lookup'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007282241667806029)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Customers'
,p_static_id=>'customers'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007280700745806028)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007282735547806029)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Department Lookup'
,p_static_id=>'department-lookup'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007284252359806031)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Manage Products'
,p_static_id=>'manage-products'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007283200095806030)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Product Reviews'
,p_static_id=>'product-reviews'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007283755072806030)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Stores'
,p_static_id=>'stores'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14007021193148803148)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:5gD8JzywfNugu4GKKvB9JeGLkkO1lSQrFNvpivpzUJ0'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260704054120Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14416570556146576089)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260704054120Z')
,p_updated_on=>wwv_flow_imp.dz('20260704054120Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007276031826806021)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_security_scheme=>wwv_flow_imp.id(14007025306976803157)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260704053948Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007276694047806022)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(14007276031826806021)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14415739077098893613)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Search'
,p_static_id=>'search'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'TARGET_PAGE'
,p_list_item_comment=>'Search'
,p_created_on=>wwv_flow_imp.dz('20260704053627Z')
,p_updated_on=>wwv_flow_imp.dz('20260704053627Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14415491802792533400)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Shopping Cart'
,p_static_id=>'shopping-cart'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_icon=>'fa-shopping-cart'
,p_list_text_01=>'&SHOPPING_CART_ITEMS.'
,p_list_text_02=>'js-shopping-cart-item'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260704053413Z')
,p_updated_on=>wwv_flow_imp.dz('20260704053806Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007277150001806023)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(14007276031826806021)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14007020265704803144)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:3bVOUG4hFX4H_X_8Bb1MDhYf3NZqIKtNEqP8oa3zHCQ'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007277710585806024)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(14007025306976803157)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14007037671327803172)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Products'
,p_static_id=>'products'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5C097454559AFE6E650F4948D81288EC08B223AB8400223B8AB4093B28348E0470B4F5B4A3D3DAA38EA38EA7FB384A7B94403B8A2C096B80';
wwv_flow_imp.g_varchar2_table(2) := '46410282010909015904020A9A84841020FB5A4BEAF5FD5F129A2581D47BAF52F5AA6ECEBB6FBDFFF6FD5FDD7BDF726380F81308A840401048057842141004122C50858020902AF884B02090E0802A04048154C12784058104075421A09840AAAC0A6197';
wwv_flow_imp.g_varchar2_table(3) := '414010C86552E9984004811C83BBCB5815047299543A26104120C7E0EE325605815C26958E094410C831B8BB8CD5A6275023A07B72D18EC019CB36852D58BCADEBFC9884FEF3976D8F981393307E4ECC96A9EE5112C653CC143B61405810268D80AEC9AB';
wwv_flow_imp.g_varchar2_table(4) := '389840129BB378CB43F3966E593077C9D6CF7839C68B29C0DB52E265F5C8351BAC17AD4C3A69B5561F664C4A648CFDC33D8A94483153EC84016141981036BC1C9BB764EBA78419610748ACC959738BC12625D08C1736B59EBF74EB931C84F778D93B7749';
wwv_flow_imp.g_varchar2_table(5) := '422133B0744962ABB94F4B7919C48B172F62A91F01C26690042C23CC083BC290B09CB724E15D6A9D673CBBA945FDA2F639DB8404929897C9334292F01A0FE5755EC6F1D29C17B1A84380301C27417A83B7CEAF797B79463465AB6477022D5EBCD28BFF3A';
wwv_flow_imp.g_varchar2_table(6) := '9E9BBB34E13C98B49DFF7A7880EA1013D20D22304282B473EE926DE97363B63E4BD8375853A30B7625D0334B368597195A1DE141AD8284EE1AF92CD4DC1701A907183EE7D827D3B0E1BED55554B01B81E6C56CEA6586472AF78DC6357C2316072030D8CB';
wwv_flow_imp.g_varchar2_table(7) := 'EC7164CEF35B7ADBCBB65D0834677142A4C43C921910AE9DE342934204BAB26A7678CED284D10AE5EF29A63981A8E56106690FB74A833BBE118B1320D09C49D22E7BB4449A1268F1E29DFE12F3DCCC01F3E7452CCE85803FB3B08D94232DDDD29440A506';
wwv_flow_imp.g_varchar2_table(8) := 'F367FC16B297960E0A5D1A22C0D0BB2647DAE9D48C4073976C5DC8202DD0CE35A1C91E08508E28575AE9D68440335EDEE4C71DFA3F5EC4A20F043ED4AA2BD38440DE159ED4F284E8033BE12547A04539333FC3B7AA170D082431FE3AEF25D59ED84F81D0';
wwv_flow_imp.g_varchar2_table(9) := '5C1F024C7A918F57F99396FA2E36FE9C6A02CD89D936913BD2A3F126454D674080BF52EA59933B75DEA826106392687DD4E5C061D25AE44E1581162EFCD297473F9E17B1E81381F1B537408ABD5745208B6FC023DCB22A1D5C5E2C8E43C0E053C986A931';
wwv_flow_imp.g_varchar2_table(10) := 'AF2AF9D560442035F685AC8311509B435504E243784120071340AD79B5395441207EF30E16A936006796770FDFD4F5228A093463D9E6500E704B5EC4A26F04429F793E41711E1513C89319141BD537DEAEE7BD19D630A5512926904162E2930DA5A83B99';
wwv_flow_imp.g_varchar2_table(11) := '9C9A5C2A269055AA16047232222875474D2E151308564F7A03AFD46721E7440818AC5E9E4ADD514C207EFB275A20A5A83B999C15124D5854E49562028141B4400D41AEB3F36A1A03E50452C15ABDE05B5D6D0615BDF8ABD84F158D816202494CB22876D8';
wwv_flow_imp.g_varchar2_table(12) := 'A90525988C652829BA82E2822CB9D03E9D0324A7F6DC11CE292690239CB5A74DC95A8DCA8A4214E567A1AC240F167325DAB50B45DBB036F23E9DA36B5487EADAD3173DE9767B02592C4694975E436141262ACB0B781B634597CEED3161EC700C1FD21B11';
wwv_flow_imp.g_varchar2_table(13) := 'C3FA60C2B80874E9D45EBE4675A82EC990AC9E926D0F5FDD944075DD540E4A0AB361AC2A858F97177AF7EC8627268EC0C3FD1E4460C0BFEE11029BF9E2E1FE0FCAD7A88E8F97972C43B22545397297E7AEDD9BC11EAC74569DD4F5500B425D1175491673';
wwv_flow_imp.g_varchar2_table(14) := '150203033078506F4C99148187BA7780B7B75783EED335AA4375070FEC25CB920ED2453A4937D96850810B5E700B0249928432EAA6F233E4718ED56A41DBD0D618396220263C36141D1F088581351E0AAADBB17D982C4B3AC2B82ED249E3A3426E836C91';
wwv_flow_imp.g_varchar2_table(15) := '4DDBF9A23F89C6A3A6BFD86E7A6C3296C2C4BBA9BA13C387F643C4237DD1A65570DD29C55BD23182EB229D754AC816D9AC3B76E5AD5B10A82E810181350FCF8F1C3D8D83C9A770E56A3ED4B414249B937B0349874F8274921D3F3FFA4C9CF6DCA3B81581';
wwv_flow_imp.g_varchar2_table(16) := 'E64D8FC4FFBC310B2323FAA220BF0047524F617762322EFC72194653E31F6B198D669CFF390BBB128F208593B1A0B008BD7A75C1FCD9E3303AB29F7B30A7364AB72210C5DCB9430862168CC0277F598819BF1B011F3E683E73EE177CB3E707A49DB88082';
wwv_flow_imp.g_varchar2_table(17) := 'C252AA566F292C2AC3D11FD3F14DE2619C4DBF080F0F032287F743CCEF2763F2B8FE086D1358AF9C2B9F740F02D5F3003928D007D326F7C5F20FE6E285C553D0B96328B2B27270E0601AF6271D4756F63558252B7F9561E5FB79F2B9FD494771F9722EDA';
wwv_flow_imp.g_varchar2_table(18) := 'B56D89A95386E3B985E3316C4857F8FB7BBB3247EE199B7B1088BF2D6C08056A45860DEA8077FE739ADCBD8D8EEC83929212A41D3F835D7B8EF096E930DF3F8B92D252F4E1DDD4D373C761767424BA770B935BA086F4BACB79F720506D36EB69886AAFD4';
wwv_flow_imp.g_varchar2_table(19) := '6CA87B7BEEE9487CF2D7859815351246A31166B319A322FB2366D1144CE4DD549B56F7EEA624FEBCBA465B93AE1D66CC3D0854CB9C7B3444B7252028C0075327F6464870200202FC31646017F8F935FC80F156610676EBA1CBEFBB07815C3E8D8E0B5010';
wwv_flow_imp.g_varchar2_table(20) := 'C871D8BB846541209748A3E3821004721CF62E615910C825D2E8B82004811C87BD535856EB8420905A04DD5C5E10C8CD09A0367C4120B508BAB9BC20909B13406DF82E4F20B3A992BFD32A93713A987C1EBF6515CAFB8D5D311B5E4DE45D2BC5D9F42C59';
wwv_flow_imp.g_varchar2_table(21) := 'B5B1AA0C645B3E70E1954B1288BE14345695A0B8E0324A8BAFC8F3BAE8E3F9F40B59F8AFF736E2FD8F76E34C7A5EA3D2DA9897A39959F9D8B42D19EB36ECC3E5ECABB51FDB57CAB6C907F2857C6A94419D5572290259AD165494E7A3283F03E5A5D76195';
wwv_flow_imp.g_varchar2_table(22) := 'CCE8D0211CE3C60C933F801F336A08E863FA73E733F1C1C7DBF0C67BDB9176220B566BEDDB561B922759819F2F5EC59AB8246CD97E10972FE7812621920DFA509F6C926DF2817C219FC837F2D10633CE5BB5D633972050CDD49AAB282AC8425545113C3D';
wwv_flow_imp.g_varchar2_table(23) := '0CE8D1BD33268F8FC090877BA079503339DC162181F2C7F4631F1D8A07C2C390997515CB6377E195B7362129F912CC16CE0AB966C32B0BAFF3D3D91CFCFFDA7DD8B9EB08AEDF28E0BA42319693942621920D92269B649B7C205FC827F28D7CA46940E433';
wwv_flow_imp.g_varchar2_table(24) := 'D5D37BD131812418AB4AE5898125F2E4BE72F8F9FAA05FDF1E983C7104FAF4EC2C1FD797A0E0E6011836B817C68F1D8EF6EDDBE2FAF542FCFDABBD78F9F538ECDE9F8E2AE3DDDF479B4C161C3B9181BFAF4E44E277475152528A0E1DC3E559ABC306F746';
wwv_flow_imp.g_varchar2_table(25) := '702D49EFB4473E912FE413F9E6E7E30D9A674F3E97D44E6AD4F3A444DD11C84A73D8CB0B50989FC9BBA96BA0E9C5CD83023174705FDEE20CC7835DC2E1E5E971671EEB3D0E0AF0C3D0813D31715C043A733214979461FDC624BCF8DA5A6CFDFA142CD556';
wwv_flow_imp.g_varchar2_table(26) := 'F993D61F8EFC8C555FEC41D2A113A8ACAC42E74E0FC8324306F400CD5AAD57F91D27C927F26DF28408D957F2997C2F97E7AB65CAD3AA29B63BC49CFE505704AA94FFF94106682B7122B50D6D83519183306ECC10B40F6F0DC69822C09BF9FB622027C3A4';
wwv_flow_imp.g_varchar2_table(27) := 'F123D0B56B47545699B06DE7119496968308939A7696776F6674EBD609448081FDBB83649418638CC9BE92CF23B9EF61A1AD41B1504C344EAAAA2852A2D66132BA2290D9587E13A890E02074EFD101AD5B36BF794EED8EBF9F0F7A747B00E1E1A177A96A';
wwv_flow_imp.g_varchar2_table(28) := 'D7360CDDBB8637D82DDE25D088136DB8EF3DBA7740088FA5AEBAC9F4AF18EBCE39F3565704AA03F2E1FEDD50585482A483C7B06FFF5164CA33286CBF93AAD347DBE292721C3D711EBB130F239BDF8AB70B6B051F6F6FF8FB79A35B9776C8CEC995AFA59D';
wwv_flow_imp.g_varchar2_table(29) := 'BC00AA4B324A8B5592E4991EE47BD2A1E3722CDDBAB6AF51C7AFD5ECE863AD3B02F11E007F5C360E7F7D773E268E1D844AA311C78E9F91674F9CBB90C907C0269B90BF965F8CC329A7B0EF402A2E675DE1E39B70CC9EFE28E6CC1C29FFA3055F5F5FBCFD';
wwv_flow_imp.g_varchar2_table(30) := 'DA9378F3D5E9E8DFB72BB23273E4BA87537FC2752E6B8BB12AA309E4E3377B0ECB333D2AF8786A20BF4B5CF4CC444C7B7CB02DAA9CA6AEED047212D7DBB60EC0D33387E093BF3C8D79B34623A0992FD2CF5FC2AEC464502B5150DC705720F15F7976EE0D';
wwv_flow_imp.g_varchar2_table(31) := '4E84341CFAE138F2AEE5A3E7439DB060EE783C357528C2DB85DC1565F7AEADF0CAF3E3F1FE9B731031AC17F2F26EE02097DD9F741C34BD59BAC76C0CF2852624926FE4A3B7B727C68C1A8898672763CCC85EBC0BF3BFCB9E5E4EE89640750037E35DCCE4';
wwv_flow_imp.g_varchar2_table(32) := 'C77AE2A3F7E6E0A5A58FF3314CB8DC4A1CF83E15FB0FFE88EC2BD74184A1FAD5FCAEEA52462EBEDD9782D4A3A75156518101FDBAE3DF164CC694090FA355AB00AA76CFD221BC39962D1A850FDF9DC707EF0340F3C5687AF3B77B53F06B66AE7CD7460AC8';
wwv_flow_imp.g_varchar2_table(33) := '66CE951BB20FE40B4D480C6FDB1AD39E1881C50B26F0417B47F8F87852555D17DD13A80E7D0F03C3E001EDF1E73F3E8E77FF3C4B9EFF5E525282D4B49FF8D82519274F5FC4AEBD7C7B2A1DD5966A0C1BD21BCF2D9C84B18FF64650906F9D9A466FDB70B2';
wwv_flow_imp.g_varchar2_table(34) := '2D9CFD08FEF6C133983A65287F9A6DC58993E9376DD19CFB94B4D3282E2E469FDA0989B3A223F878AA0D18F7B5D1869CBCA2CB10E8569C3BB50F01CD7F5FCE931B353502060F032EFD9625CF241D1539008B174D42E4F0EEFC56DCFB563145FBCD39F966';
wwv_flow_imp.g_varchar2_table(35) := '4D1BC889341FB3A347C28BB72A648B3F53E04FBDFB2066D1E3FC99517FB4B9CF844445C69D40487704E2C39746C316CC931BF5443FCC9D315296193DA23F860CECCC07C71EF2716356D41535A69EBF9F179E98D01B73A223E5EAA323FB63F8D007E1EFEF';
wwv_flow_imp.g_varchar2_table(36) := '251FBBEA4A770462CCF6542891A9B3C2986D066DAC5E6746B75BDD1148B748BBA8E34D48201745D0CDC31204727302A80D5F10482D826E2E2F08E4E604501BBE20905A04DD5C5E10C8CD09A0367C4120B508BAB9BC1E08745B8AE849F4B99FAFDD76EE7E';
wwv_flow_imp.g_varchar2_table(37) := '072473BF3A775EBF7EA30C469309555555C8CA69FC57824A6C916D9A1A445BBD155D11C8E051F3F6FAFD0F13F0EADB5BE499142673F57D31B7E5E970567601B6EE48C19AB8BD3099CCA8A834E1F57736E083BF7D8BC610D7165B167986473656AF3B204F';
wwv_flow_imp.g_varchar2_table(38) := '0DA2400C1EFA7AF5A12B02050485212028149E5E7EB8927B033493E28557D762CBCE93282CAE24FC15156A352EFE9A87B51B92B03921091999B960060FF8376B09BF662DE4FD33673340C47DEB7F77E0F8E9EC9B9F88283158566EC4E1940B88FD7C3712';
wwv_flow_imp.g_varchar2_table(39) := 'BF4B437E41911C13C54645894E47C9E88A400492B74F008282DBA179487BF8F806A2BCD288ED5FA7E00F7F5A8B155F1EB269EA327D1F74363D075FACDD871D5F27E3DAB502FEC6DE1BCD025B23A46547F8FA07C3CF3F44DEA7731E1EDEB894918B8F3EFD';
wwv_flow_imp.g_varchar2_table(40) := '5A6E010FA5FC06D2417E35A65CCD2BC1377B4E60D597DF22E5E83918CD6639068A2588C744B135468F33D5D11D81EAC0F3F0F4E6896E8390161DE5244332F05FF559D0D4E5373FD871CF19A72653357E3C9581CF57EFC5B77B8FA2A8A8B4B6050843F316';
wwv_flow_imp.g_varchar2_table(41) := 'ED795283B8995B5FA232F91C5DA356905AC0DCABF958F9E51EBCF47A3C12BFBF00A3C9C265EE5EAC56499EC1BA6EE341ACDFF81DCE5FC8008301D4B291EFCD02DB8062814EFF0C3AF5FBA6DBCCE021272398B718940C4F4F1FFCFA5BAE3CE3F40F7F8AC3';
wwv_flow_imp.g_varchar2_table(42) := 'AE7DE750566694EB5756562139F517B9053890740265E515A05F7D50C80372ABE6EDD34CAE7FD8B63F000004CE4944415477AF15D509E2AD05C9D07E2127DF9AF80378F1B575D8BEFB344ACBAA64F1CA2A238E9DF8552629CD60CDCBCB07F9463E92AFD4';
wwv_flow_imp.g_varchar2_table(43) := 'B291EF72651DAF744FA05BB1A72E8D121B141C2E13A3B0B80C719B0FF29224574BFAE1148EA49EE183630B7CFC9A23B84507D09883122B57B0614532D41A910E1FDF2079B0BD657B32E2B93D529374E824920E9D42691D49B94FE41BF948D75DA5B81481';
wwv_flow_imp.g_varchar2_table(44) := 'EA92E2E9E52B1383924BE318C66AC2A45F3CFDF2E97CB38056306870C7433A687C443A4937D9203F68EBCBC74FC1BC8B9549CA7DA2F3AE566A9075B5A86AE331183CE53BA9E0969D10C8BB1D4A268D3D18EFF6A0F11FE924DD6423B0D6963FBF8333D8C1';
wwv_flow_imp.g_varchar2_table(45) := '169CE84F318198D550E14471DCD315C618BCBCFCC018BB673D2D2E32D674B6B4F057D62141F13310C5049200DD10480649AC1A44404D2E151308068B62D6361889B8E0180454E45231810CCC43B4408E49B7E656D5E4523181AC4C1204D23C958E51A826';
wwv_flow_imp.g_varchar2_table(46) := '978A09C4ACCC75BB30C7E4D16156D5E4523181CCAC5AB4400E4BB9B686D5E4523181422C85F93C8C9AE7F67C472CBA45A0AA36978A02504CA055AB62CCDC622A2F62D13702A9B5B95414856202D55AFBBE762B36FA4540550E5511C800AB2AE3FAC5DC75';
wwv_flow_imp.g_varchar2_table(47) := '3C579B435504F2AC2A4BE1508A71100741A74B556D0E15BBAF8A40AB57FFBE0A0C3B145B7739419D05C47327E75085DBAA084476F9EBC98F692B8AFE10D02277AA09B47E45740A7F012DEEC674C61FCA19E54EADDBAA09440E481213AD1001A1A3A255CE';
wwv_flow_imp.g_varchar2_table(48) := '3421D095B0902D1CBB6C5EC4A203042420A73667AABDD58440DFBF3DC60289FDBB6A6F8482A641409296CA39D3C09A2604223FE25646F1BB31B69CF645716604D8F2F895D3776AE5A16604228702ACD7FF836FD378118B6D0834496D09ECFBDA1C69664F';
wwv_flow_imp.g_varchar2_table(49) := '5302D13B152B0C3321A1F1FF8D00E2AF8910C883C56336E5484B7B9A12881CDB10FB548695498FF1FD0C5EC4E21C08641A243631FEF369795ABBA33981C8C10DB1D34F787AB0C17C7F1F2F62712C02FB792E06AD5B1975CA1E6ED88540E4E89A4FA3F2CD';
wwv_flow_imp.g_varchar2_table(50) := 'F9D593C0A4583A16A5E91190800F790E26502EEC65DD6E042287376F9E591DB762FA5226B1A5FCD8C48B589A06814A2661767C6CF42B94037B9AB42B81EA1C5FBF322AD613D55D24497A8B9FBBCC8B58EC83003DCC7D9B63FDE0FA95D11BED63E276AD4D';
wwv_flow_imp.g_varchar2_table(51) := '422032B92676664EFCCAE9EFF026B53303A2F8B93DBCF05696AFC5A218012E580D869D56862738B69DE262A3FF9BB0E6E79B64693202D545434DEAFAD8E86D3CD049666B7508248C8624BD24817D05483FF17A165EC4523F021C1B8E11C31AC6F0B2C4D8';
wwv_flow_imp.g_varchar2_table(52) := 'A3BE26CF90B815D14F6E5811FD0D615BBF98FDCE3639816E0D65F3AA99C5712BA30FC6AD9CBE3C3E366A615CECF47E9C585E6526CF20B3A1BAAD97D5D08DDF7E0E30183C4648129BC0BBC027DDA3B0091433C54E1810168409612363B4227AC1FA15D11F';
wwv_flow_imp.g_varchar2_table(53) := 'C7AF884AFAE28B69A570E09F4309D450DCFFE0A06CFE6CE6D5AF563D75691DBFFD5CF7D9EF92E35746ED8DE78FE0DDA344EDA598D7F1D80903C2823069082F479E774A0239121061DB360404816CC34BD4BE030141A03B001187B6212008641B5EAE535B';
wwv_flow_imp.g_varchar2_table(54) := 'A34804813402D25DD50802B96BE6358A5B10482320DD558D2090BB665EA3B805813402D25DD50802B96BE6358A5B10482320DD47CDED910A02DD8E8738B2110141201B0113D56F47E09F000000FFFFBA58D32C000000064944415403007997F599B81114';
wwv_flow_imp.g_varchar2_table(55) := '150000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14007022566769803152)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D095C54D7B9FFCFB0EF208B0B08EE801A511151718FBB6679495EAAA966F1A5495FFB6BD3B44DD3364B5F5E6BD2BE9797B649FBDEAF894D';
wwv_flow_imp.g_varchar2_table(2) := '63B48979B1695E35228A2B415C82888A0637161150D97786ED9DEFC29D998BA003DC19E6CE7CFC18EEB9F73BF73BDFF7FFCEFFDCEF9C19E6E81FFBF6DF3AF8C518386B1FD0837F180127468009E0C4C167D7012600F702A7468009E0D4E167E79D98001C';
wwv_flow_imp.g_varchar2_table(3) := '7C46805320EE034E8E003F019CBC0338BBFB4C0067EF014EEE3F13C0C93B80B3BBCF0470C61EC03E1B11600218A1E0823322C00470C6A8B3CF460498004628B8E08C0830019C31EAECB311012680110A2E380302DD7D6402744784CF9D0A01268053859B';
wwv_flow_imp.g_varchar2_table(4) := '9DED8E0013A03B227CEE540830019C2ADCEC6C77049800DD11E173A742C08908E0547165672D4480096021505CCD3111600238665CD92B0B11600258081457734C0498008E1957F6CA420498001602A5E96A6C7CAF0830017A858605CE800013C019A2CC';
wwv_flow_imp.g_varchar2_table(5) := '3EF68A0013A0576858E00C0830019C21CAEC63AF0830017A8586058E80C0DD7C6002DC0D21963B34024C00870E2F3B7737049800774388E50E8D0013C0A1C3CBCEDD0D0126C0DD1062B94323E0C00470E8B8B1732A21C00450094856A34D049800DA8C1B';
wwv_flow_imp.g_varchar2_table(6) := '5BAD12024C0095806435DA448009A0CDB8B1D52A21C004500948BB52C3C6588C0013C062A8B8A22322C00470C4A8B24F1623C004B0182AAEE8880830011C31AAEC93C50830012C868A2B6A0181BEDAC804E82B622AD66F6D6D06BD5454C9AAFA880013A0';
wwv_flow_imp.g_varchar2_table(7) := '8F800DB47A4747079A1AAB515551889ACA22E9555D714DBAD6216403D5CFF7F70D012640DFF0EA77EDF6F65634D495A1AA3C5F3AB6B7B51875B5B519A46B5524AB2F07D5350AB96055049800568517686969445D4DA9E8F8055DA37C7BAF2D7674B4A3A9';
wwv_flow_imp.g_varchar2_table(8) := 'A14AAA4BF7D0BDBD5666812A0830015481F17625CD4D35A816294E6D55310CCDF58A0A3A9D0E5151E1B87751A2F48A8A8A804EAF0C05DD43F7920ED205742874F0893A0828515747E7206919FC66DBDBDBD0505F814A91CAD4D7DE429B98E49A5BE5E9E9';
wwv_flow_imp.g_varchar2_table(9) := '894993C663CD8AB99831351A81FE3ED26BC6D40958B33C4992511D98FD900ED255595E20E9A636CCC45C1C20024C80010248B7D34A4E5DCD0D31B115694E43253A0411E8BAFC0A090EC2AC9953B06AD96CC48C1B0977773759643CD23592511DAA1B2CEE';
wwv_flow_imp.g_varchar2_table(10) := '310A4581743609DD55150522A5BAC1AB470213357E9900FD46B143A43675A8A9BA2EADE4189AEB4496624A5328A519D595E62C983B0DE1C343A0D3E9EEDA9A4EA793EA2E14F7508A443A4897F146B152446DD588F48ADAA6B268D828E642DF106002F40D';
wwv_flow_imp.g_varchar2_table(11) := '2F69746FA491B8BCB073246E695268F0F2F4C0E44913A49426BE2BCD413F7F2845221D941E4D16A913E93657D52ADA969E3CC216B2899E12E6722EDF1D0126C0DD31926AB4B51A505F7B139522056914797EBB58D694045D7F424383315BA4392B97CD41';
wwv_flow_imp.g_varchar2_table(12) := 'F4B8881ED39CAEAA7D3E507A142D5227D23D3B310E2121C10A1D640BD944B6918D64ABA2029FF48A0013A057683A05AD62225B235672AA2BAFA1B9A956641BA63447AFD761F4A8082C5D3C0BF3E7C4618485694EA7E6BEFFD5E97418312C180B92E2B044';
wwv_flow_imp.g_varchar2_table(13) := 'AC2051DB64036455223D221BC956B2996C97457CEC19012640CFB818AFD65697A055ACE51B2F8882979727A64C8EC6EAE573313D6E02FCFDBCC555DBFE068815246A9B6CB847A45C6493B9056433D96E7E8DCBB723A0BFFD125F3147A0C7BCFAEE735973';
wwv_flow_imp.g_varchar2_table(14) := '15562F4BE6487F944DF568BBB28AD39F3101FAD1051A1B9A70E65C2E76EF3D8A53D9175153DBD00F2D03BBA5BAA65E6AFB8BBDE93893731164D3C0343AE7DD4C803EC47DC3DA451812E46FBCA3ADAD0D79F945D877E0180EA79F467149193A441E6EACA0';
wwv_flow_imp.g_varchar2_table(15) := '7281741797968BB6B2917AF0B8D4767B9BE9A315BEBEDE58B4609ACAAD3AB63A26401FE2BB7C51347EFBFA3AFCE03B6B103361A4E2CEB2B20A649C388364F154C8BD5C0483C1F4613745C57E9C90AEAF2F5F9374671CCF465959B9424B44F8503CB0660E';
wwv_flow_imp.g_varchar2_table(16) := '9E79729998938C52C81CFD64A0FE3101FA88A08B58F999111781977FB41ABF7AF91B989734192EAE2E462D8D4DCD382752925D29E9C83C9D8B2A91AA18857D2C5455D7E194D041BA72722E8174CB2AE8CDB18913C760FDBA7BF18D87E760DC98A1D009DB';
wwv_flow_imp.g_varchar2_table(17) := '64391F2D43800960194E3DD61A353208CF3E3E176FBFB1010F3F90045FB3D5A08EF676E4175CC77E91AA1CFE320BD72D4C8F28CD2912750F897BF61F3A813CA18374C906D06ACF9C5993F1ED8DABB072491C86869A5232B90E1F2D478009603956BDD60C';
wwv_flow_imp.g_varchar2_table(18) := 'F0F7C43FADBA07EFFC7A3D9E7D6A3922C2431575CBCA2B71AC2B3DA25486521A450571D26C6845EEA56B62629D81E3A26EB9B8475C36FED26783562E9B8967372E176FB88D87B7B79B51C685FE23C004E83F76B7DDE9E6AAC7BC59A3F1EB571FC64B2F3C';
wwv_flow_imp.g_varchar2_table(19) := '8C99F1D1D0992D4F520A43A9CCCEE43429B5A1F4A852A4395F65E56257F2119C3B7F094D4DA68F56D0BD13C68FC4A30F2FC493DF5C888931E17071E190DD06FC002E309A0300EF4EB7C68E0BC5F79F5984B7366DC0AAE533E0E9E9A1A84EA90DA5470744';
wwv_flow_imp.g_varchar2_table(20) := '9A5350785D2173777745427C0C9E7E7225EE5B390323C38314723E510F010D13403D10ACA92934D8078F3D34037FF88F0D78E2B145080909ECB5397F7F5FDCBB305EA439AB303F2956BCC3EC09FEB12E024C00EBE26BD4EEE9E18AA50BA2F1BB4D6BF1C2';
wwv_flow_imp.g_varchar2_table(21) := '730F203222CC280B090EC443F7CFC3B79E5C8AA95322E1EE6E5A553256E282551060025805D63B2B8D9B381CB31226182BC5468FC4E85121C6732ED80E012680EDB0E696EC100126801D06854DB21D024C00DB61AD5E4BAC4935049800AA41C98AB48800';
wwv_flow_imp.g_varchar2_table(22) := '13408B51639B55438009A01A94AC488B083001B41835B65935049800AA41C98A6C8180DA6D3001D44694F5690A012680A6C2C5C6AA8D0013406D44599FA6106002682A5C6CACDA083001D44694F5690A010D114053B8B2B11A418009A09140B199D64180';
wwv_flow_imp.g_varchar2_table(23) := '09601D5C59AB461060026824506CA675106002DC01D7EE5F2EDBD8A4DEB7BDDDA1D901890C8636C5FDDD7D5008F9044C801E3A417B5B0BEA694FDF8A4285F4B99F6EC58E9DD9A8A96B565CB7FA89050D343418907EEC22DE7D7F8FA27695F0817C219F14';
wwv_flow_imp.g_varchar2_table(24) := '023E91106002483074FE696969446D7529A8D3343756A3A3C3F4C5B354A3A1D180CF7765E0B99F6EC3D64F4FA2BCD2F6DF0A4D7698BF6A6A9B71E0C879BCF7410A8E9DC841B3C1602E967C205FC827F28D7C545470F2132680E8009DBBAA14A1B6AA182D';
wwv_flow_imp.g_varchar2_table(25) := '867A71C5F4EBE1E981B1A323E1E6E666BCD8D2D28294D44C3CFFF3AD786F6B3A4A6ED41A65B62A545635081BB2B1F98364649DCE456B6BABB169777737C966B2DD785114C837F2B1BAB2A873B71B71CDD97F9D960034BA373554A1AABC40DAFB8BF6E335';
wwv_flow_imp.g_varchar2_table(26) := 'EF0C414181489C3905AB97CDC1D429E3B07A7912A6C6C5C2DBDBCB58ADBDBD0387BF3C8B175EFD2BDE7EF720F20A2B8D326B156EDCACC5CEDD9978FFC3149C3B7F558CF0A62D9BC836B271D532612BD92C6C4F4CB807E48BB93DE42BED2546BE13068485';
wwv_flow_imp.g_varchar2_table(27) := 'B9DC99CA4E4700CA852927A6E037D497A3DD6CB33B9D5E8FC8C8702C5E38138BE74F4784D99E5FF4958463470DC78A25B3409D2AC0DF4FD14F4E64E6E2954D9FE0376FEFC1854B371532354E8AAE5762C7E7C7B06D7B2A2E5E56CE4D02852D44D615C236';
wwv_flow_imp.g_varchar2_table(28) := 'B2916CA536753A1D2246844ABE904F9151E1201F49462FF29D30202C0813C286AE3BD3CB690840B92FE5C05562524839B1F9A8E7EEE18E89B1E3402367C2B4680405F8F6DA0774BACE4EB5645102E6254DC7D0A1218ABA6773F2B1E9CDCFF08B37FE0F59';
wwv_flow_imp.g_varchar2_table(29) := '678B611A9F15D52C3AA1BD36AEE6DDC25F3F49C3277F3B8482C212C57DC3860663DEDC78DC2B6C3127ABA252D709F99430355AF838071363C6827CEE1289A7483B0813C2A656CC81082B5936D8476BB7AFB7760383ABBF43CA7529E7A5DC977260737B68';
wwv_flow_imp.g_varchar2_table(30) := 'E44C889F2CD29B39889D10094F0F539E6F5EAFB772584820E6CE9A82258B1211397204CCBF9FFF4A7E09FEEB0FFFC0CF5EDB818CAF0AD026D2A5DEF474BFDE21EA5EC82DC196BF1EC4DF777E89D21B65C62AD4C6C891C3A5369366C5212C38C028B3A4E0';
wwv_flow_imp.g_varchar2_table(31) := '29C81E1B1D25F93C43F8DEFD494618115635C679C240286C8945835BC72109D0D1DE86C6864A91DF17DE96DF4B1D28620416CE4F90464EFA8A42BD6E6030D08E8D09D363B0726912C68D1B051717D3571B161597E18FEF25E347AF6CC781B4CB686951AE';
wwv_flow_imp.g_varchar2_table(32) := 'D39B87BFB5B51D67CE1562F387FBB03BE518CA2BAA8C625757578C1B1B2552B03998393D16D4A651D88F02F91C15112688948005F3E21111314C4160DA62B5739E502861D9D16D45AC1F4DDAE52D038BBC9DB9D446EBF7B5B7A465CCC6FA0A457EEF2656';
wwv_flow_imp.g_varchar2_table(33) := '71A2A3C7489D74667C0C8283FC54B7DECBD31D7193C64869C624915299A7196565D5787F5B2A7EF0D247D89D7A018D4DA6E54ADA1BE0ABAC7CBC2B9632F71DC8448DD9AE32A48374AD1413DAB8C963E1EDE5A1BADD21430290183F512257CC84D1701364';
wwv_flow_imp.g_varchar2_table(34) := '931B69177324C2B28A160BC47B238E364F700802B4181A41B96B35E5F74D35524E2B07D0CFCF17F1D32681567126C78C0275525966AD232D43C688946AD552B182D46DE5A8BABA1E1F7D7A183B934F189B3FF1D5051C4ECB1223AD696F001F1F6F4C9B1A';
wwv_flow_imp.g_varchar2_table(35) := '0BD241BADCDD5C8DF5AD5520724D8A1D8DD52BE662BAC0CCDFCF3448D013C011E7099A27405DED4DD1F98B41B9AB79C7081F3114F393E2B16CF14C8C8A1C2AD212DBBBEAE2A2C75879E5482CA90608329ADBD85339303000B344DDE54B1231266AF8A0D9';
wwv_flow_imp.g_varchar2_table(36) := '3D5A60B674B198E88B49F688E1610A53096B9A27508AA41068F0C4F6BDC262902CAB6868BAFD4DA8D0D060C4C68C46684880654AAC5C4BA7D3494BAA93268D85878747AFAD916CA2784A85D3F22B74BDD6B3A58026D91363C7202464C86DCDD21B88B75D';
wwv_flow_imp.g_varchar2_table(37) := 'D4D805CD13A027BC6FDD2A47EA8163389C9E8DE2923291120DDE4A46BB983C1616DDC0DEFD2770F458369A9B7BFF1C11C9A80ED5A57B3A681DB427076D708DDA2E2E2D076DF04758969555D8A055DB37E150049816374E8160595939324E9C41F2DEA3B8';
wwv_flow_imp.g_varchar2_table(38) := '78A5088616D3C7051415AD70D2D2DA86CB57AE8BD59C0C9CCCCC416D5D9DB1150FB11439CCECFD034A937CBC3D8D72AA4BF790DDA483741985562E180C2DB878B948C22CE3783668833FF326C78E09373FD57CD9A108F0A3EF2CC17FFE723D962E9A065A';
wwv_flow_imp.g_varchar2_table(39) := 'F591A3439BD39D3D775174C6749C3E730935758DB248F56353B3013917F2909C928EEC73B98A11DFCFD7078B174CC7B31B5762FCB811C6B6E3A78FC3DBBF592F6DA11414689A7892DDA483749DFB3A1F4DCDD6FB38366192957D09BBC5607136E7A258A5';
wwv_flow_imp.g_varchar2_table(40) := '323DA9680976EA9409786AC3723CB866A6D16E47283814012820C3C37CF1C4DA44694FAE758FCC8379876A6B6BC395BC6BD8B73F035F66648B37982AC53BB5EAA447B58254A7B205C94407FAFA621E5ACC3E9C16283AF58AA589F8972796605A5C9420A7';
wwv_flow_imp.g_varchar2_table(41) := '80DD3CBD11650F77D7CE2D945E5F87679F5A86B0B02072477A91AEDCDCABA273A683DAA8AB5787C01DC2FB92D20AA4092C0893ABF9D74018498D8A3FBE62256AFEDCA982B02B70EFC2491812E42DAE3AD6AF88846339247BE3E3ED8ED54B27E1F76F3C86';
wwv_flow_imp.g_varchar2_table(42) := 'EF3EB3525A8D916574BC71B31CE9C7B2B067DF31410AB18A245216BADED75745652D324EE63244FFCB00000B6D49444154881C3F0379F945E868377D843A2C6C08EE5F3D071BD72FC1A4D81116ADE8D0CAD1BC5963F0E66B8FE2B97F5D8DA8C861469348';
wwv_flow_imp.g_varchar2_table(43) := '37B591929A818C1339A0B68DC23E145A84AF97F38A85EF19387AFC346E0A2CCC6FA7F46CF58A59F8962062C2F4D1F0F4ECDB3BE4E6BAECBDECB0049081D7EB75981D1F85D77EF6007EF1E223484C8881589491C5686868C4E9335F4BE951F6B92BA86F30';
wwv_flow_imp.g_varchar2_table(44) := 'ADC51B2B752BC823E7A1B4533878E4248A8B6F286A848F08C3230FCEC786B50B307EEC50F4E78D66B23B61EA486C7AE941BCF8FC83881E3F52D14671C90DA96DB2A1E486659F42A52707F9B89BD233E1738399AF3A1D30617C24D6FDF3627CF31BF31033';
wwv_flow_imp.g_varchar2_table(45) := '6138C80645A30E78E2F004308FD9F83121F8DED30BF1DBD71FC79AE509E24D310FA3983E4F7FF94A8118158F8A51F12C6E8A776E8DC2AE02ADE8145C2BC5DE54B1A223464EF38F2A5095B163C2A50EB4F69124317207D325555EF7C40CC32B3F5E2D11B8';
wwv_flow_imp.g_varchar2_table(46) := 'FB449F6C382A9E64F2CA11D9D8BDD19BB7AA70F4D859D093837C245FE53AF4A65D827867FCE92756E0BE95F118313C401639C5D1A908204734648837D63E148F77BAF6EE0D0B5506BDA4F416D2D233B1EFC049E41794A259AC8C5C122B3AC97B8FE1AB53';
wwv_flow_imp.g_varchar2_table(47) := 'E751575F2FAB929E2631D1A3F0F8634B4013446B762022304DF45FFFC53ACC499C28DA16C3769725B5629589568EF6ECCDC0E5BCEB6832B4E26A410952F61F47DAD15328B971ABAB66E7C13FC0C7382197F624F6F7EA1438D95FA724801C634F0F5769E2';
wwv_flow_imp.g_varchar2_table(48) := 'F9E6BFAFC5F3DFBD0FB1D191B2483AD6D4D622F3F479EC4A4EC39973B9686A32A547F4B9FAB87BC663E3E32BB07AF934F1A69B69F546BAD98A7F224704E03B1BE7E3CD5F7E534C4EA7C2C5D5C5D89AB4727426175F241F41D6E90BA8AB3391952A8D8C18';
wwv_flow_imp.g_varchar2_table(49) := '8607D624E1E90DCB4013727727DF93D8A909401D825E94EBC64F09C74B3F5C854DAFACC5BC39F7283A15D5915F6EAEAEA094E199A75660C9A2C9080CF09245363F0E0DF5C553EB66E1779BD64B299D87BB7B8F361059274D1C830DE229F5E843B3316E4C';
wwv_flow_imp.g_varchar2_table(50) := '1874761AF91E1DB0E24586A11BB851118178F68924BCFDC606DCBF3A51219D953819CF6C5C014A197C7D3C14B2C13C090AF49252BADFFF7A3DFEE9BED90A53121326E2DB1B5761C592388485D8EE29A530C28E4F9800BD0427C0DF138FDE3F4D214D4A1C';
wwv_flow_imp.g_varchar2_table(51) := '6FD74B82BE3EEE78784D9CC2E6B9B3A3E1EDEDB8CB980A67FB71C204E807687C8BE320C004709C58B227FD408009D00FD0F816C741C08E08E038A0B227DA418009A09D58B1A55640800960055059A5761060026827566CA91510600258015456A91D0498';
wwv_flow_imp.g_varchar2_table(52) := '00F6102BB661D01060020C1AF4DCB03D20C004B08728B00D8386001360D0A0E786ED010126803D44816D183404980083063D374C080CF68B0930D811E0F607150126C0A0C2CF8D0F36020E45801D3BB341DB860E36A8776BBFB0A802172F171BAB9DCCBA';
wwv_flow_imp.g_varchar2_table(53) := '8CF3B9CAAF56310AEDA850DFB517B11D99346053344F009DDEF40FE1B487EFF75EDC823F6D4947419169779501A3A482828E0EE04ADE4DD07E5F9F7E7618F4C55CB2DABCFC52BCFED6DF41FB8A9D3A731DF4C5B4B2CC1E8E37CB6AB127351B7FFAF36E69';
wwv_flow_imp.g_varchar2_table(54) := '2F62D92673ECE56B5A3B6A9E007E01C3E1EA66FAC7F4B6B676A41D3D8B977EB91D9BDEDA0DEA50EDEDA2F70D5264A86DDAEFEB2FDBF6E3F39DE930DFEFABBB4957F24BF0D61F77E227FFB603474FE683EEED5EC756E71DED9D84FDDFCF32B0F5A354E474';
wwv_flow_imp.g_varchar2_table(55) := 'DB92953027EC6D658FB5DA194402A8E392ABAB07FC0347C03F2802EE9E7E80CEF45D3917720BA50EF5E357B763DFE15C3435DBEEDBA15B5BDB917DB6107FEEDAEFABB2B206E63FEE1E3E92CDFE64B7289BCB4A4ACBF1DF9BF7E087AF6CC781B44BB8D3BE';
wwv_flow_imp.g_varchar2_table(56) := '62E6F7A9513618DA90955D80CD5BF74A84BD56546A522BB0F5101893CD8439616F126AB3A47902C8B053307CFDC21038240A5EDE41307F3CDFBC558D2D1F1DC4F77EB215DB3FCB445945837C9BEA4783A1155F65E549FB7DA51ECC84F97E5F3A9D1E1E9E';
wwv_flow_imp.g_varchar2_table(57) := 'FEC2C648F8FA0F03D94C2F2A070E899464544736AA735FB1FDD2BE625FA49EB72A816B6A1A7124FD02FEF47E320E1C3E859AEA7AD90C094BC2345060EB2330269B8D428D171C8600721CF4624EE0E5330441C151F0F10B858BABE9EB4BE84BA376A59CC4';
wwv_flow_imp.g_varchar2_table(58) := 'F33FFF10EF6C3E844B574DDB8FCAF7F7F7D84013C4E397F0EEFB29389C765AB1DF1791B1B303454A36E95D6EFF9606BA46F6060A22505DBA47B685F615FBF8D323F8FE8B1FE26FBBB2515B67DA604FAED3DF6371493576266762F3963D3899F9350C06D3';
wwv_flow_imp.g_varchar2_table(59) := '57B01376641361499812B6FD6DC75EEF7338029880D68146DB009162F88914C9CDDD07F20F4D488F9FFC1AAFFD668734F13C9E59D8EF7CBBB6B60907D3CE63F307293876FC1C9A0DA6CEA9777185B76F8818F1A3401DC8BC53CBB6743F521DAA1B28465B';
wwv_flow_imp.g_varchar2_table(60) := 'BA9774C8751A1A0DF8FBCE0C3CF7B3ADD8FAE949545435CAA23E1D696E71F172A93421FFF8D303B878A9504CBC4D2A082B3F8119614718023A38EA8FDE511D33F7CBCDCD0B7E01C344478C84A7570074221591E534F17CE7DDDDA2537D842FF6E58096FA';
wwv_flow_imp.g_varchar2_table(61) := '64D99D8E15950DD8BBFF0CDEDB92825359B98AFD002845F0F51F6AD65EDF3B904EA7936C0D144F04D2453A657B68944E49CDC40F7EBE55E4EAE928B959278BEE78A439D0C9537978EF2F7BB173778662424E981036D41E614598DD519983089D820072AC';
wwv_flow_imp.g_varchar2_table(62) := 'F422F5A0513550A447DEBEC1D08B115A965556D5E2E31D6922CDD8862DDB8FA3E4569D2C521C6FDCAA01A50C1F6C4BC1D99C2BA0EFEC972BC823A7BF78EAB87BF88ACBBD747C21B1FC5707D2453AFDC4A8ECE6EE0DF9A75DAC781DFAF22C7EF2EA3629A5';
wwv_flow_imp.g_varchar2_table(63) := 'CBBFD6F3D7A4578A27C5FE433978F7CFC938F2E569D4D59BE640840161D1894988C0C44D56EF1447BD5378D9CD499D4E2F46D740314247411A5DC51342AE4229CCBE835978E1E56D78EB7F52E5CBD2F1B37F1CC7B68FF7DF9632D0CA4840D048E92963CD';
wwv_flow_imp.g_varchar2_table(64) := '919374FB050C07B5456D4A46893F724AF7F2AF3EC19B7FD827AE987E3FDF7512EF7FB807A7CF5C543EA584CFE47BA048B53CBD02A1139898EE729E925312C03CBCD2E82A46567F1AB5C5121F74A651FBD4E9CBE65591976F7AF756273A8CA7B72051F028';
wwv_flow_imp.g_varchar2_table(65) := 'D0CA888BABBBA2AE354FA82D6A3350B44D36902D727BA7CF5E918BD2F1CAD522E928FD11BEB90B1FFD85AFB48C49BE4BD79DF88FD313408E3DE5D8BE62898F46C4EEAB30721D3AEAF5AE30A60C3E228DD2BBD0E54179D1AA8CB7B0414A5FC4916CEBC910';
wwv_flow_imp.g_varchar2_table(66) := '9DB0917C22DFC847F2B5A77ACE788D09D02DEAD4A968158696FE6809D0C5B57319958E9DA32E4DA4ED2B65D0199F46915D4F23739B43A52561F2897CEBE6AED39F32017AED023A788837AD0244BA10205662E8D89977EB7ABD63F00564B39F982344C064';
wwv_flow_imp.g_varchar2_table(67) := 'B3BF30CB7E6C16C6D8D5AFDEAEACB153635CC4EA919D9AD6AB595AB4B95767AC28600258115C566DFF083001EC3F466CA11511600258115C566DFF083001EC3F466CA11511B02101ACE805AB6604FA890013A09FC0F16D8E810013C031E2C85EF4130126';
wwv_flow_imp.g_varchar2_table(68) := '403F81E3DB1C0301268063C491BDE827024C807E02D7A7DBB8B2DD22C004B0DBD0B061B6408009600B94B90DBB45800960B7A161C36C810013C01628731B768B0013C06E43E31886D9BB174C007B8F10DB675504980056859795DB3B024C007B8F10DB67';
wwv_flow_imp.g_varchar2_table(69) := '5504980056859795DB3B024C007B8F10DB675504AC4800ABDACDCA190155106002A802232BD12A024C00AD468EED56050126802A30B212AD22C004D06AE4D86E55106002A8026337257CAA190498009A09151B6A0D049800D64095756A060126806642C5';
wwv_flow_imp.g_varchar2_table(70) := '865A030126803550659D9A418009A0995069C350AD59C904D05AC4D85E55116002A80A272BD31A024C00AD458CED5515012680AA70B232AD21C004D05AC4D85E5511509100AADAC5CA18019B20C004B009CCDC88BD22C004B0D7C8B05D36418009601398';
wwv_flow_imp.g_varchar2_table(71) := 'B9117B45800960AF9161BB6C820013400D985987661160026836746CB81A083001D440917568160126806643C786AB810013400D14598766116002683674F661B8D6ADF87F000000FFFF351C94F20000000649444154030092156A974ABFA61000000000';
wwv_flow_imp.g_varchar2_table(72) := '49454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14007022847930803152)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D07605455BAC7FF772609698440E8480F82521204E90828DD8614956A793E4177DDE7EEBAEABAEB2EBBEBAEBAEEBE2DFA14705751EA4AB3';
wwv_flow_imp.g_varchar2_table(2) := 'D2111009BD4851902204424F08E96DE6BEEFBB64267353C82499B97327F71BE672CB39F79CEFFB7DE7FCEFB9E74E666C90971010029625200260D9D08BE342001001905620042C4C4004C0C2C117D7AD4D80BD1701600AB208018B121001B068E0C56D21';
wwv_flow_imp.g_varchar2_table(3) := 'C004440098822C42C0A20444002C1A7871DBDA045CDE8B00B848C85A08589080088005832E2E0B01170111001709590B010B121001B060D0C5656B13F0F45E04C093866C0B018B111001B058C0C55D21E0494004C093866C0B018B111001B058C0C55D6B';
wwv_flow_imp.g_varchar2_table(4) := '1328EDBD08406922B22F042C444004C042C11657854069022200A589C8BE10B0100111000B055B5CB53681F2BC1701288F8A1C1302162120026091408B9B42A03C022200E551916342C0220444002C126871D3DA042AF25E04A02232725C085880800840';
wwv_flow_imp.g_varchar2_table(5) := 'A9203FF3CCCA3A8F3EBA2276C2D31F357DF8E98F5B4EFDF1A76D274D5FDA61F2F48F6E9DF8D4D26E539E5C76DBA4A756F490C57C0C38361C238E15C78C63C7319C40B1E498726C4B85DBF2BB961480879E5CD17ED2F4E563273FB5FC7793662CFD981ACB';
wwv_flow_imp.g_varchar2_table(6) := 'BE493396A5D0A2A616E6E615843BAF863AEDE76D4E47B2A3A8F02414E57B55B11F5654E51BA70D7BA03A77CB623E061C1B8E11C78A63C6B1E318722C39A61C5B8E312D29D763BEF463AD0D505B98F4D4B2765654034B08C0A4A7572452D05FA66533053A';
wwv_flow_imp.g_varchar2_table(7) := 'CB6E731E87A22E5355F53780723F35964400CD6991B7350834BF1E73E57EAD0D505B808A13DC36A88D6CA2F5AFA74C5F9E505B50DCC88F5A290013267C14460A3F9A82F9362DC9703AF71184DFD37207053A8AD6F216026509A8E0B63188DAC81F9C8ABA';
wwv_flow_imp.g_varchar2_table(8) := '9F84E0E4A419CBFF3E79FA92BBB84D953D21F88FD42A0198F2F447F1139F5AF6A790383B0FDBBFA0F03C454B4B5AE42D04AA4E40455B40FD1F55B1ADE7364517933F721BAB7A41E63D23E80560C2D31F454F9EB1F47152EB2D4EA7FD98A2E2970AD0C2BC';
wwv_flow_imp.g_varchar2_table(9) := 'C8C5B2602450DCA65EE2363671C6F2AF480C1EE5B6178CBE78DA1CD4023079C6B207421DF6ED2A947FD3B06D80A763B22D04FC4540813A90CA7E9F2617374D9AB174046D9BF65D996141290053662C193C69C6B26D2AB01C0A3A57E6A4A40B013F11E801';
wwv_flow_imp.g_varchar2_table(10) := '28ABB92D729B4410BE824A0078C845B0173961DB48ACFBD0226F216006027DB84D4E9EBE7C1EB7513318E4AD0D4123000F3FBDA41F0DB9BE21C71EA645DE42C0740454459D426D949E1EACA09181E9CC2BD7A0A0108049D3974FB339B5ABBE253FAC516E';
wwv_flow_imp.g_varchar2_table(11) := 'E4E4A05909B487EA4CE2361B6803BDA9DFE402A02A34E4FF2314F50372268C16790B81602010C66D76D2F4657F30BBB1A61500FEE0053DDA5B4A005FA245DE4220F80828F835B5E10FB82D9BD578530AC0E0991B4342E36CCBA02A63CD0A4EEC12025E11';
wwv_flow_imp.g_varchar2_table(12) := '50312D24CEBE84DBB457F90DCE644A016871E1EA8780720FE425046A010105B8AFC5F9ABEF1BE98AB775994E00E8BEE93515EA446F1D907C42201808F013026EDB66B3D5540230F9A965CF42C10B668324F608019F10A0B6ADB5719F14E69B424C230093';
wwv_flow_imp.g_varchar2_table(13) := '672CEBAFAAF8AB6FDC925284803909501BFFCBC427979BE663EBA610009E2555017ED4670A7BCCD974C4AA5A42C0AED8D4F7B9CDFBCB9FAA946B8A0E17DAC0CE7FABDFBE2A864B5E2110C404E28BDB7CC05D08B8004C9DB1BC0B143C1770126280103092';
wwv_flow_imp.g_varchar2_table(14) := '00B5F9C94F7EDCD5C82ACBAB2BE002E080F31532CC4E8BBC85809508D8555B51C03F29185001E03FF0017F271FE42504AC4840B9DFD7138255A5185001B03B6D6F54D560C92F046A13019A10E41170C05C0A98004C7C6AE9189AF9EF1730CFA56221600E';
wwv_flow_imp.g_varchar2_table(15) := '0283264E5F3E3250A6044C0014557936504E4BBD42C04C0414457D3150F604440026FD68596B72F80E5AE42D04840070C7D4273E6A5B5310D5393F200200071E2363155AE42D048400A03842EC8F2000AF000880CA1DFFD100F82A550A01F31250300DD0';
wwv_flow_imp.g_varchar2_table(16) := 'FA86A1361A2E00939F5ADE9B3C6C4D8BBC858010701150D1B6B86FB88E18B2365C005427C6405E4240089421A0AAA8F6D38032857979C07801508C77D24B16924D080494801280BE61A8003CFCE34F9AD30440B7805296CA85804909D008A0D784273FAA';
wwv_flow_imp.g_varchar2_table(17) := '67A479860A80ADA8683839471A40FFCB5B080881D20494505BC8A8D207FDB96FA80050CF975FF3F16734A5ECA027A0401D5C55276A92DF5001808244C84B0808818A0918DC470C1380993367DAE81E47EEFF2B0EBDA40801501FE9CA7DC528148609C0F7';
wwv_flow_imp.g_varchar2_table(18) := '9712B8F34718E598D42304829440E4D1735D6E36CA76C3044071A872FF6F5454A59EA026A0D86C5EDF2AD7D4515B4D0BF0FA7C4535CC29AF6D928C42C08C0454E3FA8A6102A0026D202F2120042A27A0A89D2ACFE49B1C460A4053DF982CA50881DA4D40';
wwv_flow_imp.g_varchar2_table(19) := '8562D8C5D2300150001180DADD6EC53B1F11F0B6AFF8A23A4304A0F8B1469C2F0C9632848005083428EE337E77D51001D89BDC3D8A3C09A145DE424008544E2074CFB966E19567AB790E4304A081D329DFFB5FF358490916221057D038CC08770D110047';
wwv_flow_imp.g_varchar2_table(20) := 'B86A88334600933A848011042AEB33BEB2C11001509DAA8C007C153129C712048CEA33860840514881DCFF5BA2D98A93BE2260549F314400E00C971180AF5A8694630D0206F519430440754204C01ACD56BCF411811BF5191F55A1156388008485C824A0';
wwv_flow_imp.g_varchar2_table(21) := '465BFE1302DE12083566DECC100128F0D669C967288182FC6C1416E4185AA754E62501D59851B32102E0A5CB92CD0002AAAA222FF71AD2D3929195710199D7CE6BDB7C8CD30C3041AA30110111001305C39FA6381D85C8C9BA82F4D453DA9AF75DF5F1B6';
wwv_flow_imp.g_varchar2_table(22) := '2ECD59E44A92B5C908F8DA1C11005F133559798585B9DA959EAFF8D7AFF2CE0A2D5469E689F3A4A79ED6CEE1732BCC2C09B582800840AD08635927F2F3329171F52C32D3CF81EFF53D73288A82D6AD5BE0AE21BDB585B7159BBE29F0397C2E97C16501AA';
wwv_flow_imp.g_varchar2_table(23) := '6711B25D4B08E8A35E4B9CB2AA1BAAD381DC9CAB34CC3F8DECCC4B282ACAD7A18808AF83CE9D3BE09E9103D033B1236263A2B485B7EF19D15F4BE33C9E2771195C567A6AB25636D7E1992EDBC14D400420B8E3A759EF282AD03AFCD5B4D3C8CD4E83B3D4';
wwv_flow_imp.g_varchar2_table(24) := '3D7CA34671E8DBAB1B460DEF874EF12D111616AA9DE7F91F1FE334CED3B777021A366CE099AC95C965731D2C085CA72E83ECF89D803F2A1001F0075583CAD486E9D7CEE1DAD533D086E934C3EFAADA6EB7A35D9B961836A40FEEE89780E6CD1A42511457';
wwv_flow_imp.g_varchar2_table(25) := '72856B4551D0BC691C06F54FC4B03BFBA06D9B9BC065B94FA03AB82EAE3393EA661BDC69B21174044400822C642A75406DA2AEF8315E6141AECE83C8C8702474E988D134A4EF9ED001313191BAF4AAECC4D48DC46D09376B6575A33223A86CCFF3B96E7E';
wwv_flow_imp.g_varchar2_table(26) := '94984EB6B04D6C9B67BA6C9B9F80CDFC268A854CA0CCA33A7AACC7C75D4B93260DD1AF7722460EEB8BF8F62D1016EABBBFBFE2B23A5099A3A8EC7E7D12D1B8719CAB5A6D5DC6B652B7205A26F9CF940444004C199612A3F8519CFE2A5BF2182F242404ED';
wwv_flow_imp.g_varchar2_table(27) := 'DBB7C6F0BBFA62409F6E68D6B40114FA5772B66FB7B8EC664D1A6060DF040C1FDA0FEDDAB602DBE0AA4595C7882E143E5FFBAB4011007F91AD61B94534839F51C163BCA8A8482426DCA20DCD13BBB447DDE8881AD656F5D3EB4685A37BB778CD86846E9D';
wwv_flow_imp.g_varchar2_table(28) := 'C0367996C2730399F408927D605F3CD364DB3C044400CC130B9D25F9B919651EE37186F66D5B62E4D03E68DFA6194243EC7C28A00BDB10DFB6B966535B9A302C6D0C777E9E342C7D5CF6CD414004C01C71F0DA8A133F9CC1DA0D3BF1C3E90B70384A6E07';
wwv_flow_imp.g_varchar2_table(29) := 'BC2EC0C719D906B645B3E9D4D9F24BA789CBF213E468A0098800043A02D5A83F332B0B7BF77F8B2FD66CC5E123A790976FFCDF5BE6E6E5E310D5CD36B02D6C53355C9153BC20E0CF2C2200FEA4EBA3B2870CEC86198F8F40CB9B1AEB4A2C2C2CC491A327';
wwv_flow_imp.g_varchar2_table(30) := 'B172CDD7D8B5F708D2AE65EBD2FDB193763513BBF67C8755EB927094EA661B3CEB69D4B001460EEF856E5DE24B0E2B4AC9B66C998A800880A9C251BE31A1F4486F40EFB678F5E5B178F9F9F1E8D5B3133CFB148FB093CF9CC3C64D3BB069CB5EA49CBF02';
wwv_flow_imp.g_varchar2_table(31) := '950F965F5C958F725967A94C2E7BE357BB907CF63C5467C9DF06B02D3777688587C70FC6B44983D0B9530BD83CFFB6C087B654D97839E1860444006E88C77C891DDB37C44FFE7B30FEFEEA34DC3BAA372223F4DFB89E9A968EED3B0F60D5FA6D38762205';
wwv_flow_imp.g_varchar2_table(32) := '8545D5FFD3DE82228756C6AA75DBB083CAE4B23D89D4090B43EFDB6FC5138F8E265B7AA045F3FA9EC9B21D04044400822048E59918573F120F8DE98E37FF3C0D4F4C1D86A6F47CDE335F6E4E1E0E1C3A4AB70749D87FF038B2B2F59F18F4CC5B7A3B333B';
wwv_flow_imp.g_varchar2_table(33) := '0FFB0E1CC72A9A63E0327273F37459E21AC462F85DBD30FDBF466340DF8E88A95B47972E3BBE23E0EF924400FC4DD8CFE5D7090BC1E001EDF1C6EF1FC48B3F7D00DD13E2753516D108E0C4C964ACA11141D28E83B874255D97EEB973E9F255246D3F88B5';
wwv_flow_imp.g_varchar2_table(34) := 'EB9370F287647A0C59327AE0617EFB763761C2D8417864F21074EDDC02A1A1726FEFC92F18B7450082316AE5D8CC5DB14BA726F8F9D343F1D757A662C4D01EE021BA67D6F3172E63CBD6BD58FBE54E9C4ABEA83D46D41EE3D1361FDB92B40FE72F5EF63C';
wwv_flow_imp.g_varchar2_table(35) := '05612430B775EF84C7A78DC4987B6E47AB9B1AE8E61F74996527E808D882CE6231B852024D1A4561EA84DBF1D61B53316DE210346C18AB3B2733330B7BF61DC6AAB549DAA3C4BDB4CDC73C33C5D48BC25D837B60FAE3A33064E02D88AD57834F1BF2F001';
wwv_flow_imp.g_varchar2_table(36) := 'F232230111003346C5473645848762F8E08EF8DB2B0FE1B967EE4397CE6D7425E71714A0F463BC36AD9B61ECFD03F1C4B4E148ECD64A1B01E84EAACE8E3C05A80E3518719208801194035C87A22848ECD21C2FFE64245E9F3991AEEC8974FF1EEAB62A34';
wwv_flow_imp.g_varchar2_table(37) := '240409DD3AE0B1A9C331EEFE3E68DBBAA10CF3DD746AF7860840ED8E6F19EF5A34AB87C726F6A189C32EEEB42E9DDB61E8E02E68503F0AF2B2160111006BC55BBC15023A0222003A1CB22304CC41C0282B44008C222DF5080113121001306150C4242160';
wwv_flow_imp.g_varchar2_table(38) := '14011100A3484B3D42C0840444004C181431C9DA048CF45E04C048DA5297103019011100930544CC1102461210013092B6D425044C464004C064011173AC4DC068EF45008C262EF5090113111001305130C414216034011100A3894B7D42C0440444004C';
wwv_flow_imp.g_varchar2_table(39) := '140C31C5DA0402E1BD084020A84B9D42C0240444004C1208314308048280084020A84B9D42C0240444004C120831C3DA0402E5BD0840A0C84BBD42C0040444004C1084D226E4E765A2B030C77DF8CCD92BC8C8CC77EFFB7AA3E457FE7C5372764E01AEA4';
wwv_flow_imp.g_varchar2_table(40) := '5E7317C6BEB04FEE03B2611A022200260985AA3A91979B8EF4B4D3C8CEBC04A7A3E45779BEFB3E19CFBCF821FE3D3F09E72E64F8DC62FE51115F149A9A9683B51B0E60F67BAB7036E5A2BB48F6857D62DFD847F6D59D281B012520021050FC80D359849C';
wwv_flow_imp.g_varchar2_table(41) := 'AC2B484F3D4DEB545DC7F734CD51E4C0C62D07F0FC6F17E2AF6FAFC791E3573C9303BA7D26E52A567CB61373E7AFC1C1C327A03A9DE5DAE32451CBC94A2DF6F58AE67BB9192D763090EE8A0004887E51611EB2322E6A9D212FF71A4A5F152323C39198D0';
wwv_flow_imp.g_varchar2_table(42) := '099D3B7728F3135FFBBE398E57DE588A5FFFF163ECDA974C1DA9868378A5EA63001AB0E0E8C58C7BF60000100049444154B10B98B778333E5AB609277F48D191AC1316A6D99ED8AD13D817CF44F6957D4E27D163064545FEBBBDF1AC57B6CB12100128CB';
wwv_flow_imp.g_varchar2_table(43) := 'C4AF470AF2B390919EA22DBC5DBAB2264D1AA27F9FEE1839AC2FDAB7698E4EF12D317A643FF4E8DE19515191BAECA7922FE01FB356E2672F2FC6862DC7905FE0D0A57BBD53855FEE292C7462FFC164FCEBC3B5F87CD5365CBA94A6AB263A2A0A3D6FEBAC';
wwv_flow_imp.g_varchar2_table(44) := 'D9CCB6B76FDB5CF3A51FF9C4BEE932D30E33C8B87AB6421E9445DE7E242002E047B8AEA255EA60DA158FEEEFB52B1E5DFD5D69BC0E090941FB76AD30FCAEBE18D0A71B9A36A90F85FE711A2F36C58636AD9A60C4D0DEE8D73B11710D62F9B07BB972E51A';
wwv_flow_imp.g_varchar2_table(45) := 'DE9FBF01CF3CFF2156AC3C88CCAC02779AAF367268622F69C731EDFE7EC3C63DC8C8C8D615CD3671271F3EB4175AB76C02B6D995817D69463EB16FC387F643BBB6AD60B7DB5DC9DADA3D224A4BA6B9101E11D57054A3952AFF55464004A03242354877F2';
wwv_flow_imp.g_varchar2_table(46) := 'FD7D36DFF39EA2FB7BBAE7A57B60CFE2222323904043E4D123FA21B16B3CEA4647782697D9D63A52D306183CF036DC39A8175AB468A2CB93939B8F659F6CC5332F7C80B98BB7E3E2657D27D565F672273D3D171B361DC29CB9ABB16DC721E4E7EBC5856D';
wwv_flow_imp.g_varchar2_table(47) := '605BD826EEE46CE38D8AAE1B158EEEDDE271F7C8FEE47BC732B7074E47A1C62A3D9598113BA7B39AA39A1B1961A2B4409B2202E08708F03D6D16CDE4A7F3D52C27BDCCFD7DD32671C5C3FC3E88A72132FF365F55CDA81F1B8D3E3D3B63E4B07EDAE841B1';
wwv_flow_imp.g_varchar2_table(48) := '9584B288260CD76FDC8FE75E9E877FCED98813A752AB5A3CCE9DBF864F57EEC67BF35663FF8163E0494857215C178F58B86EB6816D71A579BB669FE3DBB620FBFBA21FDF1E348ED39DAAD224431EB14BE75113B164A6BA0CB2E3130225ADC627C559BB90';
wwv_flow_imp.g_varchar2_table(49) := '82FC6CBA973D870CBAA72DA067F9D4F3DD403C87F9FDFB24A0F430DF9DB18A1B513C59D8351EF78CE88F5B3BB5D7FDE827DD7960E79EA3F8EDAB4B30F3CF9F61DFC1736452C5436BCE7FFCE4252CF8680B162DF912C78E9FA1FC25068586856975705D3C';
wwv_flow_imp.g_varchar2_table(50) := '62E1BA4B52ABB7A5D0AD4EB326F531A06F02CABD3D20A3982533CD483F07665CBD9AE4ACF208D8CA3B28C7BC27A05203CDCFCDA0E7F7C934AB7F014585B9BA9323A9835E1FE6F7F76A98AF3BB90A3B6161A1B8A5636BDC4D429098700B0DADF5B713C74F';
wwv_flow_imp.g_varchar2_table(51) := 'A4E0AF6F7D8AE77EBB049B934EA0B0B0E473060E87831EDFA5D0D57E033EF97C2B2E5CD03F628CA45B152EF3EEE1FDB43AB8AE2A98E675D6CA6E0F986D56C6058D353367F65E172E19CB252002502E96CA0F3AE9DE34273B8D1EE39D4276D6657A7E5FA8';
wwv_flow_imp.g_varchar2_table(52) := '3BA9A97B98DFB77898AF9FF4D265F6E18EDD6EA3A707CD3072581FF4E9D50DF563EBE94ABF78310DEF7EB00E9BBE3EE83E7EE0D009ACDDB013E9E9FA0F19F1B95C0697D5BE4D339AB833A6B954767BE0A47902669E4EB7071C0327C5C2ED4C106D98C154';
wwv_flow_imp.g_varchar2_table(53) := '63226A064F7D68438EF6C19D53C8CBB94A43E4920FBDF86B985F1DD37968DDA259439A2CEC813B06F644B3A64DBC2EA659D3C61834A087762E97C165797DB20F3372BDCD5CB707F48484E71D6C36C55D834A1D9F63E09A307427C886D7044400BC46753D';
wwv_flow_imp.g_varchar2_table(54) := 'A3A3A80079B9D7AEEF78FC5FB76E34460CED03BE37AE6C36DFE33443361B3588A1C7879DD1B777B74AEBE33CFD7A7741C338FDC8A1D213FD9C819932DB51C3FB835997AE8E270C1D3432287D5CF66F4C4004E0C67CCAA4AA287F122D33330B6BD76FA77B';
wwv_flow_imp.g_varchar2_table(55) := 'E993C8C9C92B735E200FA4A56761DBCEC3F418EF40A5666CDB71003B767F8BB46B357F8458696555C8C04C0F1C3EA93166D6E59DAAD29383F28ECBB18A09880054CCA6CA29854545F8FEF829AC5A9784EDBB0FE34A5AD99142950BADC109972E5FC596AD';
wwv_flow_imp.g_varchar2_table(56) := 'DF60E3E69DF458EFA2D7259D4DB9808D9B7668E772195E9FE8878CA969199A2031D363C49619FBA11AC38B344B852200358CC41F7EF51006F4EB027B887E922F25E522366FD9832F37EFC19994CB345750FEC8A186D597399D472829E7AF6003D5BB2569';
wwv_flow_imp.g_varchar2_table(57) := '1F2E5DD17F062026260AC3EFBA1D5D3BC7BBCF1D32B01B1E9F32148D1AE987FD7C2E97C16571995CB6FB243F6EA8F46425999831BB4D5B768305C9B33AFE1CC2ADB7B4C39487877A1E96ED6A101001A80634CF53DAB6AA8F198F0CC03F5E9D8AB1F7F643';
wwv_flow_imp.g_varchar2_table(58) := '5454846732AEA65FC3CEDD07B16A6D128ED273F58202FDD3025DE61AEC3869F87B2AF922D6D06CFEF69D0768465F3FFA888BAB8F7B47F7C513D38651E7BF4937A31F1A1A823B07C6E32FBF7F18CF3C391A2D6F6AACB3249D7CE032B96CAE83EBD265F0D1';
wwv_flow_imp.g_varchar2_table(59) := '0EB339428C56AED9865DC48CD979161D11114EF3185D31FDB15118352C014D1AD7F54C96ED6A101001A806B4F24E898D09C7D87BBAE1ADD7A750031D8E9B5A34D265CBCDCBC7A1C3C7B09284803F599799A5FFBC802E7315760A8B1C3846CFF857ADDD8E';
wwv_flow_imp.g_varchar2_table(60) := '3DFB0ED32349FDBD7BCB964D307ECC1D7864D260DC1CDF148AC72C7AE96AEC94D6BB472BFCE9E5B178FED931E8D8A1A52E4B7656B65607D7C575163A4A9E80E832567127333B0FFB0E5C67739818E5E5EBE75058BC460DEF85E98F8FA0C9CC7812D9B02A';
wwv_flow_imp.g_varchar2_table(61) := 'D620D92B2220025011996A1E0F0DB563609F7678ED37E3F0ABE7C6A267F79BA1943CB982C3E1C0891FCE60ED866D48DA7E10D5BDC7CE2B28C2E123A7B16ACD561C3874147979FA4E13DFBE25263D74271E7CA01F5AB78AD3D950996B6C6EB75B9AE2E5E7';
wwv_flow_imp.g_varchar2_table(62) := 'EEC6EF7E39013D123BE84EE1BAB84EAEFB5BB221BF9AA39A4B97D3B175C741AC5D9F8493C484D9B82A62661DE25BE2C17183F1E8E4C1B8B5530BDDA8C5952F18D766B25904C08FD1B8A543633C3BE34EFCF59529183DA227C2C3EBE86A3B7FF132F81E7B';
wwv_flow_imp.g_varchar2_table(63) := 'ED973BC1436B871757D4DCDC7CEC3F7402ABD76EC591A3275048138FAE42F9DEB8F3ADEDF0D8D4E1B8FF6E7AF6DF447F4FEFCA579575FB3671F8E95377E1CFBF9B843B067481CD5ED2640A0B0BF11DD9C0B7376C13DB5659D9ECE30F74ABC21F3CDA92B4';
wwv_flow_imp.g_varchar2_table(64) := '17172E5CD69D121616829EB775C2138F8EC27DA37BA2658BFABA74D9F12D819268FAB65C29CD8340E386D19834B627DEFAF3541A8A0F41C386B11EA9003FD6E2E1FB4A7A7AC057D4BCFCB2F3041999B9D8B5FF2856D1D5F2C489D3DA48C255087F728E3B';
wwv_flow_imp.g_varchar2_table(65) := 'CD938F8EC4C8A10968503FCA95E4B375F3A6317872EA00FCFD4F533172580F848585BACBE62B37DBC4B6EDDA77146CAB3BB178232FBF401BB1AC24E1DA4BB72A995959C529D75731F5A271D7901E34CC1F8D41036E414CDD70C8CBFF044400FCCFD85D43';
wwv_flow_imp.g_varchar2_table(66) := '789D100C1BD4117F7BE5213CF7CC7DE87C4B1B771A6F145027E12BEA17ABB760F7FEEF712D330769573391B4F310D67DB90DC9A753A03A4B9E26D4A91386FE7DBBE2C9C747699D263A5A3FC2E0322B5C789C5F6162C5090D62233065FCEDD0263DEFEF8F';
wwv_flow_imp.g_varchar2_table(67) := 'C888923AD9B6E4E414CDD66D6433DB9E9E910D16852F567FAD8D5878A2CFB3F4D6AD9AE181FB066A9393895D5B91B0E89FA678E6956DDF131001F03DD34A4B541405895D9AE397CF8EC46B3327E1CE41090829F518F1F4E9B358FFE5766CFC6A17CE9FBF';
wwv_flow_imp.g_varchar2_table(68) := 'A42B333A2A92CEB98DAE96A3D0E7F678BAB508D1A57BB553A2235E652F9DA96E7418C68EEE8A7FBE3E0DD31E1E82FAB1FA19F9736433DBBE61E30EB028789E1F12128284AE1DF0E894113441D907EDDA34ACD21C856759C1B66D367B4500021C919B9AC5';
wwv_flow_imp.g_varchar2_table(69) := 'E0F1497DF1E6EB8FE0E17103111B135DA145F563EB61D4885E747F3C0CDD135A233434F0E10BAF63C7F0211DE9D660223DFD1881664DE32AB43F8A84EB8E01099A700D1DD205710DF45F7156E18992E03702816F417E732DB80AAE4B57D47B8677C65B6F';
wwv_flow_imp.g_varchar2_table(70) := '4CC14FA6DF8DC68D4AE60962636330F6FE81787CDA9DB8B5630B1FCD86970C01D40A3EDE5C1582769A1C1CD8A72DDEF8DD04FCEC47F7A271E392C9BB7AB1D1B8FF9E7E98F15F2370FB6DEDAA3762A98A3192D76B0222005EA3322E63AFDB5A22A14B5B77';
wwv_flow_imp.g_varchar2_table(71) := '856D5B3745DBD60DDDFBBED950DCC52850DCDBBED8B8AD5B0B24746EE32EAA5DEBE6886FD7C4BD2F1BE6212002609E588825B59C8019DD1301306354C42621601001110083404B3542C08C044400CC1815B1490818444004C020D0528DB50998D57B1100';
wwv_flow_imp.g_varchar2_table(72) := 'B34646EC1202061010013000B2542104CC4A4004C0AC9111BB8480010444000C802C55589B8099BD1701307374C43621E0670222007E062CC50B0133131001307374C43621E0670222007E062CC55B9B80D9BD1701307B84C43E21E0470222007E842B45';
wwv_flow_imp.g_varchar2_table(73) := '0B01B3131001307B84C43E21E0470222007E842B455B9B4030782F0250C3281D3C72A18625547E7AC99777559ED79B1C393905B8929AEECE7A26E50A32B2F2DDFBBEDEF0B5FD2EFB4E27A7BA36655D4D0222005504A794FAFAACD7FFF6317E3173093627';
wwv_flow_imp.g_varchar2_table(74) := '9D407E81A38AA579975D5114EF3256922BFD5A2E366C3A84D9EFADC4D994926F1AFEEE68329EF9C55CCC5DBC1D172FEBBFAFBF9222BD4A5614DFD8CF951516AA3874F82CDE9FFF25967EFC151F722F8A22CDD90DC3CB0D21E6252857367B48184242EAB8';
wwv_flow_imp.g_varchar2_table(75) := '76B5F5F9F3A978F78375F8F1F31F62C9A7FB9196AEFF992E2D5300FFBB7439135FACD987F73E5C0DFE5D42A7C76F0BB8CC72D0B1F51BF7E3B99717E0ED7F6F46724ABA2BC914EB4C1AA17CBDED7BCCFEF74AACD9B00B6969FA1F3FE598D8ED253F56620A';
wwv_flow_imp.g_varchar2_table(76) := 'A383C00811806A0429A6FE4D888E698290D008DDD9FCD3589F7CB11DCFFEF203AD131D3F15D821EAD994342CFF743BE62D5A8F23474F41F5188B2B74B58C886A005E78DBE508FF3477D2CEEFF0D2EF17E32F6FADC377C7F53FDDE5CA67D4FAFC856B5849';
wwv_flow_imp.g_varchar2_table(77) := 'E2F5EEFBABB063D7611A6515E8AAE618702C622826BA8400EF044BF52200D58C54589D68C4C4360737BCB0F0BA80C73097AFB0DC8966BEBA04BFFEE3C7D8B12719FC9B78A8EECBB3E7565206673D7EF212E62FDE8CFF2CDB8C1F4E9DD79D61B3872032BA';
wwv_flow_imp.g_varchar2_table(78) := '2162E3DA2022B2BEB6F0361FB3519A67E6FD074FE08F6F2CC3CCD73FC5DE032924201E0AE299B1B26D36AAB23C1EE9CCEAC8F7E7351F167EF425BED3C4CBA36E62CDCC63A8D3730C38161EA7CB6615088800540156795979E8195DB731621BB446387528';
wwv_flow_imp.g_varchar2_table(79) := 'C566D7653B957C016FCE5989FF7971213E5F7B189959FA2B982E730D76B8D37C7B2405EFCDDB804F3EDF8A8B97D274A5D9ED6188D2EC6C85F0887A5014C59DAE288A762CB6412B2D0FE77527D2C6F193E7F0BFFFF7195E98B90C5FEFF8A1666246E555F4';
wwv_flow_imp.g_varchar2_table(80) := 'CECD2DC4CE3D27F1EEDC75F862F5F6323E305B661C4BAC9939B3AFA82C39EE1D011100EF38559ACB461D3F9286D4DC38A3A21BA174274ACFC8C2E2655BF0CC0B1FE0BD85DB70F67C46A5657A93A180261EF77E731AFFA24EB36AED4EA4A7EBCB0D090D47';
wwv_flow_imp.g_varchar2_table(81) := '744C53D46BD0127578A482928E5FB67C45CBC379F91C3ED733CFB90B5730EBBD3578F6A54558BBE9280DC78B3C93ABBD9D9A968D755F1EC06C1AE66FD9FA0DB2B373746531CBA8BA8D349165C6CC5A974176AA4DC056ED33E5C47209288A823A11315A87';
wwv_flow_imp.g_varchar2_table(82) := 'AB5BAF3942C32275F98A8A1CF872F3377871E642BCF6CFD5D87FE85CB586D67CB54CDA711C73DE5B8D8D9BF722AB54A7E17AEBF22D4A6C0B84D58942555F7C4E0C9D5B97CAE0B2E0F1BA9A9E890F176DC44F5E988F152B0F2033BBEA8F10552770F287CB';
wwv_flow_imp.g_varchar2_table(83) := '58B2621BE6CE5F8B03874EC0416C3CAAD1D8314316A43AE13150941B8997E79981DD0EA6DA6DC1646CB0D91A1A07C1B33800000A70494441541681BAF59A9118B4C2F506ACC77DE8F029FCE5CD4FF1D35FFF07EB361F455E7EE557D48CCC7C6CDCF22DE6';
wwv_flow_imp.g_varchar2_table(84) := 'BCBF1ADB761CA4AB70810E0BDF0FC7D0BD31D71B1A1AA14BABCE0E97C16571992C0A9E6564E7E461D9274978F6C50558B86C3752D3733D93CBDD2E2828C23E1EB17CB80E2B3EFB1AC9672EE8F2298A0D7522EAA11EDD8E70BDCC509741767C4A40DF227D';
wwv_flow_imp.g_varchar2_table(85) := '5AB414E62260B787D2BD7523C4C6B506CFBADB6C21F07C5DB9928E0F166EA4C788F3B070F96E5C4ECDF64C06E8CA979A968355EBBFC1BF3E588DBDFB8EA2A8C8432C289D0526963A0DCF88FBE3DE98CBE4DB827A54C7F55B09B85FF9050558B976377EFA';
wwv_flow_imp.g_varchar2_table(86) := 'CB0FF1EEBCAD387731D39DA66D907DFC19848D5BBEC3AC7FADA211D05E64D02D919656FC9F8D984446C5698CA2689292991527C9CA8F044400FC08B774D10A5DDD78E69D85A0BC8E9A97974F8FBCA823BD340FDB777FEF3EFDC89153344C5E836FBF3D09';
wwv_flow_imp.g_varchar2_table(87) := 'D5E9741FE7F2C223EA813B3EDF23DB4868DC897EDAE08EA94D26929871DD6C83AB2A7EFAB1F9EB8378FE370BB06DD711D7617A04791AFFD684EB080A3D858B725C1796266026E191B15088111D96B7410444000C025DBA1AD7509DEFB3B5A1355D253DF3';
wwv_flow_imp.g_varchar2_table(88) := '6466968C027249183CD3149A70D48484AEC6DAE33BBA7A7AA61BB16DA33AB96E161FB6A574C7CDCA2AB91DC8CD2DF5C128F255F39FE61862E87685B78DB0D9883A82AD0E118000478C67DA7968CD1DA9B22BE0F54E47C3647A0CC6B7120A094180CD07DB';
wwv_flow_imp.g_varchar2_table(89) := 'C0B6C4C6B54164741C6C240C15D9A42836B08FECAB36020A0DAF28AB1C378880088041A02BAB863BCEF57B60EE480D61F318CEDBED61C57308FC0C9F87C94A65C5199EAE28FC5982581ACAB7D26CB579D8CFDBDA68814582EEF3D957C30D940ACB252002';
wwv_flow_imp.g_varchar2_table(90) := '502E96C01D5414EE48D7EFEB7964C033E1F5B467F8316494F93A3E1955EAADA06442B2A9F61484AFF8D7E70B82C1FE52EED4F25D5B2DF72FA8DDE3B981D2CFE083C9A160B7BFAAAC8331BF3102A0C03F7F271B8CC4C56621E00D812245FF010F6FCEA946';
wwv_flow_imp.g_varchar2_table(91) := '1E6304A0501101A84670E414EB12506CC65C340D1100A39CB16E7311CF6B1D015B9E21174D430400063953EB1A81381434047C6D68485198C7473D7D5D7A497986088051CE94B8255B4220B8092836636E9B8D1180025BC9C7C2823B2E62BD103084803D';
wwv_flow_imp.g_varchar2_table(92) := 'AF164D0266B729CC31849A5422046A0901A3FA8C21238025331FE4471A55FFA3F15A124C71A37613F08377F9C57DC60F45EB8B3444008AABBC50BC9695101002372660585F314C00140586397563B6922A044C4FE09451161A2600AAAA8A00181555A927';
wwv_flow_imp.g_varchar2_table(93) := 'B8091878B1344C00A02A25DF1011DCE111EB85809B805F369CA87D230028CA7EC84B080881CA0918D8570C1B01A84EA70840E5A1971C4280BFF6CDB0BE629800746C7E88BFE4CE29F1150242E08604728AFBCA0D33F92AD1300198397326757EE598AF0C';
wwv_flow_imp.g_varchar2_table(94) := '97728440A009F8A37E7A5A76F07A5FF147E965CB344C00B4AA15D5B0A18D569FFC2704828D800A43FB88A102A038954D909710100215135095DA2B0070A89F93E72A2DF2160242A02C01D5116AFFB4EC61FF1D317404B0E05FE3CE52EF3FE03F77A46421';
wwv_flow_imp.g_varchar2_table(95) := '600C017FD4C27D63F15BF79FF347D9159569A800B0118A8AD5BC96450808013D8140F40DC305C0A6384500F471973D21A011506CF81806BF0C17804867DA56F2F1342DF2160242A08440724A9306BB4B768DD9325C00E6CC995E48AECDA545DE42202809';
wwv_flow_imp.g_varchar2_table(96) := 'F8C9E8F737CD1C62C8F7007ADA6FB8006895DBF13EAD69CE83FE97B71010024576A7E3BD40600888002CFCBF717C0BB036100E4B9D42C07C04D42FE6CD7930391076054400D8511B9CAFF15A162160750236A87F0F14838009C0FC5913F853816B02E5B8';
wwv_flow_imp.g_varchar2_table(97) := 'D42B04AA43C00FE7AC29EE0B7E28BAF2220326006C9A4D555EE0B52C42C0AA0414A7FD1781F43DA002307FF6D86F00F593400290BA8540E008A89F2C9833E660E0EA07022A00ECB8CDE67C8ED659B4C85B08588780826C87D3FEF3403B1C700198FFF683';
wwv_flow_imp.g_varchar2_table(98) := 'C715052F071A84D42F042A23E0CB74C5A93CF79F390F9CF06599D5292BE002C046175C71BC09055FF3B62C42C00204B62E983D769619FC3485002C59F2A0C3A6381E2320722B4010E45D8B0968437FDB2366F1D01402C030F8564085FA286D3B6991B710';
wwv_flow_imp.g_varchar2_table(99) := 'A88D049C8A8AA96618FABBE09A4600D8A045B3C62F2311F8156FCB2204CC44C017B6D05CD7CF17CC1AB7C21765F9AA0C5309003B4522F01A54F0DF0AF0AE2C42A0961050FEB1E09D7101FBC45F45104D27006C68B47A653AADD7D1226F2110F4045460C5';
wwv_flow_imp.g_varchar2_table(100) := 'CD4D0FFCCC8C8E985200F84F86A39D6163A0A8CBCD084D6C1202DE13503FA9EB0C9B3273267F2DBEF7671995D39402C0CECF99736FCEC277C68D878A57785F1621102802D5AD5755F0EAC259E31EE0B65CDD32FC7D9E6905E0BAE38ABA70F6B897A12AFC';
wwv_flow_imp.g_varchar2_table(101) := 'D8C471FD98FC2F044C4FA00050A62C7A67DC4BB45661E297CDC4B6B94D5B387BEC874EA7DA1F508E425E42C0D404D4834E55EDBF70D6D805A636B3D8B8A01000B675F19CF13BC2F2AE25D2F6EF68E1AF15A395BC85806908709BFC43B433B5C7E2D9E30D';
wwv_flow_imp.g_varchar2_table(102) := 'FF6EBFEA52081A016007E7CE7D2C6FE1AC71331D0EA50B147CC6C7641102FE24E045D92A8DF197DA6C8E5BA96DFE8627B0BD38C73459824A005CD4FEF3EED8EF6982F03E051840C7F85B8669256F21602C0115CA2627D41E8B668D9BC09F6435B676DFD4';
wwv_flow_imp.g_varchar2_table(103) := '169402E0727DC1AC715B497507280AFAD2B179B4E4D3226F21E04F02DCC616F0C567D1ACB14316CF1ABFCF9F95F9BBECA01600179C05EF8CDB4E42304D7586DD444F0CF81B5602FE67962EDB645D6B089CA44EFF02B7316A6B53F8E2531B3CAB1502E00A';
wwv_flow_imp.g_varchar2_table(104) := 'C4A239F75EA127067FA100C503EA480AD8DB94768616790B812A13A013B8EDBCA3AACA706A53EDA9D3FF99DB181DAF35EF5A25009E5159386BFC9A05B3C6FD8802D7CAA62A893469C85F3AF215ADB33DF3C9B610701350C06DE32BDAFF0D6CB6EEDC7668';
wwv_flow_imp.g_varchar2_table(105) := '797AD1ECB1B5F663E9B556002888EE377FF7204D1ABE42C11C44EB681281F674AB304E5194DF83BF935055F75366437F9595EA9377E0089C831673F513AD0DA8CA3887D316CF6D436B23B3C6FD61E1DB0F709B089C8506D56C090128CD92027D926E1596';
wwv_flow_imp.g_varchar2_table(106) := '2F7867EC6F17CE1A3F66E1ECF1ACF62D28F84A5C684478589EAD7EA1CDD1CC69B3B7B28784B6A3C672B3A23A3AAB8A9A6073A207145B4F59CCC78063C331E25841556FE6D8710C39961C538E2DC7989616D7633E7E8CD606668F5DFE1F137C3D57E9766A';
wwv_flow_imp.g_varchar2_table(107) := 'C4BE2505E04660DF7C7374FEDCB90FA42F79FBC10B8BDF1E7366DE5BF7FD408DE5D882D90F7EBBE89DF107E6CF19B777E13B0FEC91C57C0C38361C238E15C78C63C7315C42B1E498726C6F147BCF34AB6C8B005825D2E2A71028878008403950E49010B0';
wwv_flow_imp.g_varchar2_table(108) := '0A011100AB445AFC1402E510100128078A1CB236012B792F0260A5688BAF42A0140111805240645708588980088095A22DBE0A81520444004A01915D6B13B09AF72200568BB8F82B043C08880078C0904D216035022200568BB8F82B043C08880078C090';
wwv_flow_imp.g_varchar2_table(109) := '4D6B13B0A2F72200568CBAF82C048A0988001483909510B0220111002B465D7C1602C50444008A41C8CADA04ACEABD088055232F7E0B012220024010E42D04AC4A4004C0AA9117BF85001110012008F2B636012B7B2F0260E5E88BEF9627200260F92620';
wwv_flow_imp.g_varchar2_table(110) := '00AC4C4004C0CAD117DF2D4F4004C0F24DC0DA00ACEEFDFF030000FFFF78DE3A31000000064944415403001DEFABE2B55895C70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14007023194273803153)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000029C494441547801EC934B6813511486FF499A6612FA4ADB546A93589256F33089A90191D207B5A00B170A42417429B872E1C68D0BC1952E15C4850BC555858A8A';
wwv_flow_imp.g_varchar2_table(2) := '645111952660D488554C532BB560D536164DD3643293C9C3B9135A08B433992C2C4A06CE7D9CC79CEF9E7B8FEAE4D989E2768A0ADBFCD5006A15A855A0EA0AE47359F0D904782E01B2AEB69B150370EC1AB41A068E5E034687DC181D76C32EACB5750CB2';
wwv_flow_imp.g_varchar2_table(3) := '5C4A318762804E631D9A1B693111054A9C510474BA3A34E9F3A5BD825131409FD78A8BE70FE3D0502F167F2C211A9BC72E4B2B8E1FF5C366ED5490BAE4AA18A01406387A8C3832E2429FD7067397615DAD78AE1A4071A62D02FE1D00F2C2A9FC2AA63F2E';
wwv_flow_imp.g_varchar2_table(4) := '62E2F1345693ECC699188647283C87A5F81A8AB984A26E90AD00C72641D767E0F398303CE0C15E8715595E8D6BB75EE041E02DC26FE6F02C18459BA1051E971523835EF8DC5DA0855625B11B945B2C64013CCE36789C5D6019167CAED466A974067A1D0D';
wwv_flow_imp.g_varchar2_table(5) := '9AD6C16537A1A981464AB0931CC487F85ACCED3077EA894A526401CC3BDB71EAC47E9C1EF3A358E01079174387B14138A91DB6EE0EB132E7CE0CA2DF6F4674765EB88615F87CDDE83FD003637B936472629405204E445A5B74183BB64F68B936584CAD44';
wwv_flow_imp.g_varchar2_table(6) := '5526CE3D3BE07698307070371A1BB46536A98D4ACAF8376CB200EB77BB190CCBF248A7B39B99441DCBF1E22C35C802845EC771E9EA2482E105F07CE9112EFF4C22F0E403269FCFE0E69D106EDC0E62E1EB6F314F2E5710DEC2778CDF8FE0D31746D4490D';
wwv_flow_imp.g_varchar2_table(7) := 'B2006AB506BF9214C61FCDE2C2E500DE47BFE1616006CB2B4568E91651629F33B8727D0A4FA762B87BEF155E46E260380DD442AC5472629305204E44284A855C81865A6380A65E475465427445AA19A0F4A0045F54F8550C50E1FF14BBD5006A15F8FF2B';
wwv_flow_imp.g_varchar2_table(8) := '20D7167F000000FFFF2A3E09DE0000000649444154030033D31610DA1C12FB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14007022221889803151)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD07601BC7993EFC670110EC55144935525D944415AAF76EC9BD24769C38EDD2BEB44B6F17E7D2934BBDB4FF5D2EB9BBF8521C27EE8E9B6C';
wwv_flow_imp.g_varchar2_table(2) := 'D9EABD5154EF12453516B1F702E09B17B26C4966010675B10F4DCA24B03B3BEF6F7631EFCEEC02B6873EF1B4873F34E03EC07D80FB00F701EE03D6DA076CE017052840010A508002161300980058AEC91930052840010A50800900F7010A50800214A080';
wwv_flow_imp.g_varchar2_table(3) := 'E50424608E0088027F2840010A5080021613600260B10667B814A0000528607581ABF13301B8EAC07F2940010A5080029612600260A9E666B014A00005286075816BF13301B826C1FF53800214A000052C24C004C0428DCD502940010A50C0EA026FC5CF';
wwv_flow_imp.g_varchar2_table(4) := '04E02D0BFE46010A50800214B08C001300CB343503A50005284001AB0B5C1F3F1380EB35F83B052840010A50C022024C002CD2D00C930214A00005AC2E7063FC4C006EF4E05F14A000052840014B083001B0443333480A50800214B0BAC0CDF13301B859';
wwv_flow_imp.g_varchar2_table(5) := '847F53800214A000052C20C004C0028DCC102940010A50C0EA026F8F9F09C0DB4DF808052840010A5020E6059800C47C1333400A50800214B0BA404FF13301E849858F51800214A00005625C8009408C3730C3A30005284001AB0BF41C3F13809E5DF828';
wwv_flow_imp.g_varchar2_table(6) := '052840010A5020A6059800C474F332380A50800214B0BA406FF13301E84D868F53800214A0000562588009400C372E43A30005284001AB0BF41E3F1380DE6DF80C052840010A502066059800C46CD332300A50800214B0BA405FF13301E84B87CF518002';
wwv_flow_imp.g_varchar2_table(7) := '14A0000562548009408C362CC3A20005284001AB0BF41D3F1380BE7DF82C052840010A502026059800C464B332280A50800214B0BA407FF13301E84F88CF53800214A0000562508009400C362A43A20005284001AB0BF41F3F1380FE8DB804052840010A';
wwv_flow_imp.g_varchar2_table(8) := '5020E6049800C45C9332200A50800214B0BA802FF13301F04589CB50800214A00005624C8009408C3528C3A10005284001AB0BF8163F1300DF9CB814052840010A5020A6049800C4547332180A50800214B0BA80AFF13301F0558ACB51800214A0000562';
wwv_flow_imp.g_varchar2_table(9) := '488009400C352643A10005284001AB0BF81E3F1300DFADB824052840010A502066049800C44C5332100A50800214B0BA803FF13301F0478BCB52800214A0000562448009408C3424C3A00005284001AB0BF8173F1300FFBCB834052840010A5020260498';
wwv_flow_imp.g_varchar2_table(10) := '00C4443332080A50800214B0BA80BFF13301F0578CCB53800214A0000562408009400C342243A00005284001AB0BF81F3F1300FFCDB806052840010A50C0F4024C004CDF840C800214A00005AC2EA0133F13001D35AE43010A5080021430B90013009337';
wwv_flow_imp.g_varchar2_table(11) := '20AB4F010A5080025617D08B9F09809E1BD7A200052840010A985A800980A99B8F95A70005284001AB0BE8C6CF0440578EEB51800214A000054C2CC004C0C48DC7AA53800214A080D505F4E36702A06FC7352940010A508002A615600260DAA663C52940';
wwv_flow_imp.g_varchar2_table(12) := '010A50C0EA0281C4CF0420103DAE4B010A5080021430A900130093361CAB4D010A5080025617082C7E260081F9716D0A50800214A0802905980098B2D958690A50800214B0BA40A0F13301085490EB53800214A000054C28C004C0848DC62A53800214A0';
wwv_flow_imp.g_varchar2_table(13) := '80D505028F9F0940E0862C810214A0000528603A012600A66B3256980214A00005AC2E108CF899000443916550800214A000054C26C004C0640DC6EA52800214A080D50582133F1380E038B2140A50800214A080A904980098AAB958590A50800214B0BA';
wwv_flow_imp.g_varchar2_table(14) := '40B0E26702102C499643010A508002143091001300133516AB4A010A5080025617085EFC4C008267C9922840010A508002A6116002609AA662452940010A50C0EA02C18C9F094030355916052840010A50C024024C004CD250AC26052840010A585D20B8';
wwv_flow_imp.g_varchar2_table(15) := 'F1330108AE274BA300052840010A9842800980299A8995A40005284001AB0B043B7E2600C116657914A0000528400113083001304123B18A14A0000528607581E0C7CF0420F8A62C910214A000052810F5024C00A2BE8958410A50800214B0BA4028E267';
wwv_flow_imp.g_varchar2_table(16) := '02100A559649010A50800214887201260051DE40AC1E052840010A585D2034F13301088D2B4BA500052840010A44B5001380A86E1E568E0214A00005AC2E10AAF89900844A96E552800214A00005A25880094014370EAB46010A5080025617085DFC4C00';
wwv_flow_imp.g_varchar2_table(17) := '4267CB922940010A508002512BC004206A9B8615A30005284001AB0B84327E2600A1D465D914A000052840812815600210A50DC36A51800214A080D505421B3F1380D0FAB2740A50800214A040540A300188CA6661A52840010A50C0EA02A18E9F0940A8';
wwv_flow_imp.g_varchar2_table(18) := '85593E052840010A50200A0598004461A3B04A14A0000528607581D0C7CF0420F4C6DC02052840010A5020EA049800445D93B04214A000052860758170C4CF04201CCADC06052840010A5020CA049800445983B03A14A0000528607581F0C4CF04203CCE';
wwv_flow_imp.g_varchar2_table(19) := 'DC0A052840010A5020AA049800445573B03214A000052860758170C5CF04205CD2DC0E052840010A50208A049800445163B02A14A0000528607581F0C5CF04207CD6DC12052840010A50206A049800444D53B02214A000052860758170C6CF04209CDADC';
wwv_flow_imp.g_varchar2_table(20) := '16052840010A50204A049800444943B01A14A0000528607581F0C6CF0420BCDEDC1A052840010A50202A049800444533B01214A000052860758170C7CF0420DCE2DC1E052840010A50200A049800444123B00A14A0000528607581F0C7CF0420FCE6DC22';
wwv_flow_imp.g_varchar2_table(21) := '052840010A5020E2024C0022DE04AC00052840010A585D2012F1330188843AB749010A5080021488B0001380083700374F010A5080025617884CFC4C0022E3CEAD52800214A00005222AC00420A2FCDC38052840010A585D2052F1330188943CB74B010A';
wwv_flow_imp.g_varchar2_table(22) := '5080021488A000138008E273D314A0000528607581C8C5CF042072F6DC32052840010A502062024C002246CF0D53800214A080D50522193F138048EA73DB14A000052840810809300188103C374B010A5080025617886CFC4C0022EBCFAD53800214A000';
wwv_flow_imp.g_varchar2_table(23) := '052222C0042022ECDC28052840010A585D20D2F1330188740B70FB14A000052840810808300188003A374981C80B78E076BBE0513F8027F2D5610D28603981C807CC0420F26DC01A5020AC02DDDD1D6869AE4153C365343556A055FD2E8F85B512DC1805';
wwv_flow_imp.g_varchar2_table(24) := '281071012600116F02568002A11770BBBBD1D1DEA83AFD4B68ACBB808EB606B85422D0DDD58E76F57B63FD45EF731DED4DDE9181D0D7885BA080B505A2217A2600D1D00AAC03054224201DBF74F04D0D15EAACFF0ABA3ADB7ADE92C7E37DAEA5B91ACD6A';
wwv_flow_imp.g_varchar2_table(25) := '54A0A3AD512502DD3D2FCB47294081981060021013CDC8202870A380ABBB132D4DD568A83DAF86F8AF78CFF6A13AF91B97EAE12FB58C8C0A482220EBB63455A9753B7B58900F518002FA02D1B1261380E86807D68202010BB8DD2E35CCDF84C67A35CCAF';
wwv_flow_imp.g_varchar2_table(26) := '86F43BD490BFC7E3D62E57D6ED5053028DAA2C29B3B3A319572F1AD42E922B5280025124C004208A1A8355A1808E80B7A35643F632742F67ECDD5D6D90C774CAEA691D294BCA6C6EAC4493FA91E90179ACA765F9180528D0BF40B42CC104205A5A82F5A0';
wwv_flow_imp.g_varchar2_table(27) := '809F02DDDD7235FF15D4D79C53F3FBD590A17B3F8BF07B714904647AC0BB4D35C52075F0BB10AE40010A4485001380A86806568202BE09C8997757672B9AD5DC7C931AEA97ABF9E531DFD60EDE52B2CD0E35C5207590BA7476B480D303C1F36549B12C10';
wwv_flow_imp.g_varchar2_table(28) := '3DB13101889EB6604D28D0AB80C7E341A79A83F7DEBBDF70199D6A6EDE13C0FC7E525202264C188911C387203EDED9EB76FB7B42EA2075696EAC50D30315903A7A545DFB5B8FCF5380029117600210F936600D28D0AB800CB1B734CB307F199AD5FC7B20';
wwv_flow_imp.g_varchar2_table(29) := 'C3FC369B819C9C6CCC9C5E84A58B6662DCE8024C9D3C16CB17CFF23E26CFC932BD56A69F27A46E52C7FA9A323525710552F77E56E1D314B09C403405CC04209A5A8375A18057C0E39DCF97CEB4B9A1C2FBA63D9E00CEF66D76BBEAF80762F68CC9983373';
wwv_flow_imp.g_varchar2_table(30) := '22F287E620213E0E36C3F0FE24263ABD8FCD9B3511B3D4328306E5C1667740F74BEA2A53135277991E90C4806F37ACABC9F528103A012600A1B365C914F053E0EA307FA39ADB6FACBFE81D4E77BBF5DF8CC7E17060E4C87CAC58320B0BE74EC2E0410310';
wwv_flow_imp.g_varchar2_table(31) := 'E7B0F75A27BB4A1486A865E6CD9A8095CB6661945A571EEB75857E9E90BACBF480C42231C9F40013817ED0F8748C0B4457784C00A2AB3D581B0B0AC850796B4B2DEA6BCF073CCC6FD80C0C18908569532760D58AB9289E341AA929897EAB26272560AA5A';
wwv_flow_imp.g_varchar2_table(32) := 'F7D65BE661CAE4F1C8CACA04D4880134BF64144046342446895562D62C8AAB51800241126002102448164301FF043CDE39F2D6961AD5E957A0BDB50E6E57977F455CB7B4DD6E435EDE40CC9C5684796A287F44419E7798FFBA45B47E95A982D12306A932';
wwv_flow_imp.g_varchar2_table(33) := '8B54D913919B9B0D87DA9656616A258951626D6EAC80C47E3511E0A7112A1A7E5B4020DA426402106D2DC2FAC4B8C0B561FECBDE0FE5696FAD571DBFFE30BFCD66C7F0E1F958B46026E6CF9E84614306C2E98C0BBA617C7C9CF73A8105732663A1DA567E';
wwv_flow_imp.g_varchar2_table(34) := 'FE50C81483EE86DCAE6E95F4D47B0D1AEB2F7BA73B383DA0ABC9F528A027C00440CF8D6B51C02F0139F36D5367F9F5B5E5EA8CBF12F2863A7E1570D3C2E9E9699832691C6E5B3907D3A78C465646F24D4B84EE4FD9D6CCE2B158B57C3626178D85D42590';
wwv_flow_imp.g_varchar2_table(35) := 'AD89855C2CD8507BC19B14885520E5715D0A44A740F4D58A0940F4B5096B1443022E35AC2F43DD8D0D97D0A6E6F9DDEACC573B3C35079F337000A6174FC4A27953317AE41035CC1FAF5D5CA02B2624C463CCA8A158347F2A664C2F427676166C76CD9714';
wwv_flow_imp.g_varchar2_table(36) := '8F072E57A7775A40AC5AD5D4884BD9055A47AE4F010AF42EA079B4F65E209FA10005AE0EF337A94EBFA1EEFC1B67B5FAC3FC4E471C060F1E84B9B3A761CEAC49189E9FAB86F91D51C3EC8C73A060680EE6ABE98139B3A661C8E0C1888BD37F7321B74A92';
wwv_flow_imp.g_varchar2_table(37) := 'DAD5D488D88921EF1E889AA66645021088C65599004463ABB04EA61490A16BF9A09C4635A72D43DA5D9D6D6A5A5BF3023775B6EF743A316ECC282C5B3A1373678EC7E0DC74C4396C516B2317070ECA49C39C998558B6783AC68C198938A77E2200352A20';
wwv_flow_imp.g_varchar2_table(38) := '8662D9D470D9FB4987726B61D402B06214309940F4BE9A980C92D5B5AE80DBEDF20EEF37D45F847C508ECC694BE7A52B929D9581E953C7E3F695735134A100724B9E6E59915A2F25391193270CC7CAE57320531603544C8661E855E78D44403EE9B0A1EE';
wwv_flow_imp.g_varchar2_table(39) := '82D75ACCF50AE35A14888440746E93094074B60B6B15E5021ED5297576B4A0A9A102F5B5E7D0D65A078F4A0474AB1DE770202F4F86F98B31570DA50FCFCF83DD6ED72D2E6AD64B703ABC5316F3544CF3E71443DE65D0A162D5ADA0188BB5988B7D674733';
wwv_flow_imp.g_varchar2_table(40) := 'A42D74CBE37A14B0B20013002BB73E63F75B403A1BE974E43E763923EDEA6CD11FE6575BB73B9C28183E0C0BE61563FEEC420CCECB84CCA9ABA762EA5B62CACDC9C0BC59E3B160EE540C2F180A7B008980EAF521F62D4DD5686EBCECBD8D50DA26A6D018';
wwv_flow_imp.g_varchar2_table(41) := '4CCC08446B204C00A2B56558AFA81270ABB3FB6B679ECD8D95AAF369557D905BBB8E6969A99832693C6E5D310733A68C415666AA2A4B73885CAD699E6F0303B2D2307DEA5815FB5C4C9E54A8A63812B5ABEFF1B8555BB4A924A0120DB5E5018FC4685784';
wwv_flow_imp.g_varchar2_table(42) := '2B52C084023613D69955A64058043C6A98BFABB31572115A43DD79EFDCB30C41EB6E5C86BE9A67050A000010004944415473730762CECCA958A8CEF8478F1C8484F8E8B99A5F372EDDF512E2E33066E4602C59340333A64D469EB21123DDF2DCEE6E6F1B';
wwv_flow_imp.g_varchar2_table(43) := 'D5ABB66A69AAF226061ED586BAE5713D0A0447207A4B610210BD6DC39A4548403A0DE9F8A51391ABCFE5036D02E9F86D361B860CCEC3EC9993316FF644F57B96A53BFE9B9B5512818261D99837A70833671461F09041B0DBF55F9AA4AD3ADA9BD0D47009';
wwv_flow_imp.g_varchar2_table(44) := 'D286D296D2A6376F977F53C0EA02FA4799D5E5187FCC0978CF205BEBD05057AE3A8FABF3CA810499109F80098563201FA83367E604E4E564C066F090EBCDD48081C1B959983B633C562E9F8BF1E346235E19F6B6BC2F8FCBF51A4D0D97BD6D2A5338D2C6';
wwv_flow_imp.g_varchar2_table(45) := 'BEACC76528102C81682E87AF46D1DC3AAC5B58043C6A98B8ADA556751217BC43C8F24634BA1B3654072FC3FC33A71761C5D299AA131B86C48400EE85D7AD88C9D74B4A8C57C9533E562D9F85E2A91331303B1B86B2D50D4BDAF4FA369636D72D8BEB5120';
wwv_flow_imp.g_varchar2_table(46) := '56049800C44A4B320E4D010FE4A23E393B94A163CD42D490B51D79B939908E7FD6F409DE0FCE910FD0D12D8FEB5D15888B736064412EE6CC9A88D933262327273BA00F21923696B66E6EAC501BD07C9326B526BF29E09B40742FC50420BADB87B50BA180';
wwv_flow_imp.g_varchar2_table(47) := '9C05B63455436E27D3DD4C7C7C22468E28C09285B3305FCD610F1B920D679C5DB738AED78B80980E199C8505732761E18259183EBC0071CE845E96EEFF61B92E40DABEFF25B904056257800940ECB62D23EB4740DEBAB74BDEAEB79FE57A7ADAE1B0A370';
wwv_flow_imp.g_varchar2_table(48) := '6C3E562E9B86E2C9A390919ED8D3627C2CC802729D40567A02A64F1985DB57CE40D1C41188D34CB8BABB3B21496090ABC8E228F0A640B4FFC20420DA5B88F50B9980C7E3561D80DEBDFC2EB59AC770C2EDE1D97EC81AA89F823DCABEABCB0E97DBE867C9';
wwv_flow_imp.g_varchar2_table(49) := '9E9F360CBDF57A2E8D8F52C07C024C00CCD766AC711408C85CF28913A7B1BBE420CA2F54A2B3AB2B0A6A658D2A747676E2BC32DFB6A314274E9E865CE0678DC819A5B904A2BFB64C00A2BF8D58C32815F0783CA8AAAAC3EEBD87F1EAEB3B71E8E859B4B6';
wwv_flow_imp.g_varchar2_table(50) := 'B6ABDAF2E2328510E46F0F9A5B5A71E8C819AC59BF1BBB94F9959A06358243EB2043B3380B093001B0506333D4D009C859E9F11367F1FA869DD8B6EB302E555C4157B72B741BB448C9DD2E172AAB6AB175E741BCBE7E178E9F2C43477B8745A267986616';
wwv_flow_imp.g_varchar2_table(51) := '3043DD990098A1955847D3087475B970F9721576EC3E84ED3B0EA0ACFCB24A04383DE06F03B67774AAA9950A6CDF7548591E44854AA85C2EB7BFC570790A50A00F0126007DE0F0290AE80A78DC6E54D7D461EFBEA3787DDD6E1C3D710E6D3C73ED97B3B5';
wwv_flow_imp.g_varchar2_table(52) := 'AD03478E9761DDA63D6A6AE5889A62A941374752FA75E302D126608EFA300130473BB19611109037F29933733C16CE9B84B4B414ED1AB4B6B5E3C8D1D358F3DA366C57230332A4AD5D580CAEE852C9D2E5CA5A357572106BD66EC7D16367D0E6BD96422F';
wwv_flow_imp.g_varchar2_table(53) := 'D8A4A404144D1C8DC2B1C3E108E03305F4B6CEB528601E012600E6692BD634CC02B903D371CBD289F8F07BE7E28B9FBA1DCB964C4756663AA079FB58B7DB834B97AABC43DA5BD4F4C0B9F3D5E8E8B0EEF4407B67979A22A9C4A6ADFBB173CF413575520D';
wwv_flow_imp.g_varchar2_table(54) := 'ED617ED526A9A9A9289E3A1EF7DE351F2B961461DAD411484F4B06BF28106E01B36C8F0980595A8AF50CBB4052621C7206A620CE61C3E81159F8F07B66E25FBF7C0F1EBC6F11F272B3B5EB2343DA959557B0A7E420366F2BC5C9D317D5F440A77679665B';
wwv_flow_imp.g_varchar2_table(55) := 'B1ADBD13C74F9DC7E62D256A8AE4306A6BEBE00A60983F2323438DD24CC5BBEF5F88658B0A3128370D76BB81D49404389D0EB3F1B0BE14089B001380B05173436614484EBCB103C9C94EC25DABC6E327DF7E07BEF2D97B31A9680C6CB61B97F127CE86C6';
wwv_flow_imp.g_varchar2_table(56) := '261C38741CAFA8E9819DBB0FA3A6B6011EF59F3F6598615989E94A4DBD9A0239AC62DD8E43874FA2B1A945BBEA76BB03A346E5E39DF72EC687DFB714B3A60F475A6AFC0DE5C5C7EBB7CB0D05F10F0AF825609E85990098A7AD58D3080818307ADCAA5DCD';
wwv_flow_imp.g_varchar2_table(57) := '2D4F999887AF7C7A197EF8AF0F60D58AE9C81E9009DD2FB79A07BF70A9D23B22B065FB019C2DAF447B0C4C0FB4B577E14C598577987FAB9AF6B8A46274BBF56F8F4C4B4F5343FB8578FF7B96E19EDBA661787E168C5E5FC5F81E01BAFB23D7B38640AF87';
wwv_flow_imp.g_varchar2_table(58) := '8E35C2679414084CC06633306C483A1E7AE70C7CFD8B77E281FB166278C120ED425D2E97F7CAF77DA587B165C73E9C52D303ADAD1D6A4CC05C9D595B5B278E1C2FC7966DFBB06FFF115CB9528BEEEE6E6D979C9C2C2C98578C77DDB7008B1714624056B2';
wwv_flow_imp.g_varchar2_table(59) := 'EAF87B4ECEB437C215291004013315C104C04CADC5BA46AD805D2502B9D9C9B8E7D689F8F2A757E1A31FBC15E3C78D8033FEC661695F03F0A8FEBEA1BE19FBD5F4C0ABEB76625FE949D43536ABD5D513EADF68FDAEAD6B52F3FA6A4A63ED0E1C3D764A0D';
wwv_flow_imp.g_varchar2_table(60) := 'F34B9DF56A1BE77462C890C158B9622EDE71F75CCC9E311CE969F190A44BAF44AE45010A5C2FC004E07A0DFE4E81200864A42760C9BCE1F8C61757E16B9FBD0B33A61722CEA1FFA141F25EF767CF5DC0FA0D7BB061CB41945FAA4167A7FED9741042BCA1';
wwv_flow_imp.g_varchar2_table(61) := '0879C7C3B2F26A55B703D8B8652FCACA2F06F4FEFC76BB1D63460F579DFE7CBCFB9DB33169421E92939C376C937F50203A05CC552B2600E66A2FD6D66402E34667E3F3FFDF12FCFC07EFC7BBEF5F8CBC1CFDBB073C1E376A6AAE60CF1ED5D16E2DC18953';
wwv_flow_imp.g_varchar2_table(62) := '17D0DCD21E91E9011987686A6EC7F19317B071EB5E94941EF2D64DAE65D06D22B99A7FD18269F8881A3DB9FBF6620C1D9CA15B14D7A300057C106002E0031217A140A00203321370C72DE3F1DDAFDF838F7E602526158D5243D97A57A97BD4FC40A39A0E';
wwv_flow_imp.g_varchar2_table(63) := '3878F8843AEB2EC1FE83A751DFD01CA644C0E3DDD68143A7B161D31E1C3A72020D6AAA42EAA4632477508C183E04AB6E998DF73DB80833A7152035C5A95314D7A140C405CC56012600666B31D6D7B40272C95A72521C96CC1F894F7F64313EFBC9DBD5BC';
wwv_flow_imp.g_varchar2_table(64) := 'F604A4A5266BC7D4D1DE8ED367CAB16EE31E75267E08E72FD6A2DB25E7E7DA45F6B862B7CB8DF28B3558BFE580775BA74E9F436797FE7B17C8BBF58D1D3B0277DF310F77AC9A8EA2F183111F6FEF71DB7C900214088D001380D0B8B2540AF42990A2E6B4';
wwv_flow_imp.g_varchar2_table(65) := '674C1E8CCF7C6C11BEF2D9BBB162D94C646666F6B94E5F4F7A647AE04A3576EF2DC56BEB77E1E88972353D10F8DD038D6A985FA61AD66DD8833D7BF7A3B6A606B2ADBEEAD2D773A9A96998563CD17BFFFE5DB74EC5A81103D8F1F705C6E74C2460BEAADA';
wwv_flow_imp.g_varchar2_table(66) := 'CC5765D69802B12530223F1DFFF4E074FCF43BEFC03FBD770572737360187A87A69A1D406B4B0B8E1C3D852DDB4B71F048991AB26F519DB6EFA3026E954CD437B678D7DDB67D3F64AAA1A9B95995A1E72EB1646767E396E5B3F1C1871663E9C2B1903754';
wwv_flow_imp.g_varchar2_table(67) := 'D22B8D6B518002C112D07B9509D6D6590E0528F0A64062421C562C1A8D9F7EFB5E7CEDF3F760D6B442D86CFA87688B4A044E9E3C8BB51B7761F38EC3A8AC6E509D78EF898047650F1555F5D8AA965DBB61174E9C3C839656FD77EB93BA178E1BA1CEF617';
wwv_flow_imp.g_varchar2_table(68) := 'E203EF5E88C9136598DFF166BCFC8502B12460C658F45F5DCC182DEB4C011308D8ED361415E6E2131F5E886F7DF57EDCB16AB61A15C8D6AFB9EAD8ABABAAB075FB5EAC59B713C7AFBB7BC0AD9E6B6A69C7B19317F0D29A6D6A991254555543650A7ADB33';
wwv_flow_imp.g_varchar2_table(69) := '0C64646460F6CC223CF4E072DCBA620A0A8665C1B0E915C7B5284081D009F0B00C9D2D4BA6404002CE38BBF74388DEF38E627CE1932B71FFBD0B316CD820D8ED7A17CBA9BE1ECDCDAD3874F804B6ED3CA886F6CFA2A4F42476A8DF0F1F39818EF60EEDFA';
wwv_flow_imp.g_varchar2_table(70) := '4A9D72730762E1BC29B8EFAEB9983F7B0C7207A6A8BA1ADA6572450A9847C09C35650260CE7663AD2D263074501AEEBD6D22BEF3D53BBDB7118E1B3B1C4600A7D54D4D4D3879AA0CE7CA2FA051FDAECB2975183A546EE39B8377BF731E664D1F81ACCC04';
wwv_flow_imp.g_varchar2_table(71) := '9EF1EB82723D0A845180094018B1B9290A042A10EFB463E19C027CF34BB7E2BB5F7F008BE64F41427C226084F14C5B6D2B5E6D73EA94427CE0A11578F01DB3307E6C0E1C0EBE9C805F9614306BD03C62CDDA72ACB7E505461664E2631F988B1F7EEB9D78';
wwv_flow_imp.g_varchar2_table(72) := 'CF3B1721376700429A08A88E3F3B3B0B4B1715AB8E7F29962F1E8FEC01C9E0170528604E012600E66C37D69A025E0139EFCFCD4EC1ED2B0AF1F017EFC4273E742B26158D467CBCD3FB7C30FE713AE3306AE430DCBE6A2EEEBF771E8A2717202D353E1845';
wwv_flow_imp.g_varchar2_table(73) := 'B30C0AC480807943600260DEB663CD29F0A68061181890998805B30BF0C54F2EC3673E7E3BE6CE9E84C4C424688D0AA8F2E2139230BE7034EEBC751EEEB963861AE6CF4572529C5671E0170528107502B6A8AB112B44010A042410A7E6E2A74ECCC3A73F';
wwv_flow_imp.g_varchar2_table(74) := '3C1FDFFCEABDB875F94C2425F93E542FCBCE9E3111EF7DD762DCBE7212460CCF62A71F508B70E5581630736C4C00CCDC7AAC3B05FA11C81F9C86F73D300DBFFED1BBF1C07DF3FB591A58387F0A3EF281E55830770C323312FA5D9E0B508002E615600260';
wwv_flow_imp.g_varchar2_table(75) := 'DEB663CD29E0B380BCCBE0F8B18361B3F77EC8CB73F943B3E174EABDCF80CF95E182148819017307D2FBAB81B9E362ED2940819B04E4164287BDF7CEDD6ED860EF2341B8A938FE49010A985C800980C91B90D5A780AF02DDDDEE7E17F5B8FB5FA6DF42B8';
wwv_flow_imp.g_varchar2_table(76) := '00052C2260F630990098BD05597F0A50800214A080860013000D34AE42010A5080025617307FFC4C00CCDF868C800214A0000528E0B7001300BFC9B802052840010A585D2016E26702100BADC8182840010A5080027E0A3001F0138C8B53800214A080D5';
wwv_flow_imp.g_varchar2_table(77) := '0562237E2600B1D18E8C820214A0000528E097001300BFB8B830052840010A585D2056E26702102B2DC9382840010A5080027E083001F0038B8B52800214A080D50562277E2600B1D3968C840214A0000528E0B30013009FA9B820052840010A585D2096';
wwv_flow_imp.g_varchar2_table(78) := 'E26702104BADC9582840010A5080023E0A3001F0118A8B51800214A080D505622B7E2600B1D59E8C860214A0000528E0930013009F98B810052840010A585D20D6E26702106B2DCA782840010A5080023E083001F001898B50800214A080D505622F7E26';
wwv_flow_imp.g_varchar2_table(79) := '00B1D7A68C880214A0000528D0AF0013807E89B800052840010A585D2016E36702108BADCA982840010A508002FD083001E807884F53800214A080D50562337E2600B1D9AE8C8A0214A0000528D0A70013803E79F824052840010A585D2056E3670210AB';
wwv_flow_imp.g_varchar2_table(80) := '2DCBB82840010A5080027D083001E803874F51800214A080D50562377E2600B1DBB68C8C0214A0000528D0AB0013805E69F804052840010A585D2096E3670210CBADCBD82840010A508002BD083001E805860F53800214A080D505623B7E2600B1DDBE8C';
wwv_flow_imp.g_varchar2_table(81) := '8E0214A0000528D0A30013801E59F820052840010A585D20D6E3670210EB2DCCF82840010A5080023D083001E801850F51800214A080D505623F7E2600B1DFC68C900214A0000528F0360126006F23E10314A00005286075012BC4CF04C00AADCC182940';
wwv_flow_imp.g_varchar2_table(82) := '010A50800237093001B809847F52800214A080D505AC113F13006BB433A3A400052840010ADC20C004E0060EFE41010A5080025617B04AFC4C00ACD2D28C930214A0000528709D001380EB30F82B052840010A585DC03AF13301B04E5B33520A50800214';
wwv_flow_imp.g_varchar2_table(83) := 'A0C09B024C00DEA4E02F14A00005286075012BC5CF04C04AADCD586F14308C1BFFE65F1614F0583066864C81AB925429B00000100049444154024C00AE3AF05F0ABC4DA0DBE5417B47F7DB1EE703E610E8EA76C3E371F75E598F076EB7ABF7E7F98C0505';
wwv_flow_imp.g_varchar2_table(84) := 'AC153213006BB537A3BD4EC0EDEAEEB38368696947D595E6EBD6E0AF6612686A6C475B7B67AF55767B5C7075F7FE7CAF2BF2090AC48800138018694886E19F80479DFD7577B5F5B9D295DA269C3D5FA392040E13F70915854F4AFB5EAAAC4353737BAFB5';
wwv_flow_imp.g_varchar2_table(85) := '93B3FFEEEE0EB66FAF42D67BC26A113301B05A8B5B3C5E973AE36B6DA941436D39DADB1AFAD4E8EA72E18F8FAEC3D7BEFB14D66D3EA93A938E3E97E7939117686BEBC4BEFDE7F0A7BFAEC7BA0DFBD4107F1FC99B4A02DB5BEBBCFB82EC13B26F443E02D6';
wwv_flow_imp.g_varchar2_table(86) := '8002E1136002103E6B6E298202DDEA4CAFA5F90A9A1A2FA3BDB55E750CBECFED5FBA5C83471E5D8B1FFEE2453CB7FA102AAA392D10C1A67CDBA6553F8EBAFA36ECDC73064F3CBB15EB3696A0A6B6EFE4EEFA42DCEE6EEF3E21FB86EC23B2AF5CFF3C7FB7';
wwv_flow_imp.g_varchar2_table(87) := '8A80F5E2640260BD36B750C41E747634A3B1FE221AEB2EA0439DF1CBBCBF2EC0858BD578EAB92DF8F96F5EC413FF284565758B4A243CBAC571BD0005E4FABEFA86766CDB7912CF3EBF195BB6EDC7952BF5DAA5CABE21FB88EC2BB2CFC8BE03B07DB541B9';
wwv_flow_imp.g_varchar2_table(88) := '62D40B300188FA266205FD1570BBBA20C3FB0D7517D1DC5889EEAEDEE781FD2D5B96AFA8AAC7F32FEFC0B77EF414FEF6CC5E5CAE6A9287F91346819ADA666CDC7A048FFE7D2D76EC3AA446005A82BA75D96764DF917D48F625D9A782BA011616750256AC';
wwv_flow_imp.g_varchar2_table(89) := '1013002BB67A8CC62C43B96D6A4EB7A9A102AD6AB8DFA586FD43196A4B4B1B56BFB6075FFBCEDFF19BFFDE8833E76A43B93996AD042A55B2F5E22BFBF0A7C7D661EFBEE3E8E808ED55FCB20FC9BE24FB94EC5BB28FA96AF09B023121C00420269AD1CA41';
wwv_flow_imp.g_varchar2_table(90) := '78D4307F0B9A1A2EA3BEB61C6D2DB570B942DB29DCACED76B9B06BEF517CFB474FE2C7BF7905BBF75D80CB73F352FC5B57C0EDF6E0E4E92A3CF9EC0EFCF5F1D771FC44193C61BE7FDFA5F629D9B7EAD53E26FB5A67878C38B09175DB34FAD6B3668D9800';
wwv_flow_imp.g_varchar2_table(91) := '58B3DD4D1FB5477500ED6DF56A6EFF225A9AAAD0D5D9AAA66BF55F90535393913F3417A3460C425262BC968FC7E3C1A1C365F8DD236BF0935FBF8AADBBCFA1B139BCC98856C5A374A5D6B62E1C395E81A7FEB103AB5FDD89F2F397A188B56A2B6D5A909F';
wwv_flow_imp.g_varchar2_table(92) := '8711C30721253549AB0CEF4AAA02B2AFC93ED7587F191DED8D907DD1FB1CFFA180C904980098ACC1AC5E5D79B195A1D886FA8B6A98BF0672C5B647AE06D3809177024E4A74624AD168CC9F3D19D3A78DC794498598AB7E1F3962309C4E8746A940476727';
wwv_flow_imp.g_varchar2_table(93) := '8E1C3D8BDF3FF20A7EF55FAF61D38E323434F116425F315BDBBA71F8E8253CFFF22EBCB2663BCE9FAF4057B7EF776D5CBF9D84F8388C1A3944B5E9144C2F1E8FE22985DEB69E307E1452539220FBC0F5CBFBFABBEC73DD5D6D2AF9AC86EC8BB24FBA5552';
wwv_flow_imp.g_varchar2_table(94) := 'EAEBFA5C2EBA04AC5A1B2600566D7953C5EDF19EE137AB33FD7A35042B43B1815E9495973B10F3E74CC1AA5BE662F4A87C242727C266D854876020233D15C5930BB172F96C144D1C8D8484042D2DB71ABA3E71EA3CFEFBFF5EC1B77EF80C56AF3B864626';
wwv_flow_imp.g_varchar2_table(95) := '02BD5AB6B6766177C9593CF6F806BCF2DA4E5CBC580575C2DDEBF27D3D111F1F8F89134661C5B259983A699C6AD314186FFC97929C84F1630B708B7A6E9EDA07727306F45554BFCFC9BE28FB6483DA37651F951102351CD5EF7A5C80029116B045BA02DC';
wwv_flow_imp.g_varchar2_table(96) := '3E057A13F0A8332A996B6D6AA8F45ECDDFD9DEA43A04776F8BF7FB786282D3DBD92F5F3203F3664F84BCF0DB0C7BAFEBC53BE3316E743E6E593A03D3A78E4356661A74CF186BEA1AF0D72736E2CBDF7A1C8F3D5382CB95BC73E01A7C5D7D2BD66D3A8A47';
wwv_flow_imp.g_varchar2_table(97) := 'FEB2169BB6EE4743A3BE4D56462AA6151762D5F299281C530069C36BDBB9F9FF864AF8F254E73F7FCE242C5F3C03A3470E43A2E6F48F942DA302B28FCADD03B2CFCABE2BFBB03CC79F6816B06EDD980058B7EDA3367279216D6FAD5743AB1754C75FA1CE';
wwv_flow_imp.g_varchar2_table(98) := 'FE5BB43B7EE9B05353123171FC482C9C3F0D32DC9F912E1DB9EFBBBED3E9C4F08221983F772A66144F40F68074D86C86FF7EEA74B6B5B5152FBFBA0BDFFEF1D3F8ED235B70ECE41574BBF4931AFF2B111D6BB85C1E5CBCDC88D5AF1D5489D106EC2B3D86';
wwv_flow_imp.g_varchar2_table(99) := '8E8E3675E2ECFF751CD216595969983DA308F3E7156344FE60C4C5397D0E5412818C8C344C9E341A8B164CC7F8C291484B95E9018D36565B95FDB7ABB3C5BBEF36D45F80ECCBF2987A8ADF14882A01DF5F05A3AADAAC4CAC097854E7D8E59D53AD4243ED';
wwv_flow_imp.g_varchar2_table(100) := '79B4B6D4C0EDD29BF7F5DAA89E3F53BDA817AB39DF654B66A170EC70EF9CAFF739CD7F9C710EE40FCBC3A2F9C5AAB399840103B260E824026AFBADADEDD8B6F3107EF5DB97F0CBDF6DC0A1E355686B8FFD4FA693B7573E77BE16CFAF2EC1732F6CC591A3';
wwv_flow_imp.g_varchar2_table(101) := 'A7D0D1AE797D846120676036E6CC9C8C250BA661E8901C481B295EAD6F03065292123061DC702C53FBCCB4A9E39199990EDD36964AC83E2CFB72BD9A1E6869AA7EE33D29FC4F72A42CFE8446C0CAA53201B072EB4749EC5D9D6D6851F3FBCD0D15AA3368';
wwv_flow_imp.g_varchar2_table(102) := '82DBADDFF1DB1D7614E40FC2D285C558BA681A46140C86C3DEFB30BF0E8161D830785036162F98A2B6335D6D2F4FBB93686E6DC3FE0327F0D35FFD03FFF5C7CD3870A412AE181C1170A933FEB3E76AD419FF7E3CF38FCD3873A61CEDED7A6FD064D86CCA';
wwv_flow_imp.g_varchar2_table(103) := '5CDA781A16CC9B8441790360A836D169CBDED6B1DB6C189E9FA7DAB7582517C5DEC44FF6ADDE96EFEF718F9ACE923B069A1A2BD0AC1201D9E7FB5B87CF5320D4024C00422DCCF27B14F078DC686F6BF09EED37355C426747B3F630BF6C40AEE82E1C3712';
wwv_flow_imp.g_varchar2_table(104) := 'CBD599DB7435079C95990123C89D826CE7FA1F03066494617AF178AC5C361BA34717202121EEFA457CFEDDAD3A88927DC7F0D35F3F8BEFFCF4256CDF7B1E5DDDE69F1A908EFFC4A92A35CCBF5575FC9B70F2D43995E0E9C59598E8C448354FBF6CF14C88';
wwv_flow_imp.g_varchar2_table(105) := '79969C9DAB36F01959634143ED43B22FCD98A6DA78E96CC83E969292A851D2D555241190EB04649F6F50235D720CC8B170F559FE1B7E016B6F910980B5DB3FECD1CB6D7BAD2DB568A8BB0079873597AB53BB0E72269891910EB9756FA11A969F585880D4';
wwv_flow_imp.g_varchar2_table(106) := 'E44448C7AC5DA8C68AB2BD94E4244C9938524D0FCCC0B8B123E074C66B94747595B36517F1DBFF598DAF7FFF19BCB0E6089A5AF48DAE9618FE7FDBDABAB06B6F19FEEFD1F57871F5765457576B5742EEC2183BAA409DED4F47B19AA7CF484B566DAC5D9C';
wwv_flow_imp.g_varchar2_table(107) := 'D68A86DA6252520226160EC7C279C5DEBB44D2D352B5477EA412B2EFCB3120C7429B3A26E4D890C7F94381700930010897B4A5B7E381BCB8B5A8A1CFA686CB686FAD53F3FB5DDA228601E4E56663C1DC2958B6781A468F1C8CC404E970D513DAA5066345';
wwv_flow_imp.g_varchar2_table(108) := '0372C161D1F811DEABD0274F1C8D8478DF2F46BBBE067256585171054F3CB309DFFDE90B78F28583B854A17F75FCF56587F2F72B35ADD8B2E30CFEFEF4566CD9B60F0D0D0DDA233B6227862B97CDC0A4A25148F39E7947BA8D81A4C404C8FB442C5F321D';
wwv_flow_imp.g_varchar2_table(109) := '0BE64C415E5E36649FD47575BBBAD0A68E093936E418916345B72CAEE79F80D597B6591D80F1874EC0AD86B53BDA1AD5D9FE4534AA337E9903952150DD2D26A9B3FB31EA4CF0966573306FCE24E46467C250FFE99617CAF59C4E27C68CCEC7CA15733063';
wwv_flow_imp.g_varchar2_table(110) := 'DA4464ABBAEA6CCFE3012A2AAAF18F17B7E2A7BF79117F7BB6046517EAA3EA3A0119E6AFAC6EC6C6ADC7F0F43FB660E7AEFDA8ADAD531DBFFF114B479A3D2013B3671679EDC4D09F2BFAFDDFA2FE1A869A1EC819988579B32661859A1E18376638129312';
wwv_flow_imp.g_varchar2_table(111) := 'B40B9463438E91C6FA378E1775ECC863DA0572450AF423C004A01F203EEDBF809CD1C8307F53FD25B4B45C817CA08AFFA55C5D433A84E4E4644C183F1A0BE74C55678223D5597612A2B5E3BF5AEBB7FE8D733850302C17735527712D11B0D9F50EBB2B35';
wwv_flow_imp.g_varchar2_table(112) := '0D78E9955DF8EE8F9FC55F9EDC8333E7EAD47CBACA10DEDA5C587F73BB3DA8AC6AC6FA4D47F1F7273762CFDEA3686E6ED1AA839848673ABD7822E6CE9E84A1837320765A85857925C33090969A8CA20923B070AEDA47278E419A4C0F189A1551599F8C02';
wwv_flow_imp.g_varchar2_table(113) := 'C8B123A302EDADF5AA9DF52F8CD5AC85055663887AAF4474A3400F02AEEE4EC810A6CC69CA30BFCC716A9D06AAB2D56B2AB2B23230437508CB97CCC0F8B1F9908BAF0CD5F5ABA74DF72DB7A74922B068DE54CC9D39598D5EC895EB7A61747575E0F5F525';
wwv_flow_imp.g_varchar2_table(114) := 'F8CE8F9FC6AF7EBF09474FD628E6F025021E3770E162039E7DA1048F3DB11EFB0F1E57533C7AD729483BCBAD7C62B270DE146FB224567A32915E4BA680923076F4302C5D3C0392CC646666E857EA8D44A0B5A5060DB5E7BDD7CC4872AD5F20D7A4C08D02';
wwv_flow_imp.g_varchar2_table(115) := '4C006EF4E05F7E0A786498BFBD114D0D97D0507F013284E9911EC2CF72AE2D1EAFE6F265987FD9E25958B2B018F9EAEC39CE61BFF6B4E9FF6F1806F272B3B070FE64EFB0F1C8E1C3B4CF74DDEE6E94941EC58F7EF90CBEFDD3D5D8B4BD0CCDAD7A1DB12F';
wwv_flow_imp.g_varchar2_table(116) := 'B0EDEDDDDE0FE779ECE91D78F2D90D283B57AE7D662A67F72347E463F992D958386F92D704264DEED0C397C366789399658B8AB16CC92C48AC8EB8B81E96F4ED2139A6DADB1A505F775E1D6B1501DF35E3DB56637B2946073001E05EA025E0F676FC4D90';
wwv_flow_imp.g_varchar2_table(117) := 'FB9A5B9AAFC07B5FB33A63D1294CF5896AC834450DA18EC1A279C5985C340A19E929AA3B30748A33C93A57878DA74E91779F9BE6BD5E402E2ED3A9BCDBE5F2DE57FF7F7F5D871FFEE215ACDB721635756D6F2BCA19D77F22D5D3BDEECD2D5D3878A4024F';
wwv_flow_imp.g_varchar2_table(118) := '3EB7136B5EDF838ACB9755C7AF8601DEB685FE1F484A4CC4E85105AA539C81A99346213D2D59AD14DBED9CA9F6658975C9C269183F6EA48A59EDDBBA21AB634CDE655046DA9A1B2B54C22DEF9B11FB6F20A576127E8740800940085063B9481982F4DEBA';
wwv_flow_imp.g_varchar2_table(119) := 'E47D67B3AAABEF6CA65E947463CE484F43F1D489DEB7601D3766989A4B4DD22DCA94EB192ACD916447AE765F306F1AC68D1B8504CDF7A3EFEAEAC4F9F397F0C85F5EC52F7EFB1A56AF3B89DAFA365C9B1CB0DBD5D624DBEA4D4A3D27CBC8D3D2A46DEA8C';
wwv_flow_imp.g_varchar2_table(120) := 'BFE4C0253CFBC24ED5F16F475555155C2EBDBB37E29C4E6F6C0B55823745257872DBA46118B2294BFC188681F4D4644C281C8EC50BA763CAA4F12AC94D837A582B7E191190A4BBA5A94A4D0F94737AC06F45AE20024C0044813F7D0AC88B4D67478B77E8';
wwv_flow_imp.g_varchar2_table(121) := 'D13BBFAF8622E5B13E57EAE3499BCD81C1430661D1FCE96A08783A46E4E722DE87B3D33E8A8C89A75253125054588095CBE6609A4A8A529253A0DB439C2BBFE49D9FFFFECF5FC2732F1DF28E085CA96DE9F35A0169D3A6A63634357760E79EB3F8CBDF36';
wwv_flow_imp.g_varchar2_table(122) := '63C3C6DDAAE3D7BC875FF56E1283C472DB2D73BDB1A5A81861F12F99D21A35629077DF5F386F3A060DCE83CDDEFFE84C6F6CD26E323D20C7665343859A1E907676F7B6381FA7C09B024C00DEA4E02F6F17F0A8179366343756A2B9A9520DF307F6C29294';
wwv_flow_imp.g_varchar2_table(123) := '9C88B1634760E992199833A31003B3D3D5260DF5C3EFEB05A4831851908B154BA76396DC423820432B0F908EA1BAFA0A9E79611BBEFEFD67F1C8A31BD1D9D9FB197C77B70BABD794E04F8F6DC2B61D07D0D454AF1206BD8E64E0804CCC54755FB6781A24';
wwv_flow_imp.g_varchar2_table(124) := '1689E9FA18F9BB0818DE6360EECCF158A18E8931A3F221C7883CA3F323ED2DD30372ACCA31DBD9D1AC8AB936FEA37EE5F79B02FCE58D5475640000100049444154AA001380AB0EFCF73A0119E6952B8FEB6BCA212F245D9DAD5A9FD226451A8681CC8C0C';
wwv_flow_imp.g_varchar2_table(125) := '4C2A2AC42275B653347E3832529360A8FFE479FEF42E60576785C386E660DE9C29983DAB1803B232611846EF2BF4F28C740CAD2D8DB85253DFCB126F3DDCD4DCACE6959BB53A7E9BDD869C9C6CCC9E390573549DF387E6202ECEF156E1FCAD4701030652';
wwv_flow_imp.g_varchar2_table(126) := '5392D531324A1D23D35034711CBCEF3268F4B878FF0FAAF91B3966E5D89563588E6539A6FB5F914B584D800980D55ABCD7783DB8FA697CD568ACBF8840EF3D360C1BB2B3B33167D6542C59548CB1A3062339C90943FDD76B15F8448F0272F63C242F138B';
wwv_flow_imp.g_varchar2_table(127) := '174CC582B9D39097970343F9F6B870041EB4D96CC8CDCDC1FC39C558306712860E1E00A7832F2DFE36851C1BC949F118377A08962E9A86D9B3A761E0C081105F7FCBBAB6BCDBDDED3D961BD531DDD254ED3DC655367FED698BFE9F615F13E0517A4DC2C2';
wwv_flow_imp.g_varchar2_table(128) := 'FFF7A83306F984B2A686CBEAECAF11726B9F2E87D31987D16A2873991AD25C3C7F3206AB8ECBA671D6AABBFD585ECF300CE40C4CC7FCD94558BE7416468D1C06C3302216B2C361C7C81143B17CC94CD5F11721474DE91846E4EA133188106C58467F86E4';
wwv_flow_imp.g_varchar2_table(129) := '6660E1BC22950CCC804C0FC43B9DDA5B92635A6ED195635C8E7539E6B50BE38A3123C00420669A522F103943686AB804F98432A84440AF14202D2D1DE30BC760F9E259576FE34B4BD12D8AEBF92090AEA651A6148DC632E53D76CC08242525F9B0567016';
wwv_flow_imp.g_varchar2_table(130) := '916DC9DD0A4B16CD42F1E4B19077C10B4EC92CE56601030632D253BCD3034B16CDC0C40963D5B19606ED3C4B1DE372AC37A964DF13C0FB75DC5C4F33FDCDBABE25C004E02D0B4BFED6D65A7FF5563E8DE80D9B81F4F4544C9B3A010BE74FC18471C35447';
wwv_flow_imp.g_varchar2_table(131) := '140F79D1D2288EABF8296018D2392463D284115834BF18F25EF4F109F17E96E2FBE20989F1183F6E846AEB62EF15FDE9A989BEAFCC25031290632A25390185638642DE3171DA9409484D5549B6DA07740AEEEE6AF34E0DE8ACCB756247C0163BA130121D';
wwv_flow_imp.g_varchar2_table(132) := '81AE0EBDF76ECFC91980250BA663851AFE1D51908704A74367F35C27480232775C346124E476BB2993C6C2610FDEA16D180626AB326FBF652E26148E408A9AA70E52B5598C8640427C1C86AB636EE5B259983F672A925562A0510C3A358F7D9D6D45CF3A';
wwv_flow_imp.g_varchar2_table(133) := 'ACC9F502C17B95B8BE54FE6E12018F1AF5D7BBCDABBABA16274E95A3B6BE49C5CA5B8D1442C4BF5D2E172E5DAAC6E9B20BE876E9B56B4F4178D4B0F11955E64555B6DBCD779DEBC928FC8F79BCC75E59F945B4B4B46B6DDEEDEE56EBF1D8550896FD6602';
wwv_flow_imp.g_varchar2_table(134) := '60D9A687EAFCF583974EE1E2A52AECD97B04474F94A3B1B9152A9DD02F906B6A0B485BD4D43562FFA1D3283D7802CD4DADDA65F5B6A294B9EFC009EC3B78DADBF1B8397FDC1B55481F9763ACA5B50D878E96616FC9515CBC5815D0F6546E17D0FA665B99';
wwv_flow_imp.g_varchar2_table(135) := 'F5BD518009C08D1EFCCB4F81A6E6161C397A1A6BD7EFF4260335B50DAA049E552884907F4B6720F7F66FDD71001B36EDC1597596DED71BFD045A2129BB4C6D63C3A6DDD8BEF3D01BEF2BC0B60ED4D5B7F5AF9EF1EFDD770C6BD6EEC0F11367D1D8246FF4';
wwv_flow_imp.g_varchar2_table(136) := 'E3DBDA5C8A023D093001E849858FF92DE0767B507EA1121BB69460DDC6129C2DAF405777EFEF3AE7F706B8C29B029D5DDD283B5F81751BF662D3B67DA8ACAA79F3B970FC22678D159557BCDB7E7DC31E94955F868B530321A177B9545BAB6369AD6AEB0D';
wwv_flow_imp.g_varchar2_table(137) := '9BF7E09CB296632D241B8BF94219E0CD024C006E16E1DF8109A8DEA1AEBE01FB4A8F62E396521C3F751ECD9A7394815524F6D6EEE8ECC2D97315D8B2FD004AF61D457D43233C2AF18A54A4B2ED86862694941EC326D5D667CA2A20758C547D6265BB32B2';
wwv_flow_imp.g_varchar2_table(138) := 'D3DCDA8E6327CB55425DAA7C23DFD6B162CB386E14600270A307FFBA4940AE2EBFE9219FFE947969E91C0E1D3EA912813D3878F8941AB26CE175023EE9DDB8506767274E9C2EC7C6CD7B556770047575F21EFDD133F42E6D5D5BA792BEFD47BC5311A7CF';
wwv_flow_imp.g_varchar2_table(139) := '9C477B47C78D41F02F9F04EAEB9B70E0E049ACDFB81B878F9C427DBD4AF25452EDD3CA372D24EF2079D34396FE93C1BF5D8009C0DB4DF8C875020F3D301F33A68D456200F797B7B7AB0EEC54395E5FBF5B9DBD1EC2A58A2B1C32BECEB8E75F3D686DEBC0';
wwv_flow_imp.g_varchar2_table(140) := 'C12367F1EADADD3878E8149A9A352FEE330CA4A6A5232B2BBDE74D5DF7E8D0C1D96AB90C40AD038DAFE6963694AA0EECB5757B70F0F019B4AA3359A8B44FA328CBAC2217545EBC7C059BB71FC4BA4D7B71EACC853E3FB4A93F98F87827C68F2BC0C2F945';
wwv_flow_imp.g_varchar2_table(141) := 'FD2DCAE72D2EC004C0E23B405FE1C7C5D9316FD6687CEEE3CBF093EF3E8877DE3D1B19E9FAEF38E7F1B8BD1F2DBB63D701AC59B75BBDD05D8474727DD5C18ACFD5D635AB4EF4944A9876E1C4C9B3AA33D03F9BCECA4CC7AAE533F1A1F72EC66DB74C83D3';
wwv_flow_imp.g_varchar2_table(142) := '19D72B696282139FFED80AFCECBB0FE0A3EF5F819CECAC5E97EDEF89CECE0E9C385586B5EA4CB664FF49D435A8D11FCD33D9FEB665D6E7DBDA3A71FAEC25ACDBB8173B771FF01E1B728CE8C6939C1C8F39B3C6E1830F2DC5ED2BA7A178CA4895C719BAC5';
wwv_flow_imp.g_varchar2_table(143) := 'C5D87A0CA7270126003DA9F031AF40FC1BEF3D2E2F21591949B8EF8E62FCE287EFC5273EBC529D610CF52EA3F38FF403AD2DADD87FF038366DDD8BC3C7CEA045FD2D739F3AE5C5C23A6E75965CAB86F6F7A8B9FDAD3BF64186D1BBBA342FA25467EFC387';
wwv_flow_imp.g_varchar2_table(144) := '0FC53D772EC0FBDFB3044513864092B9B8B838F4750199DB0D95203810EFB463C9FC51F8D9F7EEC7E73F751726178D84EA49A0F3D529D72D945DC0966D25902BD86B65485BC5AA53562CAC23FBB85CBD7FF4F8596C5626A5078E41A6CAE498D08D2F7F58';
wwv_flow_imp.g_varchar2_table(145) := '0E6E5B39031FFDE02ACC9F3301A9A92A495707AD5CA3E1B0DB758BE57A16106002608146D60DD1B0A9DDE3A65726679C1D0B668FC4E73FB152750E776046F1282426C5EB6E4275FCED3876BC0C6BD6EFC1DE92E3EA4C516E6D8A9EF96DEDC07C5C513A84';
wwv_flow_imp.g_varchar2_table(146) := '2B350DD8B153CD9F6F2EF55EE52D9DA68FABDFB0985375F005F983F18EBB17E0CE55D3307AE44038AEFB543EB95E50F50B37AC73FD1F5297EE6E9505BCF1A0DD6EC38C2943F0998F2DC397FFF92E95488CD49E0A9298CE9DBF8C0D9B4AB05DC57AA5A65E';
wwv_flow_imp.g_varchar2_table(147) := 'A501D669679906A96B68C6EEBDC72057F41F3976567F4A47B54FBC1AAD193D7210EEBD732EEEBA6D1626140E536D7D63672FEDED51C9A05ADCF2DF04E85940BDC2F7FC041FA5405F02C9494ED5390CC3A73FBA5C750E7762F18289484F53671E7DADD4C7';
wwv_flow_imp.g_varchar2_table(148) := '736E5737CE9DBFE4BDF869DDA67D385B5E89CEAED87DD7B9AE6E978AB7D23BFC2BA320972B2AA13BFC1BE77460CCE87CDC7DE77CDC73C74C8C28C8467CFC8D9D81D0BBD436E5FF7DFD74F5609E98E0C0D4A2C1F8C22797E3739FB803C553C7423AA0BECA';
wwv_flow_imp.g_varchar2_table(149) := 'E9ED39895162DDB8A5041B36EF43F9852AB882F8AE85BD6D37528F777676A34CEDCB6BD530FFFA8DBB70FEC265350AA3BF5F27253A55675F80FB545BDF79DB6C8C1A99878484DEA775221537B76B0E012600E668A7A8AD659C3AC31C376A203EF6FE85F8';
wwv_flow_imp.g_varchar2_table(150) := 'FEBF3EA0869D67232B2B4DBBBE1E35E22057B997EC3B8C4D6A8854DE6550DEF94CCE4EB50B8DA215DBDB3B70A6EC12B66EDF8F3D258771F52A6FBD0AC6A9F9FC891346E3C1772EC5DDB74F47C1B04C35D41FBA435AA6068AC6E7E04B9F5C866F7EE93E2C';
wwv_flow_imp.g_varchar2_table(151) := '9C3719714EA75EE5D55AB5B5F55E834DDB4A5176EE32DA3B3AD5A3E6FF967D55F6D963A7CE63C3D612EF9D1B81B4B388A4A62663F6CC8978DF7B96A9E1FE6918323803767B5FE339B2167FAE0AF0DFDE0442F76AD1DB16F978CC0A64A527E281BB8AF1F3';
wwv_flow_imp.g_varchar2_table(152) := 'EF3D88CF7CFC368C1E3528A0581BEA9B70E4E8296C50C3C6878E94A131046F711B5005FD58B943CD859F561DFFC6ADA5D8B7FF186A54E7E7C7EA372C9A989880F97327E243EF5B815B574C42EEC0941B9E0FC71FC3F333F1F10FCEC32F7EF010EEBD730E';
wwv_flow_imp.g_varchar2_table(153) := 'A44E3ADB95844F1281BDA547B145D99C29BB8CAE6E798F7A9DD222BD8E47EDA32D3878E80C6474E3F0E193686A6C56233BFA531D43870CC41DB7CEC287DFBF0C0BE68E456A0A3F8131D2AD1C4BDB6702104BAD1925B1C87502B3A715E01B5FBC0BFFF285';
wwv_flow_imp.g_varchar2_table(154) := '7BBC572627C4C769D74EEE2997ABE15F5BB7039BB7EE87DC32E5562305DA05867145794397FD87CFE0D5D7B6A35475FCCDCD7A9FBE2853B9B9395958BE643A3EA0CE02E7CC94CE20218C91F4BCA9CCF404DC7FD754FCE43B0FE203EF5E8661437374AF17';
wwv_flow_imp.g_varchar2_table(155) := '444353B34A8E8E62F5ABDB20666D6AB4A4E7AD46D7A392C45CAAAC512356FBF1FAFA9D3879FA1CDADBF53EA0472273AA299DF185F96A646709EEBF771E0AC70E51F3FBFCB44DB1D1F9E13ABD0B3001E8DD86CF042820D303458583D499E2623CAC868C97';
wwv_flow_imp.g_varchar2_table(156) := '2F998C01014C0F4875AAAED460E79E4358BF710F4E9EB91895B7114A8720177CED293DA1EAB917A74E95699FD5DA1D760C19928315CB66E2BEBBE662EAE47CA4A4C40B4554FD64652462E5D2B1F8F23FDF8A7F7AEF0A8C193D148E38BD4E4B4600C44C6E';
wwv_flow_imp.g_varchar2_table(157) := '8F2B5186B5754D019D45870AAAB5AD4375F617B14EED8B3B771F847C42662079697A7A32A64C1A8907EE5B8495CB8A317448A61AE6B785AAFA2C9702E0DEC59D20E40292088C2CC8C287DE330F5FF9DC9DB8F78ED9C81D98AE7DA6E871BB51DFD0840307';
wwv_flow_imp.g_varchar2_table(158) := '8F63EB8EFDDE4F236C6A6E8327C253A232F72B1DFFBEFD27B065DB3E9C3B7701723F3C34BEE48C3F2F7700562C9986FBEF998BC913872239597FBE5DA30A5AAB0CC84CC2F285A3F1F0E76FC387DFB70CA3470E56EDACD73072167D5619CAB520FB0F9E44';
wwv_flow_imp.g_varchar2_table(159) := '6D7D33C458AB62415C4946750E1F2BC3961DA53870E838645F746B5EC828ED9C969AA446C9C67BEFDE58B1740AF272D3E170F0A51941F962217D09702FEB4B87CF055D60685E1AEEBFBB183FF9EE83F8D4476F43417E5E40DB685473AC729DC06BEB7760';
wwv_flow_imp.g_varchar2_table(160) := 'F79EA3AA93680AA83C9D95A553AABA528F4D5B0F60DD865D387BEEA2EAF8F5EFE11F366C101E78C712BCF7C145289AA0CEA44DD819C4C5D9B168CE487CE76B77E3EB6AF46742E170A84C003A5F72F7C2E9B317D468CA2E6CDD7E00D5CA5A6EABD3294B7F';
wwv_flow_imp.g_varchar2_table(161) := '1D8FF7D30F77EE3E82356BB7E3D8F1336A7E5F6F3AE75A1D06E565E3F655B3F1910FDC82F9730A91A592A76BCFF1FF1408870013807028731B6F1370D86D983BA300DF7FF81E7CFB6BF763E1DC89703AF5AF13F0B83DDE5BAC366CDA8B759B4A21B75E85';
wwv_flow_imp.g_varchar2_table(162) := 'FAAAF2AE6E17CACE5761FDA67DEA8CBF1457D4F4C4DB02F5F18138870393278DC207DFB31CEFBA770E86A9E15F1F578DFAC5268CC9C1C35FB8153FFAE68358BE784A40ED2C9F7CB8795B29D66EDCE7BD8530D4B78ACAFB17C8BEB45125779BB696E2C2A5';
wwv_flow_imp.g_varchar2_table(163) := '0AC8BEA68B2EED3C69E2083CF4AE2578F7FDF3513876306CEA58D02D8FEBF52DC067FB166002D0B70F9F0DB1804D8D818E19998D8FBE7F3E7EF08D07B06AC5340CCC4ED3DEAAC7E3465D5DADF7D62BE928BCD709B4760475E8B843EEED3E5FE9EDF4E576';
wwv_flow_imp.g_varchar2_table(164) := 'C5BABA7AC876752A9D9A9A882993C7786FEF5ABE7812B2B35301BD117344FBD7B02119F8C0BBE7A8A4EF01AC5836150306A858352A2DD6F5F5576F21DCBC751FCACA2BD0D915BC3B073C6A22BFB9B91DC74F5FC026359553527AC49BDC79D4BEA5515DEF';
wwv_flow_imp.g_varchar2_table(165) := '2A991929985E3C16EF7F683964987F505E266CF2465BDE67F90F052223C0042032EEDCEA4D02F2AE7383D5F4C0FB1E9885AF7EF66EDC7FEF7CE40FCDB9585725FF00001000494441546929DFFFF4A81771991E90EB04D66DDC8DFD074FA1414D17C870BD';
wwv_flow_imp.g_varchar2_table(166) := 'EFA5DCB8644767274E9FB9848D5BF6626FC961D4D635A88E5FEF16AFF48C54CC9A3901F7DFB3489D1517A9E1DF64D521C468CF8FB7BEEC36034306A5E183EF9A8DAF7DF62EDC7DC76CE4E565BDB5801FBF491BD7373462EFBE236AD4672F4E9D91A917FD';
wwv_flow_imp.g_varchar2_table(167) := 'F712907DA35EED23A56A5F797DC34E1C3A74020D0DCDDA6DAC725B0C1C988585F3A7E09DF72CC0928513919991648976F6A31943B8288BEE4F8009407F427C3EAC02D2050ECA4DC1BDB74DC2C35FBA131FFFD02A0C2FC84320C3A4573BEEF358B7712FB6';
wwv_flow_imp.g_varchar2_table(168) := 'EE388C4B557570A929035F036B6E69C78123656AEE77374A0F1E435393FEDCAFDCC7BD605E11DE75DF4235ED310E595949908EC2D7BAC4CA7286614012BE77DD5D8C873F7F271EBC6FBEEA1C53B4C36B696E5149DE71C85B4A1F546DD5A2467D7C2DCCAD';
wwv_flow_imp.g_varchar2_table(169) := 'CEEC2F55D4628B7C1ADF863D3873F63C5C2EFD77EB937D7550EE00359A350B0FDC370FB3A68F447A7AA2AFD5E17214089B001380B0517343FE0AA42439B170CE08FCE0E17BF1ADAFDC8F39330B03BA2DCAED76A1B2B20A3B769462C396129C3E7B196DED';
wwv_flow_imp.g_varchar2_table(170) := '3D0F1DBBD508426D430BF6969EC0FACDBB71F2E419E85ED12F710FCCCE80BC75EB873FB00AB3678C415A6ABC3CCC1F252017BFDD75EB24FCF2DF1EC2A73EBA0A43860C508FEA7D77B4B7E3846AABF56AD467DF8153A8536DD85B496DED5D385D7619AFAB';
wwv_flow_imp.g_varchar2_table(171) := '4E7FC7AEFDA8AABAA2CEF6DFFA2C84DED6EBED71E9F8C71716E0A10796E23DEF5A8489E38720916FD3DB1B57C81FE706FA176002D0BF1197880281D123B2F0CF1F5D825FFFE8FD78C7DD7391AB865675ABE51D3A56C3F7A5078EAA39DEBD387CFC1C9AD4';
wwv_flow_imp.g_varchar2_table(172) := '1964B73AEBEB523F972BEB50A23AFECD6AA8BFECDC057476E85DD12F173A8E1E35544D672C509DC2228C1B33180E878C71E8D63CB6D713AF793347E0FB5F7F07BEFE857BD599F358ED844F467DCE9C2DC7966D252A893BEEBD3BA45DB5636767976AEB56';
wwv_flow_imp.g_varchar2_table(173) := '1C395E864D5B4B50BAFF28027DB7BE0159199837A7081F79FF4ADC764B317273D22C39AA13DB7B676C46C7042036DB3566A3CA5043A9F7DD3E19FFFA95BBF0D0FD8B30424D0F04126CB31ACE3F76EC34D66ED8ABE6F60F786F33DBBE733FCE955F44B7E6';
wwv_flow_imp.g_varchar2_table(174) := '5BD2262638317E5C3EDEA1E67DEF58390D05F903E1887BFB87F30452EF585ED7A9AC2616E6E1131F5AAC12817BBCB7C8A5242768852C1D7ED9B98B90BB43B6ED3C8C6DBB8EA8B6DE83A3C7CE40F75D19A5226A0603F23E0DCB974CF30EF3CF99A94675D2';
wwv_flow_imp.g_varchar2_table(175) := '1255C7CF044F7C22FFC31AF822C004C017252E135502866120532502B7DF32015FF9CC6DF8E4476FC3F8C2E170C6EBDF46E87275A3BEBE0E353575DAC3C0CE380726158DC4BD772DC0EDABA663D8D001ECF803D8739C2A11281C938B4F7E6809BEF4CF77';
wwv_flow_imp.g_varchar2_table(176) := '61E9C2496A48DDA955A247CDF3CBDD213535356A7EBFE7691F5F0A76A836CE1F3608B7DF3A0FEFBC671EA64E2E407272BCEAF87D599BCB5020BA04980044577BB0367E0AC85CFAFC9905F8C6176EC5D73E77AF9A5F2F447C42BC9FA504B678BCD3896953';
wwv_flow_imp.g_varchar2_table(177) := 'C7E2BDEF5E8A95CBA660F0A0F4C00AE4DA6F13183372003EF2BEF9F8DEC30FA861F6694888D74B04DE56B08F0F38E2E2306EDC70359DB348FDCC86242609097A6F75ECE326B95800025CD537012600BE39712913088C1B35009FF9D812FCFC7BEFF69E9D';
wwv_flow_imp.g_varchar2_table(178) := 'A5A52587B4D67245FFA2F993F0910FAEC0D245139195A97F157B482B1A43850FCA4DC57BEF9F855FFDE8BD78EFBB166040566A48A34B4D4DF6CEEF7FF8FDB7E0CE55C518A2923BC3E0307F48D15978D8049800848D9A1B0A97804C0FC87502BFFCE17BF0';
wwv_flow_imp.g_varchar2_table(179) := 'B17F5A89C2710541DDB45CA57ECBF2E9F8E07B9763E6F4D1484C0CEF8843508331696129C9F1B86D79117EF8CD07F05195808D1D3D28689118864D4DDF0CC21DB7CEF57EE4F2DC5963901A851FC014B48063AE2006E4AB0013005FA5B89CE904E29D0E2C';
wwv_flow_imp.g_varchar2_table(180) := '9E3B129FFBF8727CEE5377AAF9DA31484ED2BB984CDEA8287FD840DCBE7226EEB97D0E264FCC477CBCFE3507A6C38CD20AA72439B164DE687CFE93ABF0F17FBA05E30B87C230F4CED0E3D5B4427EFE60DC75FB5CDC7DFB0C148ECD435C1C5F22A3B4E959';
wwv_flow_imp.g_varchar2_table(181) := 'AD200870EF0E02228B886E81D46427664E19AA1281A5F8E23FDF89C50BA74086767DA9B5CD66A04075FC77DE3A1BF7DC31D7DBC124263A7D5995CB8451202D25010BE78EC2973E752B3EF789DB30A17098CFB7102626C4A3A86834EEBB7B01DE71D72C8C';
wwv_flow_imp.g_varchar2_table(182) := '19958304CEEF87B1F582BB2996E6BB001300DFADB8A4C905E21C368C1B958D8FBD6F2E7EF29D7761C5D2A97D46E48C73E09665D370FF7D0B307A541E9C4E7B9FCBF3C9C80B24C43B30636A3E1EFEC21DF8D80796A936EBFB42BD299347E3C31F588955CB';
wwv_flow_imp.g_varchar2_table(183) := '2679E7F7ED76BDD183C847CE1A50C07F012600FE9B718D1810485373BAF7DE3E150ED5C9F7168E7C504FCEC0CCDE9EE6E3512E50909F83EC3E3E70C81117870573C6F16C3FCADBD1BFEA71697F049800F8A3C565634A408DEEC36EEBFD10888BB3233585';
wwv_flow_imp.g_varchar2_table(184) := 'C3FD666DF4019989484AE8BDFD1CF6388027FCE09775057A7FF5B3AE0923B788405777DFEFFB6E330C38D4B4814538622E4C99F2B1F535A4AFDAD7E36606104B0DCF58FC136002E09F1797A60005624A8009404C352783F14B8009805F5C5C980214A000';
wwv_flow_imp.g_varchar2_table(185) := '05A25380B5F257800980BF625C9E0214A00005281003024C0062A011190205284001AB0B307EFF059800F86FC6352840010A508002A617600260FA26640014A00005AC2EC0F875049800E8A8711D0A50800214A080C905980098BC01597D0A5080025617';
wwv_flow_imp.g_varchar2_table(186) := '60FC7A024C00F4DCB816052840010A50C0D4024C004CDD7CAC3C05284001AB0B307E5D012600BA725C8F0214A00005286062012600266E3C569D0214A080D50518BFBE0013007D3BAE49010A5080021430AD001300D3361D2B4E010A50C0EA028C3F1001';
wwv_flow_imp.g_varchar2_table(187) := '260081E8715D0A50800214A0804905980098B4E1586D0A508002561760FC8109300108CC8F6B53800214A000054C29C004C094CDC64A53800214B0BA00E30F54800940A0825C9F0214A00005286042012600266C3456990214A080D505187FE0024C0002';
wwv_flow_imp.g_varchar2_table(188) := '37640914A00005284001D3093001305D93B1C214A00005AC2EC0F88321C00420188A2C830214A00005286032012600266B3056970214A080D505187F7004980004C791A550800214A000054C25C004C054CDC5CA52800214B0BA00E30F960013806049B2';
wwv_flow_imp.g_varchar2_table(189) := '1C0A50800214A0808904980098A8B158550A508002561760FCC1136002103C4B9644010A50800214308D001300D334152B4A010A50C0EA028C3F98024C0082A9C9B22840010A5080022611600260928662352940010A585D80F10757800940703D591A05';
wwv_flow_imp.g_varchar2_table(190) := '2840010A50C014024C004CD14CAC2405284001AB0B30FE600B300108B628CBA300052840010A9840800980091A8955A4000528607501C61F7C012600C137658914A00005284081A817600210F54DC40A52800214B0BA00E30F8500138050A8B24C0A5080';
wwv_flow_imp.g_varchar2_table(191) := '0214A040940B300188F20662F52840010A585D80F18746800940685C592A052840010A5020AA0598004475F344B6722E972BB215E0D6832A60D88C7ECBB3D9F992D02F926916F0001EB7696ADB7B45F94CA80478B4874A3606CAEDE8E8446B5B570C44C2';
wwv_flow_imp.g_varchar2_table(192) := '1044C0EDF6C0A57EE4F79E7E24E1EBEE6287D1938D191FEBEA76A3BB9B49BC19DB2E5C756602102E69136EC7E5726367C959B83DEA4CC284F56795DF1290CEBFB2B2166E77EF1D82B4F799B20A74AB767F6B4DFE664601971ABD3B70E8AC19ABFEB63AF3';
wwv_flow_imp.g_varchar2_table(193) := '81D0093001089D6D4C94FCE7BF6DC4E7FEE5513CF97C09EA1ADA6222262B05D1DEEEC2A1A315F8F3DFB662EDC6D27E43FFE3631BF1E56F3D8ED7371D474B6B67BFCB7381E812686A6AC796EDC7F03F7F5C83CD5B0F4557E5589BA813600210754D12DE0A';
wwv_flow_imp.g_varchar2_table(194) := '79D0FFD97D5D7D0B9E7F7917BEF56F4FE1BFFFB811474E54A1A3B33BBC15E5D6FC12686CEAC49E7DE7F0D7273662CDEBDB515353ADE683FB6F6BD9C8952B0DF8D3631BF02FDF7D02FF78653F2A6B9AE561FE44A94057970BE5E7AF60F59ABDF8EBE3EBB0';
wwv_flow_imp.g_varchar2_table(195) := '73F751B4B4B4FB545BA3FFCB427C2A27740BB1E4500A300108A56E94976D18060CC3B75D4066012411D8B4FD287EFEFF9EC76F1FD980DDA5E7D1DADE1DE5515AA77A72BD57734B1776EC3E8BE75EDC898D5BF6A1BEBE01D276FE2A78D44A75F5CD78F2D9';
wwv_flow_imp.g_varchar2_table(196) := 'EDF8D96F5EC2D32F96A2A6AE554D21F85B12970F954067A70B274F5762F56B7BF1ECF35B70E458B91AB5E9F0797386CDAE9635D40FBFAD2AE0DBABBF55752C10779C33C9EF283BD5D9FFDE7DA7F0EBFF7A093FFDF58BD8BCFD144704FC560CEE0A4DCD9D';
wwv_flow_imp.g_varchar2_table(197) := 'D8B6EB943AE35F8FADDB4B515D7DC5E733FEFE6A52515187675FD881EFFCE8293CF1DC6ED4D5B7F6B70A9F0FA1801C7FA507CEE2C96736E1F997B6E1E4A98BE876F936BA737DB51C7109D7FF1995BFB352A1156002105ADFA82F3D31291371CE44ED7A9E';
wwv_flow_imp.g_varchar2_table(198) := '3A5381DFFFF1757CE6AB7FC6634FEF4635878BB52D7556ACA969C19AB587F1C85FD660C7AE83686E6AD129C6A775EA1A5AF1E2AB7BF1F96FFC15BFFBE3265CAA6CF4693D2E140481374664D66D3C88FF7EE455ACDD508A8AAA7AED8225F14F52C7BE7601';
wwv_flow_imp.g_varchar2_table(199) := '5C3126049800C44433EA0761B7C721396520E213D301352500CDAFD6B64EBCACE620BFFEDDC7F1CBDFBD8ED24397D0A9E626358BE36AFD089495D7E305353FFFE8131B70F0F009747775F5B346F09E7675BBB065FB117CE3FB8FE357BF5B8B43C72A8257';
wwv_flow_imp.g_varchar2_table(200) := '384BBA514075FC67CF55E1991776E2CF8FADC3BEFD32DAD679E332FEFCA58EF1F8843424A70E844D1DFBFEAC1AFE65B9C5500B300108B5B009CA971782E4946C64641520296500EC8E78ED5AB77774C13B3DF0BB97F0E35FBD88755B4EA29643C6DA9ED7';
wwv_flow_imp.g_varchar2_table(201) := 'AFD8DDEDC6A9B3D578FEE51235F4BB05274E9C511DBF5E6720F3BFCE845438E39321BF5FBF1D5F7F978BCFF6EC3B895FFDF625FCFC3F5EC1CE9273E852C981AFEB73B9DE059A9A3B507AF01CFEFED446BCF0F20E9C2DBB8C40EEE997635A8E6D39C6BD9D';
wwv_flow_imp.g_varchar2_table(202) := 'BFCDD1FBC6F98C6504980058A6A9FB0FD466B323213103A9E9832053039218E88E0A48E770E2D4653534BD16FFFE1FABF1DCCB075422D006B91FBDFF9A7089EB053A3A5C387DB6469DF1EFC3CBAB77A8395FD5D16A9EF14B9B2624A9364ECB83247DC96A';
wwv_flow_imp.g_varchar2_table(203) := 'F42755FD2E8FD9EC7A9D82247DA507CBF0FB3FACC12FFFF335941CB8C03790BABE017DFCDDE3F6A0B1B10DDB761EC7732F6CC3DAF525B878B90E722CF958C48D8B1986F72C5F8E6539A6E5D896631C26F96235432FC00420F4C6A6DB82BC482426672123';
wwv_flow_imp.g_varchar2_table(204) := '2B1FD239C87CA16E2220C19F3B5F8DA7FEB10DFFF2DDBFE3CF8FEFC0F94BF53EDC7C286B5AFBA7ABCB8D63272AF1C4B3DB5487B00967CE94AB336CBDBB2E6CEA8C4FDA343D6308929207402E00330C1B0C95F4C9EFF2585AC65024A879619B4D2F11E854';
wwv_flow_imp.g_varchar2_table(205) := '67FF078E94E117FFF922BEF7B3E7B075D719DE2502DFBEAE5C69C2DA8D87F0A7BFADC5F69D475055AD3FBF0FC3801CB372ECCA312CED2EC7B46F35E1525612B0592958C6EABF80F785448D0864640E7B6B54C0FF62BC6BB4B676E0F50DFBF1F0F71EC70F';
wwv_flow_imp.g_varchar2_table(206) := '7EF622F61D38AF4604F8D6B35E9CEBFE696BEBC2EE92B378E4D17578E9956DA8AABA72DDB37EFCAA3A02475C2252D27291AE92393913345487DF5B09D24924A9C42F5D2D9B52E5E2A700001000494441549C9A03479CFE55E2172ED6E0BFD488C057BFF5';
wwv_flow_imp.g_varchar2_table(207) := '189E5BBD1F32A4DDDB76ADFAB8DBE5C6F11397F0B72737E3CF7F7B1DFB0F9E42A79A42D3F5B0D9E3206D2CC7AA9CF1CBB1AB5B56E4D7630DC221C004201CCA31B00DEF8B8BEA1CD254329094920DBBDDA91D95DC637EFCD405FCF2BF5EC6D77FF00C5E58';
wwv_flow_imp.g_varchar2_table(208) := '73085557F8663335B5ADD8B8F5A4EA0CD663D39652343735691B3BE254C7AF3AF154D5F93BE353D449A1E173598661203E2115296A6A20D044A0BEA1154F3DB71D5FFBEE13F8FB737B7199770EA0B6AE05DB779D5267FBEBF1D2AB3B71E9F215ADF76AB8';
wwv_flow_imp.g_varchar2_table(209) := 'D6A0722CCA3129C7A6F76C5F2502D79EE3FF29D09780ADAF27F91C056E16B0A9179784C474A4670DF376108E00CE12E57A808B17AFE0F1A7B7E0C7BF7A1E7F91E9818B0D6A98DB7DF36663F66F31A8AD6B55C3BF47F1D43F3663CFDE43686E6ED18ED7A1';
wwv_flow_imp.g_varchar2_table(210) := '3A7E39FB4BCB180C6FC7DFC7197F7F1B9111014904D2D4B481942965F7B74E6FCF3736B6E0C5D5BBF1A35F3E87471EDB8A8B150D90CF1EE86DF9587BDCE5F2A0AA5A0DF36F3880A79FDB8C6D3B0EA2B6B631A08EDFA18E3D49D2E4589463528ECD587163';
wwv_flow_imp.g_varchar2_table(211) := '1CE1116002101EE798DC8A5C419EA63A9A34D541C427A4C166D39B3B169CAAEA46BCBAAE14FFF68B67F1BF7FDEE8BDDABD5B0D91CA73B1F823177C55AB518FF59B0EE3F16736A174FF3175C6AFF7063B86EAE49DEA8C5DDA212D63104231F42B654AD969';
wwv_flow_imp.g_varchar2_table(212) := '994321DB926DEAB48B243BEB361EC40F7FFE1CFEF4F8769C57099F3B86F33D57B70B321DF2CA6B7BF1E4331B507AE0341A9BDA74E8BCEBD8D431169F988EAB6D2D495EB2F771FE43011D019BCE4A5C87026F0918903311B9B528253D0FF2E2242F526F3D';
wwv_flow_imp.g_varchar2_table(213) := 'EFDF6F4DCDEDD8BAF338BEF3E3A7F1C37F7F11DB769FD5BF0ADABF4D876DE98ACA26AC7E6D3F1E7D7C9DEA104EA2B545B3435043F572962F73FC296AB85FDA01F07DA81F7E7FA9B676C443B6251798C9B6A1EAE077316A05E904251178F8078FE3B77F58';
wwv_flow_imp.g_varchar2_table(214) := '8F33E535EAD1D8F9965BF68E1DBF88BF3DBD4D8D706DC2B113E7D1DED1AD1DA0CDEE809CE5CB3196ACA6E042DFD688E017371D2E012600E192B6C0761CAA739017A774EFF440AE4A0C12038AFAE4E94BF8EDFFBE8ACF7FFDAFDE7719BC5461DE779EF378';
wwv_flow_imp.g_varchar2_table(215) := '805367AAF0C4B3DBF1D7C75FC7D1E367E176B9B47C0C75C6EFBDD82BAB404DC3E4224E0DFB6B1514C04AD20149E2215799CB9D0352279DE23CEAF47FC79EE3F8F6BF3D89EFFDEC05ECDA770E661E1068686CC5C62D47F0BF7F5CA3E6F777A1B252F302CE';
wwv_flow_imp.g_varchar2_table(216) := '37301DAA6DAF39CB3CBF1C636F3CC5FF5120600126000113B2809B050CC3E69D7F4E552302A9E983D5EFC930D463372FE7EBDF0D4DADDE7719FCFECF9EC36FFFB011474E569AE6B307DADBBB70F8E825FCFDE9AD7861F5769C3FAFFFAE7976BB13D2F1A7';
wwv_flow_imp.g_varchar2_table(217) := 'AB2917EFC55E2A11F0D53054CBD96C0E78EF1C903A25656A5F1C2A09D2895317F19FFFF32ABEFF93E7B161DB29B429BB50D53B98E5CA7DFA65E7AAF1C2CB7BF1D7BFAFC79E92E368696DD7DE841C2B32CD92AAA6D7E418F28EB4C08055BE1867F8046CE1';
wwv_flow_imp.g_varchar2_table(218) := 'DB14B76435014375FAF239032969794851C9805C50268FE93A3435B762DBAEA3F8D57FBE845FFDEEEA1BCEB4B476EA1617D2F55A5A3A71E4D8453CF3FC76AC59BB0B972E55A9337EBD735B9B3D4E75B20390AA3A046FC7AFFE46947D491DA56EA9AA8E49';
wwv_flow_imp.g_varchar2_table(219) := 'C903207F43E3CBE572E3E4994BF8E3A3EBF0B3FFB71A1B552250DFA8DF996A54C1E75524B93B71EA32FEF1D24ED5F9EFC08953E52A69D1DF1FE5D89063245519CA348B8CECC863E017054224C0042044B02CF646017931935BCA64C858DE923490A14CF9';
wwv_flow_imp.g_varchar2_table(220) := 'DC818387CF79DF70E627BF7E096B371F53675CFA2FBC37D634B0BF5A5A3AB0B7F42C9E7A6E0B56AFD985CB1535902BFDFD2E55CDAD5F1DFECD437AE63024246540AECAF7BB9C30AF207594BA4A9D25F1930450A70A7201E8895397F03F7F7A1D3FFDF50B';
wwv_flow_imp.g_varchar2_table(221) := '58B3FE28EA1BA2231190B3FBD20367F0E4B39BBD1DFFB9F24A7476E9CFEFCBB1909C3210726CC831227FEB98C5C63A8C229C024C00C2A9CD6DC150C3D60989196A446010E4C241E9E40239CB39535689FF7B74033EFFF063F8CB133B5151A57FEF7C20CD';
wwv_flow_imp.g_varchar2_table(222) := 'D3DCDCEEBDB7FB8F8FADC3864DA5B852D3A0559C58C43993AF5E68A7464DE44E0BC330DFF0AF611890BA4B122073D871CE24403D068DAFF20B35F8F3DF37E2ABDFF93B9E7EA1148D4DED1AA504BE8ADCBFBF76C341FC4125256B37EC4755B55E1B4B4D0C';
wwv_flow_imp.g_varchar2_table(223) := 'C306D9F7E51848491F84F8C434C8B1017E51208C02B6306E8B9BA2C09B0272A6189F90863435DC99AA5E00BDF39C867E47D7D6D68E57D7EEC3D7BFF777FCE857ABB1BBF47C40575DBF59D17E7EA9AA6E5243FC07F0C8A3AF79EFED6E57F5E867955E9F96';
wwv_flow_imp.g_varchar2_table(224) := '4E324575FAA9EA473CA493E87561933C2131482CA9AA8DE54762D4AD7AAB9A577FF6C51DF8D2371FC31F1EDD8A33E575BA45F9BC5EB77C00D3994A35A2B31D7F79EC75941E38852ECDCF61F06E54EDE3D73C64DF9763408E05EF73FC072408AF001380F0';
wwv_flow_imp.g_varchar2_table(225) := '7A736B3D0838E212206789F216A6328F6CB7EBBFCBA05C9075F8E839FCE7FFACC6F77FFE3CD66F39E1FD10A21E36AB1EEA3FE13060A8E56EFC964EE1C2C55ABCB07A0F9E52C3C0070F9F4657A7DE10B0CDE6F0DEDE959E950F6F0719978858FD9269A054';
wwv_flow_imp.g_varchar2_table(226) := '95DCA4AB298DF8C474D854EC3AB1B6B57562FDE683F8C9AFFF81DFFC7E2D8E9FAA468F9F42F8F6A6EB61739E1E1E03EA1BDA50B2FF2C1E7B72135E5CBD03E7CA2B20D3123D2EECC383D77F1A9FECEBB2CFFBB01A17A1404805980084949785FB2360B3C7';
wwv_flow_imp.g_varchar2_table(227) := '41AE72974E426E7992174D7FD6BF7E59E9A4CF9557E10F7F59879FFFC7CB78FED503A8A96BBD613E3E21A1EF372E727B3C9072AE952BBF9F2BAF5167FCFBF1CC0B5B71E2E479B4B5775C7BDAAFFF1B32159224532179F0C6AA62F7AB00D32E6CC0EE7022';
wwv_flow_imp.g_varchar2_table(228) := '39251B32DA21D70B880534BE5AD4B4CBAE9293F8F7FFF73C7EFFC74D387AA2F286F66A6FEFEEFBDD0655FBDAED6F6D58AED590F727D8BAF3049E55EDBB7E6329AAABEBFA2EE3ADD57BFCCDEE88F7B6AFECD30989E6B88EA3C740C2F22037126E015BB837';
wwv_flow_imp.g_varchar2_table(229) := 'C8ED51A03F01490412D419627AE65075563C1871CEE4FE56E9F3F9F2F3D578E2996DDE4F23FCE3DFB6E26C79EDD544A0E793BF37CBEAEA74A9A4A1C5DB019C3E53857FA8E1E7A79E531DCDF1B280CEF86594432EF892ABE5AD7CC197C42E0662212636CD';
wwv_flow_imp.g_varchar2_table(230) := '1181D6F62EECD87D1C3FFCF767F19BFF7E1DFB8F5CF2DE265A7EB11E7237C69B0D7AD32FF29914F290C7EDC1E58A7AAC59B70F7FFAEBEBD8B1F3306A6B9BE429ED1FD96753D30743F661D9977563D3AE0057A4800F024C007C40E222911390ABC853D373';
wwv_flow_imp.g_varchar2_table(231) := '91963104CE8454D8EC7D9FB5F75553193A5EB7E910BEF5A327F1BD9FBF88479FD8AA3A7757AFAB3435B7A98EE508FEF2B78D78EEA56D282BAFEC75D93E9F300C783B3B75D69B9E35CC3BCA61183CF4AE9989858CFCA42B1BEF68883A6B8632BBF6BC3FFF';
wwv_flow_imp.g_varchar2_table(232) := '2FD97F063FFBF5F3F8E60F9FC56BEBF7ABE99FDE3F64AAABAB1D1BB71CF4BE47C3DF9EDA80C347CEA153732A47EA68B3C779A773D2BC896B2E64DF95C7F9E39B00970ABF005F85C26FCE2DFA2DA03A50B94E2035C73B2290909409C366F7BB946B2BC819';
wwv_flow_imp.g_varchar2_table(233) := 'DFA9D317B179FB313564DC7B0220B776959DAB424D6D3D743FB5C56E77223965A0AAF7206FE760183CE4AEB5C3CDFF171B395B964FB54B4ECE86CD1E77F3223EFF7DA9A2067BF69DE9B3439721FF0387CEE1D2E56AC83EE173E1372D68B33920FB646AFA';
wwv_flow_imp.g_varchar2_table(234) := '20EF70BF247B80017E5120DA05F86A14ED2DC4FADD2060579D4252721632AEBD0DAE331130A2EFC5F6EA10F020A4670D85BCB98B1140C2028B7D89557C621A32D4888074AA621975046A9F93337CB9A02F3D2B1FB24FCABE1975F5344D8558D148083001';
wwv_flow_imp.g_varchar2_table(235) := '88843AB719B080611890DBA9E43EF3D4B441DEE901C3B0055C6E2005C8F6E5DE77E9B4A463887326A9E2A22F39519532C9B70131144B31155B318E64E565FB92D0497D64DF937DD030D8C6916C136E5B5F20B2AF98FAF5E69A14F00AC80BB2F74C4C4D0F';
wwv_flow_imp.g_varchar2_table(236) := 'A4650C417C623A8C702702AA03908EE05AA7209D9661B053F0365010FE310CE38D4420CF3B9522D6508F05A1689F8B30D43E25FB569ADAC7E4DDFAE4964679CCE702B8609F027C3232024C0022E3CEAD8640C0EE70AAF9F66C640C2850FF1F08475C6208';
wwv_flow_imp.g_varchar2_table(237) := 'B6F25691861AD6978BD7E4FD0BE42CD51197F0D693FC2D2402622CD6622EF6D20621D9D01B853AD43E24D7705CDDA7B221FBD81B4FF17F1430BD001300D3372103B85940CECCE2D51C726A5A2EA4B390110279ECE6E574FF968BD3E4A2AFB4F4C1F0DEBE';
wwv_flow_imp.g_varchar2_table(238) := '66D7BF584DB70E565F4FDA40ECD3D419B9B485FC1D2C13D957649F917D47F621D997E4B16095CF726E16E0DF911260021029796E37E402727628C3C5723F766AC660C86D840860E8D86677406E534BCF1C76F5A22F8713FC8AAC805C782717E079DB2425';
wwv_flow_imp.g_varchar2_table(239) := '1BD246BA35320C1B641F91A442F619D977641FD22D8FEB5120DA059800447B0BB17E4111905BB35252732043C76F7E1AA161F45FB65AE6DAD960BAEAF813BCD718F8B05EFF257389200A1886E1BDCD325DB5919CB93B643AC6F0A19DD4327647FCD5C42E';
wwv_flow_imp.g_varchar2_table(240) := '6B98F74398EC0E2676416C9A7E8BE2029113B0456ED3DC3205C22F6053C3F50989F216BC8390ACCE181D7189BD56C2DBF1ABA4E1ADABBD79B8F48A15254F78CFE2E353909A96A7DA7720A40D7BAB9A432509F27E0372F1A62476369BFE9B4CF5B60D3E4E';
wwv_flow_imp.g_varchar2_table(241) := '816816E02B5A34B70EEB163201F904B6F88434A4A9A981B4CCABF7EADBD410BF7402CE8454C8636F0E03ABA1E1905584058744C0B0D971F576BDC148556D2CC3F936D5C14B1BCBE3D2BE691943109F9806D917C0AF080970B39114600210497D6E3B2A04';
wwv_flow_imp.g_varchar2_table(242) := '647A20397520A44348CB1CA2868107421E8B8ACAB112010BC82D7B29693990B6953696B666FB06CCCA0262408009400C342243088680A1CE041DDE1FC087B963F0CB5C0286B76D6514006C5F44CB17EB115901260091F5E7D62940010A50800211116002';
wwv_flow_imp.g_varchar2_table(243) := '1011766E940214A080D505187FA405980044BA05B87D0A50800214A0400404980044009D9BA4000528607501C61F79012600916F03D6800214A000052810760126006127E7062940010A585D80F14783001380686805D6810214A0000528106601260061';
wwv_flow_imp.g_varchar2_table(244) := '06E7E62840010A585D80F14787001380E86807D6820214A0000528105601260061E5E6C62840010A585D80F1478B001380686909D6830214A0000528104601260061C4E6A62840010A585D80F1478F001380E8690BD6840214A0000528103601260061A3';
wwv_flow_imp.g_varchar2_table(245) := 'E6862840010A585D80F14793001380686A0DD6850214A000052810260126006182E6662840010A585D80F14797001380E86A0FD6860214A000052810160126006161E6462840010A585D80F1479B001380686B11D6870214A000052810060126006140E6';
wwv_flow_imp.g_varchar2_table(246) := '262840010A585D80F1479F001380E86B13D6880214A000052810720126002127E6062840010A585D80F147A3001380686C15D6890214A00005281062012600210666F114A00005AC2EC0F8A35380094074B60B6B45010A5080021408A900138090F2B270';
wwv_flow_imp.g_varchar2_table(247) := '0A508002561760FCD12AC004205A5B86F5A200052840010A84508009400871593405284001AB0B30FEE815600210BD6DC39A51800214A000054226C0042064B42C980214A080D505187F340B30D101E8C20000062B494441540188E6D661DD2840010A50';
wwv_flow_imp.g_varchar2_table(248) := '800221126002102258164B010A50C0EA028C3FBA0598004477FBB07614A000052840819008300108092B0BA5000528607501C61FED024C00A2BD85583F0A50800214A040080498008400954552800214B0BA00E38F7E012600D1DF46AC21052840010A50';
wwv_flow_imp.g_varchar2_table(249) := '20E8024C00824ECA022940010A585D80F19B41800980195A8975A400052840010A04598009409041591C05284001AB0B307E7308300130473BB19614A00005284081A00A3001082A270BA3000528607501C66F16012600666929D6930214A00005281044';
wwv_flow_imp.g_varchar2_table(250) := '01260041C4645114A00005AC2EC0F8CD23C004C03C6DC59A52800214A000058226C0042068942C880214A080D50518BF9904980098A9B558570A50800214A04090049800040992C550800214B0BA00E3379700130073B5176B4B010A50800214088A0013';
wwv_flow_imp.g_varchar2_table(251) := '80A030B2100A508002561760FC6613600260B616637D2940010A508002411060021004441641010A50C0EA028CDF7C024C00CCD766AC31052840010A5020600126000113B2000A508002561760FC6614600260C656639D2940010A508002010A30010810';
wwv_flow_imp.g_varchar2_table(252) := '90AB53800214B0BA00E337A700130073B61B6B4D010A508002140848800940407C5C990214A080D50518BF5905980098B5E5586F0A50800214A04000024C0002C0E3AA14A00005AC2EC0F8CD2BC004C0BC6DC79A53800214A00005B405980068D371450A';
wwv_flow_imp.g_varchar2_table(253) := '508002561760FC6616600260E6D663DD2940010A5080029A024C0034E1B81A05284001AB0B307E730B30013077FBB1F614A000052840012D0126005A6C5C890214A080D50518BFD905980098BD05597F0A50800214A080860013000D34AE42010A50C0EA';
wwv_flow_imp.g_varchar2_table(254) := '028CDFFC024C00CCDF868C800214A0000528E0B7001300BFC9B80205284001AB0B30FE58106002100BADC8182840010A5080027E0A3001F0138C8B53800214B0BA00E38F0D012600B1D18E8C820214A0000528E097001300BFB8B83005284001AB0B30FE';
wwv_flow_imp.g_varchar2_table(255) := '58116002102B2DC9382840010A5080027E083001F0038B8B52800214B0BA00E38F1D012600B1D3968C840214A0000528E0B30013009FA9B82005284001AB0B30FE58126002104BADC9582840010A5080023E0A3001F0118A8B51800214B0BA00E38F2D01';
wwv_flow_imp.g_varchar2_table(256) := '2600B1D59E8C860214A0000528E0930013009F98B81005284001AB0B30FE58136002106B2DCA782840010A5080023E083001F001898B50800214B0BA00E38F3D012600B1D7A68C880214A0000528D0AF0013807E89B80005284001AB0B30FE5814600210';
wwv_flow_imp.g_varchar2_table(257) := '8BADCA982840010A508002FD083001E807884F53800214B0BA00E38F4D012600B1D9AE8C8A0214A0000528D0A70013803E79F82405284001AB0B30FE5815600210AB2DCBB82840010A5080027D083001E803874F51800214B0BA00E38F5D012600B1DBB6';
wwv_flow_imp.g_varchar2_table(258) := '8C8C0214A0000528D0AB0013805E69F80405284001AB0B30FE5816600210CBADCBD82840010A508002BD083001E805860F53800214B0BA00E38F6D012600B1DDBE8C8E0214A0000528D0A30013801E59F82005284001AB0B30FE5817600210EB2DCCF828';
wwv_flow_imp.g_varchar2_table(259) := '40010A5080023D083001E801850F51800214B0BA00E38F7D012600B1DFC68C900214A0000528F0360126006F23E10314A00005AC2EC0F8AD20C004C00AADCC182940010A50800237093001B809847F52800214B0BA00E3B7860013006BB433A3A4000528';
wwv_flow_imp.g_varchar2_table(260) := '40010ADC20C004E0060EFE41010A50C0EA028CDF2A024C00ACD2D28C930214A0000528709D001380EB30F82B05284001AB0B307EEB083001B04E5B33520A50800214A0C09B024C00DEA4E02F14A00005AC2EC0F8AD24C004C04AADCD582940010A508002';
wwv_flow_imp.g_varchar2_table(261) := '6F083001780382FFA3000528607501C66F2D012600D66A6F464B010A50800214F00A3001F032F01F0A508002561760FC5613600260B51667BC14A0000528400125C0044021F09B0214A080D50518BFF504980058AFCD1931052840010A50004C00B81350';
wwv_flow_imp.g_varchar2_table(262) := '800214B0BC0001AC28C004C08AADCE982940010A50C0F2024C002CBF0B10800214B0BA00E3B7A60013006BB63BA3A600052840018B0B3001B0F80EC0F0294001AB0B307EAB0A3001B06ACB336E0A50800214B0B40013004B373F83A70005AC2EC0F8AD2B';
wwv_flow_imp.g_varchar2_table(263) := 'C004C0BA6DCFC82940010A50C0C2024C002CDCF80C9D0214B0BA00E3B7B20013002BB73E63A70005284001CB0A3001B06CD333700A50C0EA028CDFDA02FF3F000000FFFF563A17450000000649444154030031196BE1BC060CD70000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(264) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14007023406439803153)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14007025306976803157)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14007025523198803157)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14007025467906803157)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(14007024924488803155)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(14007025162341803156)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(14007025296465803156)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/initialize_shopping_cart_header
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(14245447023657162808)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_name=>'Initialize Shopping Cart Header'
,p_static_id=>'initialize-shopping-cart-header'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Initialize shopping cart navigation bar to show appropriate icon and count',
'DECLARE',
'    l_cnt NUMBER := manage_orders.get_quantity;',
'BEGIN',
'    IF l_cnt > 0 THEN',
'        :SHOPPING_CART_ITEMS := l_cnt;',
'        :SHOPPING_CART_ICON := ''fa-cart-full'';',
'    ELSE',
'        :SHOPPING_CART_ITEMS := '''';',
'        :SHOPPING_CART_ICON := ''fa-cart-empty'';',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>'SH256:JPmaQNFrFLcPIRwLT3zQ4ou2S_Cu_NEnF1ywmf5B6XE'
,p_created_on=>wwv_flow_imp.dz('20260703061907Z')
,p_updated_on=>wwv_flow_imp.dz('20260703061907Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/logic/application_items/shopping_cart_icon
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14245377095224152974)
,p_name=>'SHOPPING_CART_ICON'
,p_protection_level=>'I'
,p_version_scn=>'SH256:eImmQLcbGJ0ALabx1ei_htL1UDYhjKvG0kkTG4MYELs'
,p_created_on=>wwv_flow_imp.dz('20260703061728Z')
,p_updated_on=>wwv_flow_imp.dz('20260703061728Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/logic/application_items/shopping_cart_items
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14245650123694501419)
,p_name=>'SHOPPING_CART_ITEMS'
,p_protection_level=>'I'
,p_version_scn=>'SH256:eDE8bt6aBQsliaourgqGXXCf4Ed3n7ep63CCeK5Dv5g'
,p_created_on=>wwv_flow_imp.dz('20260703061745Z')
,p_updated_on=>wwv_flow_imp.dz('20260703061745Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(14007026389855803159)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007258299920805996)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007241591175805972)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(14007241591175805972)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14007242294341805974)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14007241844483805973)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/clothing_lookup_clothing
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007164258491805877)
,p_lov_name=>'CLOTHING_LOOKUP.CLOTHING'
,p_static_id=>'clothing-lookup-clothing'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CLOTHING_LOOKUP'
,p_return_column_name=>'CLOTHING_ID'
,p_display_column_name=>'CLOTHING'
,p_default_sort_column_name=>'CLOTHING'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Aem38_f3XWdbJmYXxuSmHbGwdUQ6jCd__gXaEWiGoCU'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/color_lookup_color
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007162826399805875)
,p_lov_name=>'COLOR_LOOKUP.COLOR'
,p_static_id=>'color-lookup-color'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'COLOR_LOOKUP'
,p_return_column_name=>'COLOR_ID'
,p_display_column_name=>'COLOR'
,p_default_sort_column_name=>'COLOR'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:7proC5Oyw4NKZY12muqTqc4c_vceYOlQ_Gbz35mgNkc'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/department_lookup_department
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007163500144805876)
,p_lov_name=>'DEPARTMENT_LOOKUP.DEPARTMENT'
,p_static_id=>'department-lookup-department'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPARTMENT_LOOKUP'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT'
,p_default_sort_column_name=>'DEPARTMENT'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:laquniPeB-Nbua7qLXrvreSslPZLhP2XYWuJ_5fk8VU'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14007265427290806003)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(14007265427290806003)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14007265766208806003)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14007026612876803159)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(14007019713629803143)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14007278701155806025)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14007019905085803143)
,p_short_name=>'Products'
,p_static_id=>'products'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14007020682497803144)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:uQ4JZ2SNi6_ApHjT-kqrEfO43wbND5yijbsMF-bW90c'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260704052830Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14007019052580803142)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14007023652503803154)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(14007019349191803142)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Products'
,p_alias=>'HOME'
,p_step_title=>'ACME Shop'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2528119710305719084
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260704052716Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007042278669803306)
,p_plug_name=>'ACME Shop'
,p_static_id=>'acme-shop'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007039689278803185)
,p_plug_name=>'Button Bar'
,p_static_id=>'button-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_source=>'<div id="active_facets"></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007038433321803179)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(14007038308058803179)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'show_charts', 'N',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y',
  'total_row_count_label', 'Total Products')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260704015243Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013316664612283843)
,p_name=>'P1_CLOTHING_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14007038433321803179)
,p_prompt=>'Clothing'
,p_source=>'CLOTHING_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CLOTHING_LOOKUP.CLOTHING'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20260704015042Z')
,p_updated_on=>wwv_flow_imp.dz('20260704015243Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013316528251283842)
,p_name=>'P1_COLOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14007038433321803179)
,p_prompt=>'Color'
,p_source=>'COLOR_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'COLOR_LOOKUP.COLOR'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20260704015042Z')
,p_updated_on=>wwv_flow_imp.dz('20260704015243Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013316403596283841)
,p_name=>'P1_DEPARTMENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007038433321803179)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DEPARTMENT_LOOKUP.DEPARTMENT'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20260704015042Z')
,p_updated_on=>wwv_flow_imp.dz('20260704015042Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007038959502803182)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007038433321803179)
,p_prompt=>'Search'
,p_source=>'COLOR_ID,DEPARTMENT_ID,PRODUCT_NAME,IMAGE_MIME_TYPE,IMAGE_FILENAME,IMAGE_CHARSET,CLOTHING_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007039330529803184)
,p_name=>'P1_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14007038433321803179)
,p_prompt=>'Unit Price'
,p_source=>'UNIT_PRICE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<10;|10,10 - 20;10|20,20 - 25;20|25,25 - 35;25|35,>=35;35|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260704015243Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007038308058803179)
,p_plug_name=>'Search Results'
,p_static_id=>'search-results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleA'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "PRODUCT_ID",',
'    "PRODUCT_NAME",',
'    "UNIT_PRICE",',
'    "PRODUCT_DETAILS",',
'    "PRODUCT_IMAGE",',
'    "IMAGE_MIME_TYPE",',
'    "IMAGE_FILENAME",',
'    "IMAGE_CHARSET",',
'    "IMAGE_LAST_UPDATED",',
'    "COLOR_ID",',
'    (',
'            SELECT l1."COLOR"',
'            FROM   "COLOR_LOOKUP" l1',
'            WHERE  l1."COLOR_ID" = m."COLOR_ID") "COLOR_ID_L$1",',
'    "DEPARTMENT_ID",',
'    (',
'            SELECT l2."DEPARTMENT"',
'            FROM   "DEPARTMENT_LOOKUP" l2',
'            WHERE  l2."DEPARTMENT_ID" = m."DEPARTMENT_ID") "DEPARTMENT_ID_L$2",',
'    "CLOTHING_ID",',
'    (',
'            SELECT l3."CLOTHING"',
'            FROM   "CLOTHING_LOOKUP" l3',
'            WHERE  l3."CLOTHING_ID" = m."CLOTHING_ID") "CLOTHING_ID_L$3",',
'    b.brand',
'FROM   "PRODUCTS" m,',
'    json_table (m.product_details, ''$'' columns ( brand varchar2(4000) path ''$.brand'') ) b'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P1_ORDER_BY", "orderBys": [{"key":"PRODUCT_NAME","expr":"\"PRODUCT_NAME\" asc"},{"key":"IMAGE_MIME_TYPE","expr":"\"IMAGE_MIME_TYPE\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260704020237Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14007040839693803304)
,p_region_id=>wwv_flow_imp.id(14007038308058803179)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PRODUCT_NAME'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small>&BRAND.</small><br />',
'<b class="u-success-text u-pullRight" id="message_&PRODUCT_ID.">',
'{if QUANTITY/} &QUANTITY. in cart {endif/}',
'</b>',
'<b>$&UNIT_PRICE.</b>'))
,p_body_adv_formatting=>false
,p_body_column_name=>'IMAGE_MIME_TYPE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'PRODUCT_IMAGE'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'PRODUCT_ID'
,p_updated_on=>wwv_flow_imp.dz('20260704020237Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14013316929657283846)
,p_card_id=>wwv_flow_imp.id(14007040839693803304)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:P18_PRODUCT_ID:&PRODUCT_ID.'
,p_updated_on=>wwv_flow_imp.dz('20260704020237Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007040058163803185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007039689278803185)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:RR,1::'
,p_icon_css_classes=>'fa-undo'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007041766356803306)
,p_name=>'P1_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007038308058803179)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'PRODUCT_NAME'
,p_prompt=>'Order By'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Product Name;PRODUCT_NAME,Image Mime Type;IMAGE_MIME_TYPE'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14013317262562283849)
,p_name=>'Show Success Message'
,p_static_id=>'show-success-message'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007038308058803179)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260704051222Z')
,p_updated_on=>wwv_flow_imp.dz('20260704051222Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14013317327964283850)
,p_event_id=>wwv_flow_imp.id(14013317262562283849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var productAction   = this.data.P18_ACTION,',
    'productQuantity = this.data.P18_QUANTITY,',
    'productCard$  = apex.jQuery("#message_" + this.data.P18_PRODUCT_ID);',
    '',
    'if (productAction === ''ADD'') {',
    '        productCard$.text("Added " + productQuantity + " to cart!");',
    '} else if (productAction === ''EDIT'') {',
    '        productCard$.text("Updated quantity to " + productQuantity + "!");',
    '} else if (productAction === ''DELETE'') {',
    '        productCard$.text("Removed from cart!");',
    ' }')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260704051222Z')
,p_updated_on=>wwv_flow_imp.dz('20260704051222Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14413577588884714101)
,p_name=>'Update Shopping Cart Header'
,p_static_id=>'update-shopping-cart-header'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007038308058803179)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(this.data.P18_SHOPPING_CART_ITEMS) > 0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260704051222Z')
,p_updated_on=>wwv_flow_imp.dz('20260704051222Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14413577657092714102)
,p_event_id=>wwv_flow_imp.id(14413577588884714101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '// Update Badge Text',
    'apex.jQuery(".js-shopping-cart-item .t-Button-badge").text(this.data.P18_SHOPPING_CART_ITEMS);',
    '',
    '// Update Icon',
    'apex.jQuery(".js-shopping-cart-item .t-Icon").removeClass(''fa-cart-empty'').addClass(''fa-cart-full'');')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260704051222Z')
,p_updated_on=>wwv_flow_imp.dz('20260704051222Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14413577753570714103)
,p_event_id=>wwv_flow_imp.id(14413577588884714101)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code_1'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '// Update Badge Text',
    'apex.jQuery(".js-shopping-cart-item .t-Button-badge").text('''');',
    '',
    '// Update Icon',
    'apex.jQuery(".js-shopping-cart-item .t-Icon").removeClass(''fa-cart-full'').addClass(''fa-cart-empty'');')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260704051222Z')
,p_updated_on=>wwv_flow_imp.dz('20260704051222Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007047348888803311)
,p_plug_name=>'Order Status'
,p_static_id=>'order-status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14007047706434803312)
,p_region_id=>wwv_flow_imp.id(14007047348888803311)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14007048278938803312)
,p_chart_id=>wwv_flow_imp.id(14007047706434803312)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'CUSTOMER_ORDER_PRODUCTS'
,p_include_rowid_column=>false
,p_series_type=>'pie'
,p_items_value_column_name=>'ORDER_ID'
,p_items_label_column_name=>'ORDER_STATUS'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007048837742803312)
,p_plug_name=>'Product Reviews'
,p_static_id=>'product-reviews'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14007049212141803313)
,p_region_id=>wwv_flow_imp.id(14007048837742803312)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14007050937008803314)
,p_chart_id=>wwv_flow_imp.id(14007049212141803313)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'PRODUCT_REVIEWS'
,p_include_rowid_column=>false
,p_series_type=>'bar'
,p_items_value_column_name=>'AVG_RATING'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(14007049792855803313)
,p_chart_id=>wwv_flow_imp.id(14007049212141803313)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(14007050382221803314)
,p_chart_id=>wwv_flow_imp.id(14007049212141803313)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007043104181803308)
,p_plug_name=>'Top 10 Products'
,p_static_id=>'top-10-products'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14007043526365803308)
,p_region_id=>wwv_flow_imp.id(14007043104181803308)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14007045271815803310)
,p_chart_id=>wwv_flow_imp.id(14007043526365803308)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'PRODUCT_ORDERS'
,p_include_rowid_column=>false
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_aggregate_function=>'SUM'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(14007044008923803309)
,p_chart_id=>wwv_flow_imp.id(14007043526365803308)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(14007044648690803309)
,p_chart_id=>wwv_flow_imp.id(14007043526365803308)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007045879421803310)
,p_plug_name=>'Top 5 Stores'
,p_static_id=>'top-5-stores'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14007046237807803311)
,p_region_id=>wwv_flow_imp.id(14007045879421803310)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14007046791051803311)
,p_chart_id=>wwv_flow_imp.id(14007046237807803311)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'STORE_ORDERS'
,p_include_rowid_column=>false
,p_series_type=>'pie'
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'STORE_NAME'
,p_aggregate_function=>'SUM'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260702070552Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070552Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Clothing Lookup'
,p_alias=>'CLOTHING-LOOKUP1'
,p_page_mode=>'MODAL'
,p_step_title=>'Clothing Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007072330976803722)
,p_plug_name=>'Clothing Lookup'
,p_static_id=>'clothing-lookup'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CLOTHING_LOOKUP'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007072435296803722)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_CLOTHING_ID:\#CLOTHING_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007072435296803722
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007074413500803729)
,p_db_column_name=>'CLOTHING'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Clothing'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007073998087803727)
,p_db_column_name=>'CLOTHING_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Clothing ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007181685471805907)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLOTHING'
,p_sort_column_1=>'CLOTHING'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007074856397803731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007072330976803722)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4::'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007075267559803731)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007072330976803722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007075682191803732)
,p_event_id=>wwv_flow_imp.id(14007075267559803731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007072330976803722)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Clothing Lookup'
,p_alias=>'CLOTHING-LOOKUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Clothing Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070555Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007068277466803718)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007065463626803617)
,p_plug_name=>'Clothing Lookup'
,p_static_id=>'clothing-lookup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CLOTHING_LOOKUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070555Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007068676044803719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007068277466803718)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007069145172803719)
,p_button_id=>wwv_flow_imp.id(14007068676044803719)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007070445256803720)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007068277466803718)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P4_CLOTHING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007069670165803720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007068277466803718)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_CLOTHING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007070013657803720)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007068277466803718)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P4_CLOTHING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007067296072803717)
,p_name=>'P4_CLOTHING'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007065463626803617)
,p_item_source_plug_id=>wwv_flow_imp.id(14007065463626803617)
,p_prompt=>'Clothing'
,p_source=>'CLOTHING'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007065895633803619)
,p_name=>'P4_CLOTHING_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007065463626803617)
,p_item_source_plug_id=>wwv_flow_imp.id(14007065463626803617)
,p_prompt=>'Clothing ID'
,p_source=>'CLOTHING_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007071658660803722)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007071658660803722
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007070823575803721)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007065463626803617)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Clothing Lookup'
,p_static_id=>'initialize-form-clothing-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007070823575803721
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007071228914803721)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007065463626803617)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Clothing Lookup'
,p_static_id=>'process-form-clothing-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007071228914803721
,p_created_on=>wwv_flow_imp.dz('20260702070556Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070556Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Color Lookup'
,p_alias=>'COLOR-LOOKUP1'
,p_page_mode=>'MODAL'
,p_step_title=>'Color Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007084046401804134)
,p_plug_name=>'Color Lookup'
,p_static_id=>'color-lookup'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'COLOR_LOOKUP'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007084162142804134)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:RP:P6_COLOR_ID:\#COLOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007084162142804134
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007085827571804140)
,p_db_column_name=>'COLOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007085481266804138)
,p_db_column_name=>'COLOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Color ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007186158382805919)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLOR'
,p_sort_column_1=>'COLOR'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007086287266804141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007084046401804134)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6::'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007086603809804142)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007084046401804134)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007087018687804142)
,p_event_id=>wwv_flow_imp.id(14007086603809804142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007084046401804134)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Color Lookup'
,p_alias=>'COLOR-LOOKUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Color Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070559Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007079998193804130)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007078022440804028)
,p_plug_name=>'Color Lookup'
,p_static_id=>'color-lookup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'COLOR_LOOKUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070559Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007080362842804130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007079998193804130)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007080890965804131)
,p_button_id=>wwv_flow_imp.id(14007080362842804130)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007082174949804132)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007079998193804130)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_COLOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007081389046804131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007079998193804130)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P6_COLOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007081772857804131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007079998193804130)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_COLOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007078951391804129)
,p_name=>'P6_COLOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007078022440804028)
,p_item_source_plug_id=>wwv_flow_imp.id(14007078022440804028)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007078451887804029)
,p_name=>'P6_COLOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007078022440804028)
,p_item_source_plug_id=>wwv_flow_imp.id(14007078022440804028)
,p_prompt=>'Color ID'
,p_source=>'COLOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007083368819804133)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007083368819804133
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007082588848804132)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007078022440804028)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Color Lookup'
,p_static_id=>'initialize-form-color-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007082588848804132
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007082993330804133)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007078022440804028)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Color Lookup'
,p_static_id=>'process-form-color-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007082993330804133
,p_created_on=>wwv_flow_imp.dz('20260702070600Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070600Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007097002941804542)
,p_plug_name=>'Customers'
,p_static_id=>'customers'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007097169899804542)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RP:P8_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007097169899804542
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007098405921804546)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007099286082804549)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007098840610804548)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007190653699805923)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:EMAIL_ADDRESS'
,p_sort_column_1=>'FULL_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007099697730804550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007097002941804542)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8::'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007100032033804551)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007097002941804542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007100445971804551)
,p_event_id=>wwv_flow_imp.id(14007100032033804551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007097002941804542)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070603Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007092930635804538)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007090533616804437)
,p_plug_name=>'Customer'
,p_static_id=>'customer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070603Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007093326342804538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007092930635804538)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007093849394804539)
,p_button_id=>wwv_flow_imp.id(14007093326342804538)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007095196617804540)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007092930635804538)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007094339701804539)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007092930635804538)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007094796427804540)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007092930635804538)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007090950655804438)
,p_name=>'P8_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_item_source_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007091681424804537)
,p_name=>'P8_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_item_source_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007091295808804536)
,p_name=>'P8_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_item_source_plug_id=>wwv_flow_imp.id(14007090533616804437)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007096335041804541)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007096335041804541
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007095587180804540)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007090533616804437)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer'
,p_static_id=>'initialize-form-customer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007095587180804540
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007095926010804541)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007090533616804437)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer'
,p_static_id=>'process-form-customer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007095926010804541
,p_created_on=>wwv_flow_imp.dz('20260702070604Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070604Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Department Lookup'
,p_alias=>'DEPARTMENT-LOOKUP1'
,p_page_mode=>'MODAL'
,p_step_title=>'Department Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007115028451804968)
,p_plug_name=>'Department Lookup'
,p_static_id=>'department-lookup'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENT_LOOKUP'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007115111676804968)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007115111676804968
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007116815487804974)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007116481846804972)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007196356300805928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT'
,p_sort_column_1=>'DEPARTMENT'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007117298204804975)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007115028451804968)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007117641527804975)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007115028451804968)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007118012036804976)
,p_event_id=>wwv_flow_imp.id(14007117641527804975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007115028451804968)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Department Lookup'
,p_alias=>'DEPARTMENT-LOOKUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Department Lookup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070607Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007110695536804964)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007103354362804865)
,p_plug_name=>'Department Lookup'
,p_static_id=>'department-lookup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENT_LOOKUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007111094655804964)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007110695536804964)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007111509651804965)
,p_button_id=>wwv_flow_imp.id(14007111094655804964)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007112902442804966)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007110695536804964)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007112027393804965)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007110695536804964)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007112470970804966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007110695536804964)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007109670015804963)
,p_name=>'P10_DEPARTMENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007103354362804865)
,p_item_source_plug_id=>wwv_flow_imp.id(14007103354362804865)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007103741399804866)
,p_name=>'P10_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007103354362804865)
,p_item_source_plug_id=>wwv_flow_imp.id(14007103354362804865)
,p_prompt=>'Department ID'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007114269266804967)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007114269266804967
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007113308844804966)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007103354362804865)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department Lookup'
,p_static_id=>'initialize-form-department-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007113308844804966
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007113862585804967)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007103354362804865)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department Lookup'
,p_static_id=>'process-form-department-lookup'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007113862585804967
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070608Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Product Reviews'
,p_alias=>'PRODUCT-REVIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Reviews'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007120032780804978)
,p_plug_name=>'Product Reviews'
,p_static_id=>'product-reviews'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_REVIEWS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007120181637804978)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>14007120181637804978
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007122232178804985)
,p_db_column_name=>'AVG_RATING'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Avg Rating'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007121445944804982)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007121844247804984)
,p_db_column_name=>'RATING'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007122662310804986)
,p_db_column_name=>'REVIEW'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Review'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007200849375805932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:RATING:AVG_RATING:REVIEW:'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007122950913804988)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007120032780804978)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260702070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070609Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14007123444102804989)
,p_branch_action=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RR::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14007122950913804988)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260702070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070609Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Stores'
,p_alias=>'STORES'
,p_page_mode=>'MODAL'
,p_step_title=>'Stores'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007147782471805423)
,p_plug_name=>'Stores'
,p_static_id=>'stores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "STORE_ID",',
'       "STORE_NAME",',
'       "WEB_ADDRESS",',
'       "PHYSICAL_ADDRESS",',
'       "LATITUDE",',
'       "LONGITUDE",',
'       sys.dbms_lob.getlength( "LOGO" ) "LOGO",',
'       "LOGO_MIME_TYPE",',
'       "LOGO_FILENAME",',
'       "LOGO_CHARSET",',
'       "LOGO_LAST_UPDATED"',
'  from "STORES"'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007147897356805423)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_STORE_ID:\#STORE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007147897356805423
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007150735602805433)
,p_db_column_name=>'LATITUDE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007151661442805436)
,p_db_column_name=>'LOGO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Logo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:STORES:LOGO:STORE_ID::::::attachment'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007152842711805440)
,p_db_column_name=>'LOGO_CHARSET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Logo Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007152480803805439)
,p_db_column_name=>'LOGO_FILENAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Logo Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007153354856805441)
,p_db_column_name=>'LOGO_LAST_UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Logo Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007152039432805437)
,p_db_column_name=>'LOGO_MIME_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Logo Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007151160380805435)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007150319819805432)
,p_db_column_name=>'PHYSICAL_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Physical Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007149173997805427)
,p_db_column_name=>'STORE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Store ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007149593271805429)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Store Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007149910034805430)
,p_db_column_name=>'WEB_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Web Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007204287587805936)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_NAME:WEB_ADDRESS:PHYSICAL_ADDRESS:LATITUDE:LONGITUDE:LOGO'
,p_sort_column_1=>'STORE_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007153770252805443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007147782471805423)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007154190732805443)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007147782471805423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007154552724805444)
,p_event_id=>wwv_flow_imp.id(14007154190732805443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007147782471805423)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Store'
,p_alias=>'STORE'
,p_page_mode=>'MODAL'
,p_step_title=>'Store'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070612Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007143481674805418)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007135205920805310)
,p_plug_name=>'Store'
,p_static_id=>'store'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'STORES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070612Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007143826755805419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007143481674805418)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007144520486805419)
,p_button_id=>wwv_flow_imp.id(14007143826755805419)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007145857553805420)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007143481674805418)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007145044192805419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007143481674805418)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007145440944805420)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007143481674805418)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007137355472805412)
,p_name=>'P13_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Latitude'
,p_source=>'LATITUDE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007138125729805413)
,p_name=>'P13_LOGO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Logo'
,p_source=>'LOGO'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007139313979805414)
,p_name=>'P13_LOGO_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Logo Charset'
,p_source=>'LOGO_CHARSET'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007138966203805414)
,p_name=>'P13_LOGO_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Logo Filename'
,p_source=>'LOGO_FILENAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007139766741805415)
,p_name=>'P13_LOGO_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Logo Last Updated'
,p_source=>'LOGO_LAST_UPDATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007138524084805413)
,p_name=>'P13_LOGO_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Logo Mime Type'
,p_source=>'LOGO_MIME_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007137755278805412)
,p_name=>'P13_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Longitude'
,p_source=>'LONGITUDE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007136903320805411)
,p_name=>'P13_PHYSICAL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Physical Address'
,p_source=>'PHYSICAL_ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007135642309805311)
,p_name=>'P13_STORE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Store ID'
,p_source=>'STORE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007136136093805410)
,p_name=>'P13_STORE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Store Name'
,p_source=>'STORE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007136545261805411)
,p_name=>'P13_WEB_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_item_source_plug_id=>wwv_flow_imp.id(14007135205920805310)
,p_prompt=>'Web Address'
,p_source=>'WEB_ADDRESS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007147057051805422)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007147057051805422
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007146294866805421)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007135205920805310)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Store'
,p_static_id=>'initialize-form-store'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007146294866805421
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007146648811805421)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007135205920805310)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Store'
,p_static_id=>'process-form-store'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007146648811805421
,p_created_on=>wwv_flow_imp.dz('20260702070613Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070613Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Manage Products'
,p_alias=>'MANAGE-PRODUCTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Products'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007172570279805885)
,p_plug_name=>'Products'
,p_static_id=>'manage-products'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PRODUCT_ID",',
'       "PRODUCT_NAME",',
'       "UNIT_PRICE",',
'       sys.dbms_lob.getlength( "PRODUCT_DETAILS" ) "PRODUCT_DETAILS",',
'       sys.dbms_lob.getlength( "PRODUCT_IMAGE" ) "PRODUCT_IMAGE",',
'       "IMAGE_MIME_TYPE",',
'       "IMAGE_FILENAME",',
'       "IMAGE_CHARSET",',
'       "IMAGE_LAST_UPDATED",',
'       "COLOR_ID",',
'       "DEPARTMENT_ID",',
'       "CLOTHING_ID"',
'  from "PRODUCTS"'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007172666162805885)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_PRODUCT_ID:\#PRODUCT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007172666162805885
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007178320366805902)
,p_db_column_name=>'CLOTHING_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Clothing'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(14007164258491805877)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007177587542805900)
,p_db_column_name=>'COLOR_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(14007162826399805875)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007177961158805901)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(14007163500144805876)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007176791428805897)
,p_db_column_name=>'IMAGE_CHARSET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Image Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007176376021805896)
,p_db_column_name=>'IMAGE_FILENAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Image Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007177127232805899)
,p_db_column_name=>'IMAGE_LAST_UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Image Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007175955993805895)
,p_db_column_name=>'IMAGE_MIME_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Image Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007175113775805893)
,p_db_column_name=>'PRODUCT_DETAILS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Product Details'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:PRODUCTS:PRODUCT_DETAILS:PRODUCT_ID::::::attachment'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007173961783805889)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007175589319805894)
,p_db_column_name=>'PRODUCT_IMAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Product Image'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:PRODUCTS:PRODUCT_IMAGE:PRODUCT_ID::::::attachment'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007174306169805890)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007174776920805891)
,p_db_column_name=>'UNIT_PRICE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unit Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007222500742805954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:UNIT_PRICE:PRODUCT_DETAILS:PRODUCT_IMAGE:COLOR_ID:DEPARTMENT_ID:CLOTHING_ID'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007178747465805904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007172570279805885)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007179128510805904)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007172570279805885)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007179580227805904)
,p_event_id=>wwv_flow_imp.id(14007179128510805904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007172570279805885)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Product'
,p_alias=>'PRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'Product'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070616Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007168477889805881)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007157843574805774)
,p_plug_name=>'Product'
,p_static_id=>'product'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070616Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007168836775805882)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007168477889805881)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007169334627805882)
,p_button_id=>wwv_flow_imp.id(14007168836775805882)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007170630818805883)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007168477889805881)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007169889750805882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007168477889805881)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007170253921805883)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007168477889805881)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007164191686805877)
,p_name=>'P15_CLOTHING_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Clothing'
,p_source=>'CLOTHING_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CLOTHING_LOOKUP.CLOTHING'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007162796216805875)
,p_name=>'P15_COLOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Color'
,p_source=>'COLOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COLOR_LOOKUP.COLOR'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007163489627805876)
,p_name=>'P15_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT_LOOKUP.DEPARTMENT'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007161929847805874)
,p_name=>'P15_IMAGE_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Image Charset'
,p_source=>'IMAGE_CHARSET'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007161550362805874)
,p_name=>'P15_IMAGE_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Image Filename'
,p_source=>'IMAGE_FILENAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007162381629805875)
,p_name=>'P15_IMAGE_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Image Last Updated'
,p_source=>'IMAGE_LAST_UPDATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007161140264805873)
,p_name=>'P15_IMAGE_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Image Mime Type'
,p_source=>'IMAGE_MIME_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007160300229805873)
,p_name=>'P15_PRODUCT_DETAILS'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Product Details'
,p_source=>'PRODUCT_DETAILS'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007158212344805775)
,p_name=>'P15_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Product ID'
,p_source=>'PRODUCT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007160754666805873)
,p_name=>'P15_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007159508991805872)
,p_name=>'P15_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007159918474805872)
,p_name=>'P15_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_item_source_plug_id=>wwv_flow_imp.id(14007157843574805774)
,p_prompt=>'Unit Price'
,p_source=>'UNIT_PRICE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007171822439805884)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>14007171822439805884
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007171072587805883)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14007157843574805774)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product'
,p_static_id=>'initialize-form-product'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>14007171072587805883
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007171455007805884)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007157843574805774)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product'
,p_static_id=>'process-form-product'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007171455007805884
,p_created_on=>wwv_flow_imp.dz('20260702070617Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070617Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Order Information'
,p_alias=>'ORDER-INFORMATION'
,p_step_title=>'Order Information'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260702071623Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260703061159Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013313089913283807)
,p_plug_name=>'Items'
,p_static_id=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(14013312725327283804)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  o.line_item_id                Item,',
'        p.product_name                Product,',
'        o.unit_price,',
'        o.quantity,',
'        ( o.unit_price * o.quantity ) Subtotal,',
'        p.product_image',
'FROM   order_items o,',
'    products p',
'WHERE  p.product_id = o.product_id',
'AND  order_id = :P16_ORDER'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260703060327Z')
,p_updated_on=>wwv_flow_imp.dz('20260703060812Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14013313173160283808)
,p_region_id=>wwv_flow_imp.id(14013313089913283807)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PRODUCT'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Quantity: </b> &QUANTITY. <br>',
'<b>Unit Price: </b>&UNIT_PRICE.'))
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'PRODUCT_IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ITEM'
,p_updated_on=>wwv_flow_imp.dz('20260703060812Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013312822437283805)
,p_plug_name=>'Order Details'
,p_static_id=>'order-details'
,p_parent_plug_id=>wwv_flow_imp.id(14013312725327283804)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT o.order_id,',
'    o.order_datetime,',
'    o.customer_id,',
'    o.order_status,',
'    o.store_id,',
'    (SELECT Sum(unit_price * quantity)',
'        FROM   order_items i',
'        WHERE  i.order_id = o.order_id) total',
'FROM   orders o',
'WHERE  order_id = :P16_ORDER'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260702073145Z')
,p_updated_on=>wwv_flow_imp.dz('20260702073145Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14013312910163283806)
,p_region_id=>wwv_flow_imp.id(14013312822437283805)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> Order Placed:</b> &ORDER_DATETIME. <br>',
'<b> Status: </b>&ORDER_STATUS. <br>',
'<b> Total: </b>&TOTAL.'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260702073145Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013312725327283804)
,p_plug_name=>'Order: &P16_ORDER'
,p_static_id=>'order-p16-order'
,p_parent_plug_id=>wwv_flow_imp.id(14013312578261283802)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702073145Z')
,p_updated_on=>wwv_flow_imp.dz('20260702073145Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013312578261283802)
,p_plug_name=>'Thank you for your order!'
,p_static_id=>'thank-you-for-your-order'
,p_icon_css_classes=>'fa-heart'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702073145Z')
,p_updated_on=>wwv_flow_imp.dz('20260703061159Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013312656850283803)
,p_name=>'P16_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14013312578261283802)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702073145Z')
,p_updated_on=>wwv_flow_imp.dz('20260702073145Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Shopping Cart'
,p_alias=>'SHOPPING-CART'
,p_step_title=>'Shopping Cart'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'        width: 150px;',
'        height: 150px;',
'    }'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260703062132Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260703065952Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013313783063283814)
,p_plug_name=>'Order Information'
,p_static_id=>'order-information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063550Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14013313498994283811)
,p_plug_name=>'Shopping Cart'
,p_static_id=>'shopping-cart'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id item,',
'    p.product_image,',
'    p.product_id,',
'    p.product_name name,',
'    p.unit_price,',
'    n002               quantity,',
'    p.unit_price* n002 subtotal,',
'    b.brand',
'FROM   apex_collections a,',
'    products p,',
'    json_table (p.product_details, ''$'' columns ( brand varchar2(4000) path ''$.brand'') ) b',
'WHERE  collection_name = ''PRODUCTS''',
'AND    p.product_id = a.n001'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'Your shopping cart is empty!'
,p_no_data_found_icon_classes=>'fa-cart-empty'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260703062842Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063404Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14013313549407283812)
,p_region_id=>wwv_flow_imp.id(14013313498994283811)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'BRAND'
,p_body_adv_formatting=>true
,p_body_html_expr=>'Quantity: &QUANTITY.'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Unit Price: &UNIT_PRICE. </b> <BR>',
'<b>Subtotal: &SUBTOTAL. </b>'))
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'PRODUCT_IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ITEM'
,p_updated_on=>wwv_flow_imp.dz('20260703063237Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14013313647451283813)
,p_card_id=>wwv_flow_imp.id(14013313549407283812)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Edit'
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_PRODUCT_ID:&PRODUCT_ID.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-cart-edit'
,p_is_hot=>false
,p_updated_on=>wwv_flow_imp.dz('20260703063237Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14013314486049283821)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_button_name=>'Clear'
,p_static_id=>'clear'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Shopping Cart'
,p_button_position=>'CHANGE'
,p_button_condition=>'SHOPPING_CART_ITEMS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-cart-empty'
,p_created_on=>wwv_flow_imp.dz('20260703064000Z')
,p_updated_on=>wwv_flow_imp.dz('20260703064128Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14013314381800283820)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_button_name=>'Proceed'
,p_static_id=>'proceed'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Proceed to Checkout'
,p_button_position=>'CREATE'
,p_button_condition=>'SHOPPING_CART_ITEMS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_created_on=>wwv_flow_imp.dz('20260703064000Z')
,p_updated_on=>wwv_flow_imp.dz('20260703064128Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14013315526629283832)
,p_branch_name=>'Go to Orders'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_ORDER:&P17_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14013314381800283820)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260703065238Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065238Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14013315683865283833)
,p_branch_name=>'Go to Products'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14013314486049283821)
,p_branch_sequence=>20
,p_created_on=>wwv_flow_imp.dz('20260703065327Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065327Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013313859014283815)
,p_name=>'P17_CUSTOMER_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_prompt=>'Email Address'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063550Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013313945694283816)
,p_name=>'P17_CUSTOMER_FULLNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_prompt=>'Full Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063820Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063820Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013314154555283818)
,p_name=>'P17_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063820Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063820Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013314079437283817)
,p_name=>'P17_ORDER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063820Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063820Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14013314213630283819)
,p_name=>'P17_STORE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14013313783063283814)
,p_prompt=>'Store'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STORES.STORE_NAME as STORE_NAME,',
'    STORES.STORE_ID as STORE_ID',
'from STORES STORES'))
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'infinite_scroll', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703063820Z')
,p_updated_on=>wwv_flow_imp.dz('20260703063820Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14013314690911283823)
,p_validation_name=>'Validate Email'
,p_static_id=>'validate-email'
,p_validation_sequence=>20
,p_validation=>'P17_CUSTOMER_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter your email address'
,p_when_button_pressed=>wwv_flow_imp.id(14013314381800283820)
,p_associated_item=>wwv_flow_imp.id(14013313859014283815)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260703064614Z')
,p_updated_on=>wwv_flow_imp.dz('20260703064733Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14013314501579283822)
,p_validation_name=>'Validate Name'
,p_static_id=>'validate-name'
,p_validation_sequence=>10
,p_validation=>'P17_CUSTOMER_FULLNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter your name'
,p_when_button_pressed=>wwv_flow_imp.id(14013314381800283820)
,p_associated_item=>wwv_flow_imp.id(14013313945694283816)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260703064513Z')
,p_updated_on=>wwv_flow_imp.dz('20260703064733Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14013314765132283824)
,p_validation_name=>'Validate Store'
,p_static_id=>'validate-store'
,p_validation_sequence=>30
,p_validation=>'P17_STORE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a store'
,p_when_button_pressed=>wwv_flow_imp.id(14013314381800283820)
,p_associated_item=>wwv_flow_imp.id(14013314213630283819)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260703064655Z')
,p_updated_on=>wwv_flow_imp.dz('20260703064733Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14013315756717283834)
,p_name=>'Update Shopping Cart Header'
,p_static_id=>'update-shopping-cart-header'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14013313498994283811)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(this.data.P18_SHOPPING_CART_ITEMS) > 0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260703065913Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065913Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14013315889698283835)
,p_event_id=>wwv_flow_imp.id(14013315756717283834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '// Update Badge Text',
    'apex.jQuery(".js-shopping-cart-item .t-Button-badge").text(this.data.P18_SHOPPING_CART_ITEMS);',
    '',
    '// Update Icon',
    'apex.jQuery(".js-shopping-cart-item .t-Icon").removeClass(''fa-cart-empty'').addClass(''fa-cart-full'');')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703065913Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065913Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14013316273815283839)
,p_event_id=>wwv_flow_imp.id(14013315756717283834)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code_1'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '// Update Badge Text',
    'apex.jQuery(".js-shopping-cart-item .t-Button-badge").text('''');',
    '',
    '// Update Icon',
    'apex.jQuery(".js-shopping-cart-item .t-Icon").removeClass(''fa-cart-full'').addClass(''fa-cart-empty'');')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703065913Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065913Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14013316198555283838)
,p_event_id=>wwv_flow_imp.id(14013315756717283834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14013313498994283811)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703065913Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065913Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14013316307056283840)
,p_event_id=>wwv_flow_imp.id(14013315756717283834)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_1'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14013313498994283811)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260703065913Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065913Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14013314844348283825)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Checkout'
,p_static_id=>'checkout'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'MANAGE_ORDERS',
  'package_method', 'CREATE_ORDER',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14013314381800283820)
,p_process_success_message=>'Order successfully created: &P17_ORDER_ID.'
,p_internal_uid=>14013314844348283825
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14013314922665283826)
,p_page_process_id=>wwv_flow_imp.id(14013314844348283825)
,p_page_id=>17
,p_name=>'p_customer'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P17_CUSTOMER_FULLNAME'
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14013315050775283827)
,p_page_process_id=>wwv_flow_imp.id(14013314844348283825)
,p_page_id=>17
,p_name=>'p_customer_email'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P17_CUSTOMER_EMAIL'
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14013315333446283830)
,p_page_process_id=>wwv_flow_imp.id(14013314844348283825)
,p_page_id=>17
,p_name=>'p_customer_id'
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'P17_CUSTOMER_ID'
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14013315229308283829)
,p_page_process_id=>wwv_flow_imp.id(14013314844348283825)
,p_page_id=>17
,p_name=>'p_order_id'
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'P17_ORDER_ID'
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14013315142575283828)
,p_page_process_id=>wwv_flow_imp.id(14013314844348283825)
,p_page_id=>17
,p_name=>'p_store'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'P17_STORE'
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14013315402289283831)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Clear Shopping Cart'
,p_static_id=>'clear-shopping-cart'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'MANAGE_ORDERS',
  'package_method', 'CLEAR_CART',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14013314486049283821)
,p_internal_uid=>14013315402289283831
,p_created_on=>wwv_flow_imp.dz('20260703065118Z')
,p_updated_on=>wwv_flow_imp.dz('20260703065118Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'ACME Shop - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007031535059803166)
,p_plug_name=>'ACME Shop'
,p_static_id=>'acme-shop'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007033177011803169)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007031535059803166)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007032409738803168)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007031535059803166)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007032811439803168)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007031535059803166)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007032043858803167)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007031535059803166)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007037256174803172)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007037256174803172
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007036860339803172)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>14007036860339803172
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007033514900803169)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007033514900803169
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14007034533257803170)
,p_page_process_id=>wwv_flow_imp.id(14007033514900803169)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14007035018862803170)
,p_page_process_id=>wwv_flow_imp.id(14007033514900803169)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14007034034777803170)
,p_page_process_id=>wwv_flow_imp.id(14007033514900803169)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007035485401803171)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007035485401803171
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14007036412792803171)
,p_page_process_id=>wwv_flow_imp.id(14007035485401803171)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14007035922222803171)
,p_page_process_id=>wwv_flow_imp.id(14007035485401803171)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260702070550Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070550Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007285744368806033)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(14007285350810806032)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007290082485806041)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(14007285744368806033)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(14007278971340806026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007286517761806034)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(14007285744368806033)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007284900961806032)
,p_plug_name=>'Application Administration'
,p_static_id=>'application-administration'
,p_parent_plug_id=>wwv_flow_imp.id(14007284570653806031)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(14007280294334806027)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007278113547806025)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(14007019713629803143)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007284570653806031)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007285350810806032)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14007286923825806034)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(14007285744368806033)
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14007288447545806039)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14007287610341806037)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14007288099777806038)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007286170042806033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007285744368806033)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:RP,10012::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007289133746806040)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14007286170042806033)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007289582558806041)
,p_event_id=>wwv_flow_imp.id(14007289133746806040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007286923825806034)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007242651189805975)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007242759518805975)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007243941285805977)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007242759518805975)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007244391024805978)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007242759518805975)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007244863980805978)
,p_button_id=>wwv_flow_imp.id(14007244391024805978)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14007245422381805979)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007245778126805979)
,p_name=>'P10010_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007242651189805975)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007246187939805979)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10010_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>14007246187939805979
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070618Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_imp_page.create_page(
 p_id=>10011
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007246557949805980)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14007247301775805980)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:RP:P10012_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>14007247301775805980
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007249432687805987)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007248634102805984)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14007249079475805986)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070618Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14007250992804805989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007252072552805990)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007246557949805980)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10013:&APP_SESSION.::&DEBUG.:10013::'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007252467660805990)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007246557949805980)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:10012::'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007251623551805990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007246557949805980)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14007246699512805980)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14007246557949805980)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14007253142313805991)
,p_event_id=>wwv_flow_imp.id(14007246699512805980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14007246557949805980)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10012
begin
wwv_flow_imp_page.create_page(
 p_id=>10012
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007253744843805992)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007253699698805992)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007254740300805993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007253744843805992)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007255296517805993)
,p_button_id=>wwv_flow_imp.id(14007254740300805993)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007256513545805994)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14007253744843805992)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007255746411805993)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007253744843805992)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007256110337805994)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14007253744843805992)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007257364022805995)
,p_name=>'P10012_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_item_source_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007256989379805994)
,p_name=>'P10012_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_item_source_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007258123183805996)
,p_name=>'P10012_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_item_source_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007257766984805995)
,p_name=>'P10012_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_item_source_plug_id=>wwv_flow_imp.id(14007253699698805992)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10012_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14007259353516805998)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10012_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10012_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007260519274805999)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007260519274805999
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007259745657805998)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(14007253699698805992)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>14007259745657805998
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007260110544805999)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14007253699698805992)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007260110544805999
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10013
begin
wwv_flow_imp_page.create_page(
 p_id=>10013
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007260981025805999)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007261008070805999)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007263119784806001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007260981025805999)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007263612167806001)
,p_button_id=>wwv_flow_imp.id(14007263119784806001)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007261109987805999)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007260981025805999)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14007264177073806002)
,p_branch_action=>'f?p=&APP_ID.:10014:&APP_SESSION.::&DEBUG.:RP,10014::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14007261109987805999)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007264931954806002)
,p_name=>'P10013_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007261008070805999)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007264500292806002)
,p_name=>'P10013_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007261008070805999)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007265305086806003)
,p_name=>'P10013_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14007261008070805999)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007266465747806004)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10013_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10013_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10013_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14007261109987805999)
,p_internal_uid=>14007266465747806004
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/pages/page_10014
begin
wwv_flow_imp_page.create_page(
 p_id=>10014
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14007026612876803159)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14007025306976803157)
,p_required_patch=>wwv_flow_imp.id(14007023652503803154)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_last_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007261278270805999)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14007261527193805999)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(14007261326182805999)
,p_template=>2665811232373458102
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14007268929667806013)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14007268530119806012)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007261768883805999)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007271938354806017)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007261680754805999)
,p_plug_name=>'&P10014_VALID_COUNT. Users to Add'
,p_static_id=>'p10014-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(14007261326182805999)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007271272838806016)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10014_VALID_COUNT),',
'           apex_escape.html(:P10014_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14007261326182805999)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007273099211806018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007261278270805999)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14007273577565806018)
,p_button_id=>wwv_flow_imp.id(14007273099211806018)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007272695894806018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14007261278270805999)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14007261838198805999)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14007261278270805999)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007274861036806020)
,p_name=>'P10014_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14007261768883805999)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007274076045806019)
,p_name=>'P10014_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14007261768883805999)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10013_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14007274414147806019)
,p_name=>'P10014_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14007261768883805999)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007275251971806020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10013_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14007261838198805999)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>14007275251971806020
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14007275665004806020)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14007275665004806020
,p_created_on=>wwv_flow_imp.dz('20260702070619Z')
,p_updated_on=>wwv_flow_imp.dz('20260702070619Z')
,p_created_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
,p_updated_by=>'RAJYA.LAKSHMI@TABLESPACE.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
