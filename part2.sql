set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>28798962728942968064
,p_default_application_id=>48316
,p_default_owner=>'DATAMGMTPROJ'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 48316 - Organization.sim
--
-- Application Export:
--   Application:     48316
--   Name:            Organization.sim
--   Date and Time:   18:40 Thursday April 28, 2016
--   Exported By:     DANYALKAIVAN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     18
--     Items:                  177
--     Processes:               16
--     Regions:                 38
--     Buttons:                 18
--   Shared Components:
--     Logic:
--       Items:                  1
--       Web Services:           5
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   2
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,48316)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CANNATA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Organization.sim')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_1884319948316')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BB2EC5D7ABD77122DED42FAF4271262F320C85430210FFA366F2EF22F2017933'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(91027736757814992948)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:DRK co'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428183939'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(91027694174754992870)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31910101411088629539)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61685836758658434903)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Person'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Directory'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61822455204844534761)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31900725645626571570)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Project Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31900812359646968655)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'President'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31909324763918886260)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31909435188636904832)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Interim Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31857262973424455871)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31858167274904586348)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Projects'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10,25,26,34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31858412580778274368)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'All Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31858167274904586348)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31906042014259543816)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Current Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31858167274904586348)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31906435369942570142)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Previous Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31858167274904586348)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31908731616784787164)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Create Project'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31858167274904586348)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31901006407397609577)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Hire'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31857278681020460065)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31901006407397609577)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31909010049728834886)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31901006407397609577)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31909223226836483830)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Interim Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31901006407397609577)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31910266564440019606)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Department'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31904807151169425304)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'All Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31910266564440019606)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31910289471149023952)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Create Department '
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31910266564440019606)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(91027736428774992943)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91027736610821992947)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91027693813581992870)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91027693974039992870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91027694015522992870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(31909451253475906061)
,p_name=>'TYPE'
,p_protection_level=>'N'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
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
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31903762170897919167)
,p_lov_name=>'DEPARMENT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select dept_name as d,',
'       dept_no as r',
'  from Department',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31908271461363736570)
,p_lov_name=>'EMPLOYEE_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(31908271461363736570)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31908271768904736572)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Manager'
,p_lov_return_value=>'''manager'''
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31908272195235736573)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'''employee'''
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31908272546938736573)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Interim-manager'
,p_lov_return_value=>'''interim-manager'''
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31908272968318736573)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'President'
,p_lov_return_value=>'''president'''
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(91027736883553992953)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31907881591916301851)
,p_short_name=>'Login'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027694238128992871)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694371818992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694418509992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694575548992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694607537992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694760049992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694866545992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027694966104992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695039985992872)
,p_page_template_id=>wwv_flow_api.id(91027694238128992871)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027695119962992875)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695214305992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695336137992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695402936992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695519290992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695648868992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695734531992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695803967992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027695985629992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696049221992875)
,p_page_template_id=>wwv_flow_api.id(91027695119962992875)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027696092470992875)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696259923992876)
,p_page_template_id=>wwv_flow_api.id(91027696092470992875)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696306717992876)
,p_page_template_id=>wwv_flow_api.id(91027696092470992875)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027696477651992876)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696539029992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696655679992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696716565992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696811632992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027696911207992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697013034992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697143397992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697229362992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697381873992876)
,p_page_template_id=>wwv_flow_api.id(91027696477651992876)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027697447345992876)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697587521992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697680398992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697724862992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697881044992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697976597992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027697995803992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698182497992877)
,p_page_template_id=>wwv_flow_api.id(91027697447345992876)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027698268853992877)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698294679992877)
,p_page_template_id=>wwv_flow_api.id(91027698268853992877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698409199992877)
,p_page_template_id=>wwv_flow_api.id(91027698268853992877)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698540219992877)
,p_page_template_id=>wwv_flow_api.id(91027698268853992877)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027698636834992877)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698783144992877)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698856286992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027698904414992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699074083992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699100872992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699275393992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699293897992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699434546992878)
,p_page_template_id=>wwv_flow_api.id(91027698636834992877)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027699578561992878)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699655595992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699768666992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699868992992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027699934290992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700046751992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700189231992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700228101992878)
,p_page_template_id=>wwv_flow_api.id(91027699578561992878)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91027700387853992878)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700426190992879)
,p_page_template_id=>wwv_flow_api.id(91027700387853992878)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700553166992879)
,p_page_template_id=>wwv_flow_api.id(91027700387853992878)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700609656992879)
,p_page_template_id=>wwv_flow_api.id(91027700387853992878)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91027731227009992914)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91027731347433992914)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91027731435435992915)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027700787245992879)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027700803940992881)
,p_plug_template_id=>wwv_flow_api.id(91027700787245992879)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027702280670992885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027702378132992885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027702435681992885)
,p_plug_template_id=>wwv_flow_api.id(91027702378132992885)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027702527502992885)
,p_plug_template_id=>wwv_flow_api.id(91027702378132992885)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027703218365992885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027703351535992886)
,p_plug_template_id=>wwv_flow_api.id(91027703218365992885)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027703441473992886)
,p_plug_template_id=>wwv_flow_api.id(91027703218365992885)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027706638359992888)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027706716381992889)
,p_plug_template_id=>wwv_flow_api.id(91027706638359992888)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027706860216992889)
,p_plug_template_id=>wwv_flow_api.id(91027706638359992888)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027708776513992891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027708816880992891)
,p_plug_template_id=>wwv_flow_api.id(91027708776513992891)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027708925881992891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027709061562992891)
,p_plug_template_id=>wwv_flow_api.id(91027708925881992891)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027709801365992891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027710155400992892)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027710285873992892)
,p_plug_template_id=>wwv_flow_api.id(91027710155400992892)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027710337912992892)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027710443880992892)
,p_plug_template_id=>wwv_flow_api.id(91027710337912992892)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027710518236992892)
,p_plug_template_id=>wwv_flow_api.id(91027710337912992892)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027712425801992894)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027712529405992894)
,p_plug_template_id=>wwv_flow_api.id(91027712425801992894)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027712637068992894)
,p_plug_template_id=>wwv_flow_api.id(91027712425801992894)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027713636659992895)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91027714160155992896)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91027714204315992896)
,p_plug_template_id=>wwv_flow_api.id(91027714160155992896)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027722551554992905)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027724241799992907)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027726296185992909)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027727118230992909)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027728037812992910)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027728494123992910)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027728654459992910)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027728774344992911)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027728884628992911)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027729732104992911)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91027730251587992912)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027714790049992896)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027714800028992898)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027716570561992899)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027718614671992902)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027719059571992902)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027719168674992903)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(91027719168674992903)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027720415786992904)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027720598554992904)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91027721615451992905)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91027730695140992912)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91027730855057992913)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91027730926169992913)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91027731086230992913)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91027731147467992913)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(91027731818392992915)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(91027732080726992917)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(91027731975731992916)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(91027732460273992921)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(91027699578561992878)
,p_default_dialog_template=>wwv_flow_api.id(91027698268853992877)
,p_error_template=>wwv_flow_api.id(91027696092470992875)
,p_printer_friendly_template=>wwv_flow_api.id(91027699578561992878)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(91027696092470992875)
,p_default_button_template=>wwv_flow_api.id(91027731347433992914)
,p_default_region_template=>wwv_flow_api.id(91027710337912992892)
,p_default_chart_template=>wwv_flow_api.id(91027710337912992892)
,p_default_form_template=>wwv_flow_api.id(91027710337912992892)
,p_default_reportr_template=>wwv_flow_api.id(91027710337912992892)
,p_default_tabform_template=>wwv_flow_api.id(91027710337912992892)
,p_default_wizard_template=>wwv_flow_api.id(91027710337912992892)
,p_default_menur_template=>wwv_flow_api.id(91027713636659992895)
,p_default_listr_template=>wwv_flow_api.id(91027710337912992892)
,p_default_irr_template=>wwv_flow_api.id(91027709801365992891)
,p_default_report_template=>wwv_flow_api.id(91027719168674992903)
,p_default_label_template=>wwv_flow_api.id(91027730855057992913)
,p_default_menu_template=>wwv_flow_api.id(91027731818392992915)
,p_default_calendar_template=>wwv_flow_api.id(91027731975731992916)
,p_default_list_template=>wwv_flow_api.id(91027726296185992909)
,p_default_nav_list_template=>wwv_flow_api.id(91027729732104992911)
,p_default_top_nav_list_temp=>wwv_flow_api.id(91027729732104992911)
,p_default_side_nav_list_temp=>wwv_flow_api.id(91027728774344992911)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(91027702378132992885)
,p_default_dialogr_template=>wwv_flow_api.id(91027702280670992885)
,p_default_option_label=>wwv_flow_api.id(91027730855057992913)
,p_default_required_label=>wwv_flow_api.id(91027731086230992913)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(91027728654459992910)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91027732168865992918)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91027732277447992918)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91027732364530992918)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027701085822992882)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027701273237992883)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027701467788992883)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027702608391992885)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027702843990992885)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027703527132992886)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027703936887992886)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027704562543992887)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027705153610992887)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027705349885992887)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027706209014992888)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027707844951992889)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027709281193992891)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027712768411992894)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027712901120992895)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027713298280992895)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027713693178992895)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027714345249992896)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027714976536992898)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027715123213992898)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027716748855992899)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027717414198992900)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027717759522992901)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027718421099992902)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027718734435992902)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027719217409992903)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027719537619992903)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027719750928992903)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027720742028992904)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027722652556992906)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027723422501992907)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027724488989992907)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027725181507992908)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027725446509992908)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027726167274992908)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027726880204992909)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027729248393992911)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027730388517992912)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027731537321992915)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027732554590992939)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027732696387992939)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027732940478992939)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027733100253992939)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027733292410992940)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027733737338992940)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027734440109992940)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027734843030992941)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027735055255992942)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027735283913992942)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027735435826992942)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027735695309992942)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91027736032547992942)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027700931007992881)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701114604992882)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(91027701085822992882)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701391202992883)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(91027701273237992883)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701536624992883)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(91027701467788992883)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701619142992883)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(91027701085822992882)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701746514992884)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(91027701273237992883)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701886086992884)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(91027701085822992882)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027701985268992884)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(91027701273237992883)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027702058254992884)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(91027701085822992882)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027702117648992884)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027700787245992879)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(91027701467788992883)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027702776203992885)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91027702378132992885)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027702924985992885)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(91027702378132992885)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(91027702843990992885)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027703026274992885)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(91027702378132992885)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027703189513992885)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(91027702378132992885)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(91027702843990992885)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027703605049992886)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(91027703527132992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027703766928992886)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(91027703527132992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027703869219992886)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(91027703527132992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704011457992886)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704176428992887)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704276050992887)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704369618992887)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(91027703527132992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704439892992887)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704681261992887)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704744618992887)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704816129992887)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027704897687992887)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705072630992887)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705223878992887)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(91027705153610992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705488237992887)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705551403992888)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(91027705153610992887)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705657417992888)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705769660992888)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705831201992888)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027705916386992888)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706090465992888)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706110527992888)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706296604992888)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(91027706209014992888)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706478543992888)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(91027706209014992888)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706540155992888)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027703218365992885)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027706897724992889)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707032270992889)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707179040992889)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707274621992889)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707331010992889)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707405253992889)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707507172992889)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707686364992889)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707766148992889)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707916881992889)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(91027707844951992889)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027707999500992890)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(91027707844951992889)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708165249992890)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708210844992890)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708352532992890)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708426137992891)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708576369992891)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027708616893992891)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027706638359992888)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709106323992891)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709379649992891)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(91027709281193992891)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709452276992891)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(91027709281193992891)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709538625992891)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709652471992891)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709748620992891)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027708925881992891)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(91027709281193992891)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027709944532992892)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027709801365992891)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027710015607992892)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027709801365992891)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027710603158992892)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027710731752992892)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027710825012992892)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027710979017992892)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91027703936887992886)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711054650992892)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711092780992893)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711249855992893)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711322259992893)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711461985992894)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91027704562543992887)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711513784992894)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(91027705153610992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711686634992894)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711772301992894)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(91027705153610992887)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711848784992894)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027711974641992894)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027712048953992894)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027712136445992894)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91027705349885992887)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027712221258992894)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027712304722992894)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027710337912992892)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91027702608391992885)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027712878762992895)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(91027712768411992894)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713062894992895)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(91027712901120992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713148537992895)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713254759992895)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(91027712901120992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713487936992895)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(91027713298280992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713518550992895)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027712425801992894)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(91027713298280992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713869278992895)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91027713636659992895)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(91027713693178992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027713920305992895)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91027713636659992895)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027714084517992896)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91027713636659992895)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(91027713693178992895)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027714426817992896)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91027714160155992896)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(91027714345249992896)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027714578500992896)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027714160155992896)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(91027714345249992896)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027714621657992896)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91027714160155992896)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715086005992898)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(91027714976536992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715289698992898)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715380277992898)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(91027714976536992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715403421992898)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715511231992898)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(91027714976536992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715623134992898)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715710455992899)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715792713992899)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(91027714976536992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027715956160992899)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(91027714976536992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716011349992899)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716092665992899)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716251643992899)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716385186992899)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716433237992899)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027714800028992898)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716605167992899)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716812646992899)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(91027716748855992899)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027716898720992900)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717024664992900)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(91027716748855992899)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717144595992900)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717256786992900)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(91027716748855992899)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717367482992900)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717565209992900)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(91027717414198992900)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717636462992900)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(91027717414198992900)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717887720992901)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(91027717759522992901)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027717991253992901)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(91027717759522992901)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718087276992901)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(91027717414198992900)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718179320992901)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718233614992901)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(91027716748855992899)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718354751992902)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718584051992902)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027716570561992899)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(91027718421099992902)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718879685992902)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027718614671992902)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(91027718734435992902)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027718959838992902)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027718614671992902)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(91027718734435992902)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027719300997992903)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(91027719217409992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027719427724992903)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(91027719217409992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027719687612992903)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(91027719537619992903)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027719803488992903)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(91027719750928992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027719933367992903)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(91027719750928992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720056674992903)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(91027719750928992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720125350992903)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(91027719537619992903)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720263684992904)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720322378992904)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027719168674992903)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(91027719750928992903)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720542539992904)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(91027720415786992904)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(91027717414198992900)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720809618992904)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027720948776992904)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721035377992904)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721176624992904)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721218688992904)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721377233992904)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721448225992904)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721557263992905)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91027720598554992904)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721759954992905)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721853071992905)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027721986890992905)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722063232992905)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722180429992905)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(91027715123213992898)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722280891992905)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722316247992905)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722454567992905)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91027721615451992905)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(91027720742028992904)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722735899992906)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722877739992906)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027722985527992906)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723086592992907)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723121389992907)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723223299992907)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723323810992907)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723580351992907)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(91027723422501992907)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723639868992907)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(91027723422501992907)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723787378992907)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723867994992907)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(91027723422501992907)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027723893755992907)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724068913992907)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(91027723422501992907)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724147236992907)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91027722551554992905)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(91027723422501992907)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724367355992907)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724495388992907)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(91027724488989992907)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724674413992908)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724723327992908)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(91027724488989992907)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724876770992908)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027724964193992908)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(91027724488989992907)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725020990992908)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725260372992908)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725334541992908)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725540506992908)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(91027725446509992908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725671745992908)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(91027725446509992908)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725774475992908)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725849552992908)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027725917425992908)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(91027724488989992907)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726034134992908)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726225479992909)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027724241799992907)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(91027726167274992908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726450697992909)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726584366992909)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726643764992909)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726779242992909)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027726917156992909)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(91027726880204992909)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727033555992909)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027726296185992909)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(91027726880204992909)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727264275992909)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727324075992909)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727395988992909)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727516552992909)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727592885992909)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727743513992909)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727823389992910)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027727904345992910)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91027727118230992909)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027728135713992910)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91027728037812992910)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027728244890992910)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027728037812992910)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027728302350992910)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027728037812992910)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027728466519992910)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027728037812992910)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027728985560992911)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(91027725446509992908)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729000274992911)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(91027722652556992906)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729172299992911)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(91027725446509992908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729319723992911)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(91027729248393992911)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729428364992911)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729587926992911)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(91027725181507992908)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729595336992911)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(91027728884628992911)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(91027729248393992911)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729879821992912)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91027729732104992911)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027729919632992912)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91027729732104992911)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027730002716992912)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91027729732104992911)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027730114805992912)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91027729732104992911)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027730486731992912)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91027730251587992912)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(91027730388517992912)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027730557287992912)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91027730251587992912)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(91027730388517992912)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027730641529992912)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91027730251587992912)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(91027730388517992912)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027731629483992915)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(91027731435435992915)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(91027731537321992915)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027731782523992915)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(91027731435435992915)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(91027731537321992915)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027732597516992939)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(91027732554590992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027732802851992939)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(91027732696387992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733056171992939)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(91027732940478992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733211401992939)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(91027733100253992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733394256992940)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(91027733292410992940)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733549686992940)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(91027732696387992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733615256992940)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(91027732940478992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733874989992940)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(91027733737338992940)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027733934852992940)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(91027733737338992940)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734091339992940)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(91027733737338992940)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734184606992940)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(91027732554590992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734221703992940)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(91027733292410992940)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734295292992940)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(91027733100253992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734547629992940)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(91027734440109992940)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734634911992941)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(91027732554590992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734791631992941)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(91027732554590992939)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027734954551992941)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(91027734843030992941)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735156824992942)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(91027735055255992942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735343314992942)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(91027735283913992942)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735551552992942)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(91027735435826992942)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735605408992942)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(91027735435826992942)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735830671992942)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(91027735695309992942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027735903529992942)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(91027735055255992942)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027736186691992943)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(91027736032547992942)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027736263855992943)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91027736321776992943)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(91027736032547992942)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(91055954691648829414)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(91027736757814992948)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(91027736572138992943)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(91027694174754992870)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(91027728774344992911)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(91027736428774992943)
,p_nav_bar_list_template_id=>wwv_flow_api.id(91027728654459992910)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428182323'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428054709'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61685837193868434903)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61685846179684434916)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSONJSON''',
'',
'--select				',
'--jt1.first_name	first_name,			',
'--jt2.last_name	last_name',
'--from	apex_collections	t,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2',
'--where	t.collection_name	=	''P2_PERSONJSON''	',
'',
'--select				',
'--jt2.sal	sal',
'--from	apex_collections	t,',
'--json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt2',
'--where	t.collection_name	=	''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61686528797351585467)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61686479546494579596)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7',
'where	t.collection_name	=	''P2_PERSONJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61686479660796579596)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29830773734913338901
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61686479976755579599)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61686480333926579600)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61687072587028301312)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61687073317247301317)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61687083966339301319)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61687084626802301320)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61687085387805301320)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61686481201541580076)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'298307753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61685837428580434904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61686479546494579596)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61685837826988434905)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685838647273434907)
,p_name=>'P2_LASTNAME'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685839501430434909)
,p_name=>'P2_DB'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685840267852434909)
,p_name=>'P2_USER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685841046188434910)
,p_name=>'P2_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685841882376434911)
,p_name=>'P2_MODE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685842686300434912)
,p_name=>'P2_MODEL'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685843456698434913)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685844253439434913)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61685845098261434914)
,p_name=>'P2_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61685837193868434903)
,p_item_default=>'"from person retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61685838252892434905)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'59172036190322391033:59172036377331391039'
,p_attribute_01=>wwv_flow_api.id(91027742303214631734)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSONJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428153557'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61691593596827832399)
,p_plug_name=>'Create Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61691624018077832400)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61691624350129832401)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61691624018077832400)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691625128064832402)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691626001907832403)
,p_name=>'P4_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691626733102832404)
,p_name=>'P4_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691627546412832404)
,p_name=>'P4_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691628338833832405)
,p_name=>'P4_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691629221437832406)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691629944507832406)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691630792941832407)
,p_name=>'P4_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691631597597832408)
,p_name=>'P4_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691632404464832409)
,p_name=>'P4_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'"false"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691633142356832410)
,p_name=>'P4_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691633951080832410)
,p_name=>'P4_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691634750318832411)
,p_name=>'P4_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691635585977832412)
,p_name=>'P4_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691636342593832412)
,p_name=>'P4_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691637126544832413)
,p_name=>'P4_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691638013983832414)
,p_name=>'P4_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61691638815514832414)
,p_name=>'P4_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(61691593596827832399)
,p_item_default=>'''insert employee (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := '
||'''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>400
,p_cMaxlength=>400
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61691624727965832401)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61689945884978967209)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61691624018077832400)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Employee Directory'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee Directory'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#rest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428183939'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61822353085347514387)
,p_plug_name=>'doREST'
,p_region_name=>'rest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61822370657352514400)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P5_EMPLOYEEJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61822371080368514401)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61822371501111514404)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P5_EMPLOYEEJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61822371883424514407)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29966665957541273712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822371977141514410)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822372333578514412)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822372778710514415)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822373195669514416)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822373566483514417)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822373946910514418)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822374359419514419)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822374726138514420)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822375145260514421)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61822375608453514422)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61822375954994514423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'299666701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61822376731087514427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61822371501111514404)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61822376331938514425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61822371501111514404)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Employee'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61822384867094514440)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822353488400514389)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822353846339514391)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822364270212514392)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822364675685514392)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822365119979514392)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822365477437514393)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822365863057514393)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822366250153514394)
,p_name=>'P5_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822366682404514394)
,p_name=>'P5_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822367121029514395)
,p_name=>'P5_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822367523723514395)
,p_name=>'P5_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822367873776514395)
,p_name=>'P5_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822368291048514396)
,p_name=>'P5_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822368642879514397)
,p_name=>'P5_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822369074226514397)
,p_name=>'P5_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822369443309514397)
,p_name=>'P5_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822369873070514398)
,p_name=>'P5_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61822370249165514398)
,p_name=>'P5_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(61822353085347514387)
,p_item_default=>'"from employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61822377206563514430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61689945884978967209)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'All Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''#dorest'').hide();',
'$(''#report'').hide();'))
,p_inline_css=>'.R31858413159932274369 {display: none;}'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428150630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31858413159932274369)
,p_plug_name=>'doREST'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31858431438085274383)
,p_name=>'Results'
,p_region_name=>'report'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'ALWAYS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31858432174907274386)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31858958081608346601)
,p_plug_name=>'All Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title		',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where	t.collection_name	=	''P10_DOREST_RESULTS'' and ',
'jt1.rid = jt2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31858958136413346602)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31858958136413346602
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31859555337208399868)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31859555753100399868)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31859581774223402089)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318595818'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31858413544451274370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31858958081608346601)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31858413905296274371)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858414726251274375)
,p_name=>'P10_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858415693535274377)
,p_name=>'P10_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858416322012274377)
,p_name=>'P10_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858417156622274378)
,p_name=>'P10_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858417983517274379)
,p_name=>'P10_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858428741911274380)
,p_name=>'P10_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858429567111274381)
,p_name=>'P10_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858430386573274382)
,p_name=>'P10_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31858413159932274369)
,p_item_default=>'"from project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31858414355179274371)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Project Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Employees'
,p_step_sub_title=>'Project Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#dorest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428152801'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31900725986342571572)
,p_plug_name=>'Employee Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''PROJECT_EMPLOYEE_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31900726353036571577)
,p_name=>'Employee Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31900726353036571577
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900726464025571579)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900726777664571581)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900727186077571582)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900727569120571582)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900727924709571584)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900728359074571585)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900728736641571585)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900729134283571586)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900729508031571586)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900729929218571586)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31900730395376571587)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319007304'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31900731281706571593)
,p_plug_name=>'Managers'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31900734887949571598)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31900735201248571599)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31900730830430571590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31900725986342571572)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31900739354931571609)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900731698255571594)
,p_name=>'P18_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900732085846571595)
,p_name=>'P18_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900732499034571596)
,p_name=>'P18_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900732893297571596)
,p_name=>'P18_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900733227976571597)
,p_name=>'P18_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900733603305571597)
,p_name=>'P18_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900734011579571598)
,p_name=>'P18_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900734428111571598)
,p_name=>'P18_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31900731281706571593)
,p_item_default=>'"from project-employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31900735658575571604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'PROJECT_EMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#dorest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428153144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31900812622716968656)
,p_plug_name=>'Employee Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''PRESIDENT_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31900813016694968656)
,p_name=>'Employee Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31900813016694968656
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900813158234968657)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900813507786968657)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900813953898968658)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900814354302968658)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900814708189968659)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900815176793968659)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900815562896968660)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900815989066968660)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900816373757968661)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31900816766900968661)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31900817184416968661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319008172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31900858052808968664)
,p_plug_name=>'Managers'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31900861697093968669)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31900862054346968670)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31900817645206968662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31900812622716968656)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31900866192054968676)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900858443018968664)
,p_name=>'P19_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900858812242968665)
,p_name=>'P19_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900859234681968666)
,p_name=>'P19_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900859683673968666)
,p_name=>'P19_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900860071731968666)
,p_name=>'P19_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900860434590968667)
,p_name=>'P19_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900860814657968668)
,p_name=>'P19_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31900861252764968668)
,p_name=>'P19_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31900858052808968664)
,p_item_default=>'"from president retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31900862446569968671)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'PRESIDENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'All Departments'
,p_page_mode=>'NORMAL'
,p_step_title=>'All Departments'
,p_step_sub_title=>'All Departments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#dorest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428183353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31904807531095425306)
,p_plug_name=>'Employee Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.dept_no	first_name,			',
'jt2.dept_name	dept_name',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'where	t.collection_name	=	''DEPT_JSON'' and ',
'jt1.rid = jt2.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31904807874543425308)
,p_name=>'Employee Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31904807874543425308
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31904807944774425310)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31905186167094444029)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31904891967760425315)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319048920'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31904892819996425321)
,p_plug_name=>'Managers'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31904896412690425328)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31904896884623425329)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31904892468509425318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31904807531095425306)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31904900983898425338)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904893216134425321)
,p_name=>'P21_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904893690003425323)
,p_name=>'P21_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904894032587425323)
,p_name=>'P21_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904894469898425324)
,p_name=>'P21_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904894872156425324)
,p_name=>'P21_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904895292985425325)
,p_name=>'P21_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904895600577425325)
,p_name=>'P21_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31904896000411425326)
,p_name=>'P21_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31904892819996425321)
,p_item_default=>'"from department retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31904897237977425333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'DEPT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428170318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31905682029164502450)
,p_plug_name=>'Create Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31905682407403502451)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31905682840114502455)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31905682407403502451)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905683605319502459)
,p_name=>'P23_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905684485124502462)
,p_name=>'P23_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905685295874502463)
,p_name=>'P23_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905686080731502464)
,p_name=>'P23_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905686869100502467)
,p_name=>'P23_RETURNFOR'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'False'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905687657902502470)
,p_name=>'P23_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905688411772502473)
,p_name=>'P23_MODEL'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905689293512502477)
,p_name=>'P23_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_prompt=>'Project-No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905690092714502481)
,p_name=>'P23_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_prompt=>'Project-Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905690860937502482)
,p_name=>'P23_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31905682029164502450)
,p_item_default=>'''insert project(project-no := ''projectno'', project-title := ''projecttitle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31905683283026502455)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31901220145853019871:31901220370878019872'
,p_attribute_01=>wwv_flow_api.id(31901220370878019872)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'CREATE_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31905682407403502451)
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Current Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Current Projects'
,p_step_sub_title=>'Current Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''#dorest'').hide();',
'$(''#report'').hide();'))
,p_inline_css=>'.R31858413159932274369 {display: none;}'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428170841'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31906042645886543819)
,p_plug_name=>'doREST'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31906046291142543825)
,p_name=>'Results'
,p_region_name=>'report'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P25_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'ALWAYS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31906046679696543826)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31906047046222543827)
,p_plug_name=>'All Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title		',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where	t.collection_name	=	''P25_DOREST_RESULTS'' and ',
'jt1.rid = jt2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31906047488551543829)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31906047488551543829
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31906047581943543830)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31906047977984543831)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31906068386158543832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319060684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31906068898784543835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31906047046222543827)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31906072911606543845)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906043047109543821)
,p_name=>'P25_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906043481115543822)
,p_name=>'P25_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906043869643543822)
,p_name=>'P25_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906044290471543823)
,p_name=>'P25_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906044692835543823)
,p_name=>'P25_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906045056119543824)
,p_name=>'P25_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906045465729543824)
,p_name=>'P25_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906045897993543825)
,p_name=>'P25_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31906042645886543819)
,p_item_default=>'"from current-project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31906069294910543838)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Previous Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous Projects'
,p_step_sub_title=>'Previous Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''#dorest'').hide();',
'$(''#report'').hide();'))
,p_inline_css=>'.R31858413159932274369 {display: none;}'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428171136'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31906435931477570144)
,p_plug_name=>'doREST'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31906509567695570150)
,p_name=>'Results'
,p_region_name=>'report'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P26_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'ALWAYS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31906509944628570150)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31906510346069570152)
,p_plug_name=>'All Projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title		',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where	t.collection_name	=	''P26_DOREST_RESULTS'' and ',
'jt1.rid = jt2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31906510761430570153)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31906510761430570153
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31906510814028570153)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31906511205840570154)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31906511689007570155)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319065117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31906512153951570156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31906510346069570152)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31906516299194570162)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906436366083570145)
,p_name=>'P26_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906436735992570146)
,p_name=>'P26_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906437113125570147)
,p_name=>'P26_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906437594873570147)
,p_name=>'P26_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906437900762570148)
,p_name=>'P26_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906508398225570148)
,p_name=>'P26_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906508765557570149)
,p_name=>'P26_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31906509186190570149)
,p_name=>'P26_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31906435931477570144)
,p_item_default=>'"from previous-project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31906512573687570157)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Login'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428183511'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31907881191941301850)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027713636659992895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(91027736883553992953)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(91027731818392992915)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31910709560952069067)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31907881191941301850)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Login'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31910843309950075468)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31910709560952069067)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908301630468742444)
,p_name=>'EMPLOYEE_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31907881191941301850)
,p_prompt=>'Employee type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEE_TYPE'
,p_lov=>'.'||wwv_flow_api.id(31908271461363736570)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908756218853412499)
,p_name=>'NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31907881191941301850)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VAL AS d,',
'       RETURN_VAL AS r',
'FROM TABLE(rwp.doLOV(''person'', ''[last_name], [first_name]'', ''[person_id]''))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428175036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31908732290556787166)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31908742147456787181)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P31_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31908742867800787183)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31908732627203787167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31908733078899787167)
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908733872201787170)
,p_name=>'P34_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908734676634787171)
,p_name=>'P34_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908735482474787173)
,p_name=>'P34_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908736237863787174)
,p_name=>'P34_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908737081255787176)
,p_name=>'P34_RETURNFOR'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908737820490787177)
,p_name=>'P34_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908738677161787177)
,p_name=>'P34_MODEL'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908739447780787178)
,p_name=>'P34_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908740239367787179)
,p_name=>'P34_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31908741067626787179)
,p_name=>'P34_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31908732290556787166)
,p_item_default=>'''insert project( project-no := ''projectno'', project-title := ''projecttitle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31908733457005787168)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31901220145853019871:31901220370878019872'
,p_attribute_01=>wwv_flow_api.id(31901220370878019872)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P31_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Manager'
,p_step_sub_title=>'Create Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428175755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909010381367834887)
,p_plug_name=>'Create Manager'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31909010747751834888)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31909076070475834906)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31909010747751834888)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909011125008834889)
,p_name=>'P35_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909011548272834890)
,p_name=>'P35_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909011945679834890)
,p_name=>'P35_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909012398977834890)
,p_name=>'P35_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909012740749834891)
,p_name=>'P35_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909013153546834891)
,p_name=>'P35_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909013580432834892)
,p_name=>'P35_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909013910326834892)
,p_name=>'P35_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909014302013834893)
,p_name=>'P35_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909014723148834894)
,p_name=>'P35_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'"false"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909015173881834894)
,p_name=>'P35_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909015591764834895)
,p_name=>'P35_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909015975865834895)
,p_name=>'P35_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909016376129834895)
,p_name=>'P35_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909016715458834896)
,p_name=>'P35_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909017138521834896)
,p_name=>'P35_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909017537142834897)
,p_name=>'P35_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909017906430834897)
,p_name=>'P35_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31909010381367834887)
,p_item_default=>'''insert manager (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := '''
||'homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>400
,p_cMaxlength=>400
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31909068349647834898)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61689945884978967209)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P35_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31909010747751834888)
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Interim Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Interim Manager'
,p_step_sub_title=>'Create Interim Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428175948'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909223524346483832)
,p_plug_name=>'Create Interim Manager'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31909223955593483834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31909249172458483859)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31909223955593483834)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909224337564483836)
,p_name=>'P36_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909224758148483837)
,p_name=>'P36_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909225022928483837)
,p_name=>'P36_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909225486883483837)
,p_name=>'P36_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909225808484483838)
,p_name=>'P36_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909226257715483838)
,p_name=>'P36_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909226604822483839)
,p_name=>'P36_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909227041170483840)
,p_name=>'P36_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909227492067483840)
,p_name=>'P36_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909227839690483841)
,p_name=>'P36_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'"false"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909238266180483841)
,p_name=>'P36_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909238639912483842)
,p_name=>'P36_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909239025169483843)
,p_name=>'P36_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909239401809483843)
,p_name=>'P36_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909239871794483844)
,p_name=>'P36_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909240224928483844)
,p_name=>'P36_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909240684579483844)
,p_name=>'P36_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909241076244483845)
,p_name=>'P36_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31909223524346483832)
,p_item_default=>'''insert interim-manager (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-ph'
||'one := ''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>400
,p_cMaxlength=>400
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31909241471280483849)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61689945884978967209)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P36_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31909223955593483834)
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Managers'
,p_page_mode=>'NORMAL'
,p_step_title=>'Managers'
,p_step_sub_title=>'Managers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#dorest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428180441'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909325087480886261)
,p_plug_name=>'Employee Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''MANAGER_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31909325463984886263)
,p_name=>'Employee Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31909325463984886263
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909325587844886266)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909325912312886267)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909326393699886268)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909326775663886268)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909327144814886270)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909327509528886270)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909327993662886270)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909338306693886271)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909338708345886272)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909339198041886272)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31909339543636886274)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319093396'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909340455722886277)
,p_plug_name=>'Managers'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31909344048434886284)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31909344460675886285)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31909340023127886277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31909325087480886261)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31909348553101886291)
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909340887126886278)
,p_name=>'P38_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909341258534886279)
,p_name=>'P38_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909341664444886279)
,p_name=>'P38_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909342023362886280)
,p_name=>'P38_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909342493850886282)
,p_name=>'P38_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909342839159886283)
,p_name=>'P38_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909343248057886283)
,p_name=>'P38_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909343660070886284)
,p_name=>'P38_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31909340455722886277)
,p_item_default=>'"from manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31909344864267886286)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'MANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Interim Managers'
,p_page_mode=>'NORMAL'
,p_step_title=>'Interim Managers'
,p_step_sub_title=>'Interim Managers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#results").hide();',
'$("#dorest").hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428180728'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909435455326904835)
,p_plug_name=>'Employee Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91027709801365992891)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''IMANAGER_JSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31909435815938904836)
,p_name=>'Employee Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DANYALKAIVAN'
,p_internal_uid=>31909435815938904836
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909435972852904836)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909436392953904837)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909436737357904838)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909437177712904838)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909437599770904839)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909437970362904839)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909438396754904840)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909438759963904840)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909439176561904840)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31909439513344904841)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31909439953333904841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'319094400'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31909440847054904843)
,p_plug_name=>'Managers'
,p_region_name=>'dorest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31909444489291904848)
,p_name=>'Results'
,p_region_name=>'results'
,p_template=>wwv_flow_api.id(91027710337912992892)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_MANAGER_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91027719168674992903)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31909444852351904849)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31909440485902904843)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31909435455326904835)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31909448905007904858)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909441236346904844)
,p_name=>'P39_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909441619610904844)
,p_name=>'P39_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909442033426904845)
,p_name=>'P39_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909442467567904845)
,p_name=>'P39_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909442845830904846)
,p_name=>'P39_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909443204785904847)
,p_name=>'P39_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909443623207904847)
,p_name=>'P39_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31909444061442904848)
,p_name=>'P39_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31909440847054904843)
,p_item_default=>'"from interim-manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31909445263026904850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857690685587141753:31857690867156141754'
,p_attribute_01=>wwv_flow_api.id(31857690867156141754)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'IMANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_api.create_page(
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(91027736572138992943)
,p_name=>'Create Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DANYALKAIVAN'
,p_last_upd_yyyymmddhh24miss=>'20160428183258'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31910414008444037530)
,p_plug_name=>'Create Department '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91027710337912992892)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31910414482636037531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91027731347433992914)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31910414899753037532)
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31910414482636037531)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910415683485037533)
,p_name=>'P45_DEPTNAME'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910416455237037534)
,p_name=>'P45_DEPTNO'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910417287998037535)
,p_name=>'P45_RETURNDIMENSIONS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910418052808037537)
,p_name=>'P45_RETURNFOR'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910418824133037537)
,p_name=>'P45_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'E2'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910419652539037538)
,p_name=>'P45_MODE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910420439956037539)
,p_name=>'P45_PASS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'localhost:7061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910421237424037540)
,p_name=>'P45_USER'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'WDBE2'
,p_prompt=>'User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910422056613037540)
,p_name=>'P45_DB'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31910422863196037541)
,p_name=>'P45_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31910414008444037530)
,p_item_default=>'''insert department( dept-no := ''deptno'', dept-name := ''deptname'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91027730855057992913)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31910415292939037532)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31909566547986559157:31909566709145559157'
,p_attribute_01=>wwv_flow_api.id(31909566709145559157)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31910414482636037531)
);
end;
/
prompt --application/shared_components/logic/webservices/get
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31857690685587141753)
,p_name=>'Get'
,p_url=>'aevum.cs.utexas.edu:7060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31857690867156141754)
,p_ws_id=>wwv_flow_api.id(31857690685587141753)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857691143114141761)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857729614670152968)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858415290466274376)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900736064771571605)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900862809677968671)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904897646018425334)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906069655523543840)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906512989870570158)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909345284274886288)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909445672330904855)
,p_parameter_id=>wwv_flow_api.id(31857729614670152968)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857729984748152968)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858415921528274377)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900736414342571606)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900863269194968672)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904898097845425335)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906070079474543841)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906513350892570159)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909345620857886288)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909446007598904856)
,p_parameter_id=>wwv_flow_api.id(31857729984748152968)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857730295863152968)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858416784486274378)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900736824312571606)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900863642089968672)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904898438180425335)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906070481993543842)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906513741503570159)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909346096557886288)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909446446664904856)
,p_parameter_id=>wwv_flow_api.id(31857730295863152968)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857730554785152968)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858417526223274378)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900737263411571606)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900864058362968672)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904898813062425335)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906070806465543842)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906514102359570159)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909346416572886289)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909446803719904856)
,p_parameter_id=>wwv_flow_api.id(31857730554785152968)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857730839951152970)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858428354942274379)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900737648694571607)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900864453812968674)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904899211576425336)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906071295789543843)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906514590733570159)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909346852273886289)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909447299486904856)
,p_parameter_id=>wwv_flow_api.id(31857730839951152970)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857731151788152970)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858429189626274381)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900738094810571607)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900864811209968675)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904899615897425336)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906071643345543843)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906514953766570161)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909347205450886289)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909447682862904857)
,p_parameter_id=>wwv_flow_api.id(31857731151788152970)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857731408737152970)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858429940808274381)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900738418367571607)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900865213171968675)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904900036895425336)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906072062962543843)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906515358023570161)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909347626876886290)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909448011944904857)
,p_parameter_id=>wwv_flow_api.id(31857731408737152970)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857731749432152990)
,p_ws_opers_id=>wwv_flow_api.id(31857690867156141754)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31858430766473274382)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31858414355179274371)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900738856313571607)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31900735658575571604)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31900865608341968675)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31900862446569968671)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31904900444169425337)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31904897237977425333)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906072409905543844)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31906069294910543838)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31906515712687570162)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31906512573687570157)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909348096768886290)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31909344864267886286)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909448454468904857)
,p_parameter_id=>wwv_flow_api.id(31857731749432152990)
,p_process_id=>wwv_flow_api.id(31909445263026904850)
,p_map_type=>'ITEM'
,p_parm_value=>'P39_QUERY'
);
end;
/
prompt --application/shared_components/logic/webservices/create_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31901220145853019871)
,p_name=>'Create Project'
,p_url=>'aevum.cs.utexas.edu:7060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31901220370878019872)
,p_ws_id=>wwv_flow_api.id(31901220145853019871)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901220699711019875)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901257794861028523)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905684013834502460)
,p_parameter_id=>wwv_flow_api.id(31901257794861028523)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908734270393787171)
,p_parameter_id=>wwv_flow_api.id(31901257794861028523)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901268003389028524)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905684836400502463)
,p_parameter_id=>wwv_flow_api.id(31901268003389028524)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908735043898787172)
,p_parameter_id=>wwv_flow_api.id(31901268003389028524)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901268363032028524)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905685601336502464)
,p_parameter_id=>wwv_flow_api.id(31901268363032028524)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908735867266787173)
,p_parameter_id=>wwv_flow_api.id(31901268363032028524)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901268697099028524)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905686499093502467)
,p_parameter_id=>wwv_flow_api.id(31901268697099028524)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908736633700787176)
,p_parameter_id=>wwv_flow_api.id(31901268697099028524)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901268943169028525)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905687244541502470)
,p_parameter_id=>wwv_flow_api.id(31901268943169028525)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908737468066787176)
,p_parameter_id=>wwv_flow_api.id(31901268943169028525)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901269258619028525)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905688021222502471)
,p_parameter_id=>wwv_flow_api.id(31901269258619028525)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908738240853787177)
,p_parameter_id=>wwv_flow_api.id(31901269258619028525)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901269560515028525)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905688887608502476)
,p_parameter_id=>wwv_flow_api.id(31901269560515028525)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908739096901787178)
,p_parameter_id=>wwv_flow_api.id(31901269560515028525)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901269882647028526)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905691276451502486)
,p_parameter_id=>wwv_flow_api.id(31901269882647028526)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908741482184787180)
,p_parameter_id=>wwv_flow_api.id(31901269882647028526)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901455409938040506)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905689615100502478)
,p_parameter_id=>wwv_flow_api.id(31901455409938040506)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908739805476787178)
,p_parameter_id=>wwv_flow_api.id(31901455409938040506)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31901455716765040507)
,p_ws_opers_id=>wwv_flow_api.id(31901220370878019872)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905690462202502481)
,p_parameter_id=>wwv_flow_api.id(31901455716765040507)
,p_process_id=>wwv_flow_api.id(31905683283026502455)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31908740679598787179)
,p_parameter_id=>wwv_flow_api.id(31901455716765040507)
,p_process_id=>wwv_flow_api.id(31908733457005787168)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PROJECTTITLE'
);
end;
/
prompt --application/shared_components/logic/webservices/create_department
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31909566547986559157)
,p_name=>'Create Department'
,p_url=>'aevum.cs.utexas.edu:7060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31909566709145559157)
,p_ws_id=>wwv_flow_api.id(31909566547986559157)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909567003028559159)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910423298919037542)
,p_parameter_id=>wwv_flow_api.id(31909567003028559159)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909567604311559160)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909619341910570645)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910416005300037534)
,p_parameter_id=>wwv_flow_api.id(31909619341910570645)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_DEPTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909619660699570645)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910416861385037535)
,p_parameter_id=>wwv_flow_api.id(31909619660699570645)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_DEPTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909929910179595541)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910417605436037535)
,p_parameter_id=>wwv_flow_api.id(31909929910179595541)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909930236279595541)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910418476905037537)
,p_parameter_id=>wwv_flow_api.id(31909930236279595541)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909930572540595542)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910419267463037538)
,p_parameter_id=>wwv_flow_api.id(31909930572540595542)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909930871641595542)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910420041068037539)
,p_parameter_id=>wwv_flow_api.id(31909930871641595542)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909931163565595542)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910420852084037539)
,p_parameter_id=>wwv_flow_api.id(31909931163565595542)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31909931436202595542)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910421626386037540)
,p_parameter_id=>wwv_flow_api.id(31909931436202595542)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31910034359680979817)
,p_ws_opers_id=>wwv_flow_api.id(31909566709145559157)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31910422466590037541)
,p_parameter_id=>wwv_flow_api.id(31910034359680979817)
,p_process_id=>wwv_flow_api.id(31910415292939037532)
,p_map_type=>'ITEM'
,p_parm_value=>'P45_DB'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(61689945642167967205)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:7060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(61689945884978967209)
,p_ws_id=>wwv_flow_api.id(61689945642167967205)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61689946192472967213)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909071137903834902)
,p_parameter_id=>wwv_flow_api.id(61689946192472967213)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909244235202483852)
,p_parameter_id=>wwv_flow_api.id(61689946192472967213)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691639142529832415)
,p_parameter_id=>wwv_flow_api.id(61689946192472967213)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822384325905514438)
,p_parameter_id=>wwv_flow_api.id(61689946192472967213)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61689946488335967214)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690036876398978179)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909071596851834903)
,p_parameter_id=>wwv_flow_api.id(61690036876398978179)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909244619339483854)
,p_parameter_id=>wwv_flow_api.id(61690036876398978179)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691625582561832403)
,p_parameter_id=>wwv_flow_api.id(61690036876398978179)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822377621557514431)
,p_parameter_id=>wwv_flow_api.id(61690036876398978179)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690037155782978180)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909071955963834903)
,p_parameter_id=>wwv_flow_api.id(61690037155782978180)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909245057592483854)
,p_parameter_id=>wwv_flow_api.id(61690037155782978180)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691626360222832403)
,p_parameter_id=>wwv_flow_api.id(61690037155782978180)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822377928441514433)
,p_parameter_id=>wwv_flow_api.id(61690037155782978180)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690037452437978180)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909072305296834903)
,p_parameter_id=>wwv_flow_api.id(61690037452437978180)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909245408290483854)
,p_parameter_id=>wwv_flow_api.id(61690037452437978180)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691627156036832404)
,p_parameter_id=>wwv_flow_api.id(61690037452437978180)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822378356282514433)
,p_parameter_id=>wwv_flow_api.id(61690037452437978180)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690037731891978180)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909072782990834903)
,p_parameter_id=>wwv_flow_api.id(61690037731891978180)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909245863893483855)
,p_parameter_id=>wwv_flow_api.id(61690037731891978180)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691628006677832405)
,p_parameter_id=>wwv_flow_api.id(61690037731891978180)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822378799523514433)
,p_parameter_id=>wwv_flow_api.id(61690037731891978180)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690038042387978181)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909073111066834904)
,p_parameter_id=>wwv_flow_api.id(61690038042387978181)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909246222744483855)
,p_parameter_id=>wwv_flow_api.id(61690038042387978181)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691628769686832405)
,p_parameter_id=>wwv_flow_api.id(61690038042387978181)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822379223577514433)
,p_parameter_id=>wwv_flow_api.id(61690038042387978181)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690038421293978181)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909073516375834904)
,p_parameter_id=>wwv_flow_api.id(61690038421293978181)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909246681036483855)
,p_parameter_id=>wwv_flow_api.id(61690038421293978181)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691629562692832406)
,p_parameter_id=>wwv_flow_api.id(61690038421293978181)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822379578263514434)
,p_parameter_id=>wwv_flow_api.id(61690038421293978181)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690038660167978181)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909073944468834904)
,p_parameter_id=>wwv_flow_api.id(61690038660167978181)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909247043720483856)
,p_parameter_id=>wwv_flow_api.id(61690038660167978181)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691630345623832407)
,p_parameter_id=>wwv_flow_api.id(61690038660167978181)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822380011384514434)
,p_parameter_id=>wwv_flow_api.id(61690038660167978181)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690298845081634826)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909074355929834905)
,p_parameter_id=>wwv_flow_api.id(61690298845081634826)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909247481070483856)
,p_parameter_id=>wwv_flow_api.id(61690298845081634826)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691631132699832408)
,p_parameter_id=>wwv_flow_api.id(61690298845081634826)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822380327800514435)
,p_parameter_id=>wwv_flow_api.id(61690298845081634826)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690685532262063920)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909074788657834905)
,p_parameter_id=>wwv_flow_api.id(61690685532262063920)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909247827774483857)
,p_parameter_id=>wwv_flow_api.id(61690685532262063920)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691632015340832408)
,p_parameter_id=>wwv_flow_api.id(61690685532262063920)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822380767354514436)
,p_parameter_id=>wwv_flow_api.id(61690685532262063920)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690685871039063920)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909075192083834905)
,p_parameter_id=>wwv_flow_api.id(61690685871039063920)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909248287319483857)
,p_parameter_id=>wwv_flow_api.id(61690685871039063920)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691632772555832409)
,p_parameter_id=>wwv_flow_api.id(61690685871039063920)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822381180572514436)
,p_parameter_id=>wwv_flow_api.id(61690685871039063920)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690686210652063921)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909075502011834905)
,p_parameter_id=>wwv_flow_api.id(61690686210652063921)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909248694546483857)
,p_parameter_id=>wwv_flow_api.id(61690686210652063921)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691633588406832410)
,p_parameter_id=>wwv_flow_api.id(61690686210652063921)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822381586464514436)
,p_parameter_id=>wwv_flow_api.id(61690686210652063921)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690686480233063921)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909068769085834900)
,p_parameter_id=>wwv_flow_api.id(61690686480233063921)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909241803217483850)
,p_parameter_id=>wwv_flow_api.id(61690686480233063921)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691634344687832411)
,p_parameter_id=>wwv_flow_api.id(61690686480233063921)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822381932116514437)
,p_parameter_id=>wwv_flow_api.id(61690686480233063921)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690686743980063921)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909069162091834901)
,p_parameter_id=>wwv_flow_api.id(61690686743980063921)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909242242450483851)
,p_parameter_id=>wwv_flow_api.id(61690686743980063921)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691635160061832411)
,p_parameter_id=>wwv_flow_api.id(61690686743980063921)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822382363927514437)
,p_parameter_id=>wwv_flow_api.id(61690686743980063921)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690687044310063921)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909069517058834901)
,p_parameter_id=>wwv_flow_api.id(61690687044310063921)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909242624594483851)
,p_parameter_id=>wwv_flow_api.id(61690687044310063921)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691635942941832412)
,p_parameter_id=>wwv_flow_api.id(61690687044310063921)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822382770698514437)
,p_parameter_id=>wwv_flow_api.id(61690687044310063921)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690687397333063922)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909069973275834901)
,p_parameter_id=>wwv_flow_api.id(61690687397333063922)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909243074134483852)
,p_parameter_id=>wwv_flow_api.id(61690687397333063922)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691636813387832413)
,p_parameter_id=>wwv_flow_api.id(61690687397333063922)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822383160767514437)
,p_parameter_id=>wwv_flow_api.id(61690687397333063922)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690687651343063922)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909070394282834902)
,p_parameter_id=>wwv_flow_api.id(61690687651343063922)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909243460646483852)
,p_parameter_id=>wwv_flow_api.id(61690687651343063922)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691637548250832413)
,p_parameter_id=>wwv_flow_api.id(61690687651343063922)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822383566255514438)
,p_parameter_id=>wwv_flow_api.id(61690687651343063922)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61690688022662063923)
,p_ws_opers_id=>wwv_flow_api.id(61689945884978967209)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909070741173834902)
,p_parameter_id=>wwv_flow_api.id(61690688022662063923)
,p_process_id=>wwv_flow_api.id(31909068349647834898)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31909243818056483852)
,p_parameter_id=>wwv_flow_api.id(61690688022662063923)
,p_process_id=>wwv_flow_api.id(31909241471280483849)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61691638358633832414)
,p_parameter_id=>wwv_flow_api.id(61690688022662063923)
,p_process_id=>wwv_flow_api.id(61691624727965832401)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61822383978747514438)
,p_parameter_id=>wwv_flow_api.id(61690688022662063923)
,p_process_id=>wwv_flow_api.id(61822377206563514430)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USCITIZEN'
);
end;
/
prompt --application/shared_components/logic/webservices/person
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(91027742116205631728)
,p_name=>'Person'
,p_url=>'aevum.cs.utexas.edu:7060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(91027742303214631734)
,p_ws_id=>wwv_flow_api.id(91027742116205631728)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61582357174827227055)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685839046880434908)
,p_parameter_id=>wwv_flow_api.id(61582357174827227055)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027742683486631737)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027745708625650768)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685839882075434909)
,p_parameter_id=>wwv_flow_api.id(91027745708625650768)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027746002147650768)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685840657938434910)
,p_parameter_id=>wwv_flow_api.id(91027746002147650768)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027746385429650769)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685841449076434911)
,p_parameter_id=>wwv_flow_api.id(91027746385429650769)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027746691992650769)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685842320887434911)
,p_parameter_id=>wwv_flow_api.id(91027746691992650769)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027746922014650769)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685843031527434912)
,p_parameter_id=>wwv_flow_api.id(91027746922014650769)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027747211063650770)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685843851945434913)
,p_parameter_id=>wwv_flow_api.id(91027747211063650770)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027747506890650770)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685844685209434914)
,p_parameter_id=>wwv_flow_api.id(91027747506890650770)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91027766008773029288)
,p_ws_opers_id=>wwv_flow_api.id(91027742303214631734)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61685845444166434914)
,p_parameter_id=>wwv_flow_api.id(91027766008773029288)
,p_process_id=>wwv_flow_api.id(61685838252892434905)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(31858470250910276942)
);
end;
/
prompt --application/deployment/install
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
