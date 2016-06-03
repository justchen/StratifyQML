/*
Copyright 2016 Tyler Gilbert

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

pragma Singleton;
import QtQuick 2.6

Item {

    property var fontawesome: FontLoader { id: fontawesomeInternal; source: "assets/fontawesome-webfont.ttf"; }
    property var opensans: FontLoader { id: opensansInternal; source: "assets/OpenSans-Light.ttf"; }

    function lighten(col,amt){ return Qt.lighter(col, 1 + amt/100); }
    function darken(col,amt){ return Qt.darker(col, 1 + amt/100); }
    property string gray_base: "#333";
    property string gray_darker: lighten(gray_base, 13.5);

    property string gray_dark: lighten(gray_base, 20);
    property string gray: lighten(gray_base, 33.5);
    property string gray_light: lighten(gray_base, 46.7);
    property string gray_lighter: lighten(gray_base, 93.5);
    property string brand_primary: darken("#1D7DC5", 6.5);
    property string brand_success: "#5cb85c";
    property string brand_info: "#44546A";
    property string brand_warning: "#f0ad4e";
    property string brand_danger: "#d9534f";
    property string body_bg: "#fff";
    property string text_color: gray;
    property string link_color: brand_primary;
    property string link_hover_color: darken(link_color, 15);
    property string link_hover_decoration: "underline";
    property string font_family_sans_serif: "Open Sans Light";
    property string font_family_serif: "Times New Roman";
    property string font_family_monospace: "Monaco";
    property string font_family_base: font_family_sans_serif;
    property real font_size_base: 18;
    property real font_size_large: Math.ceil((font_size_base * 1.25));
    property real font_size_small: Math.ceil((font_size_base * 0.75));
    property real font_size_h1: Math.floor((font_size_base * 2.6));
    property real font_size_h2: Math.floor((font_size_base * 2.15));
    property real font_size_h3: Math.ceil((font_size_base * 1.7));
    property real font_size_h4: Math.ceil((font_size_base * 1.25));
    property real font_size_h5: font_size_base;
    property real font_size_h6: Math.ceil((font_size_base * 0.85));
    property real line_height_base: 1.428571429;
    property real line_height_computed: Math.floor((font_size_base * line_height_base));
    property string headings_font_family: "inherit";
    property real headings_font_weight: 500;
    property real headings_line_height: 1.1;
    property string headings_color: "inherit";
    property string icon_font_path: "assets/fonts/";
    property real padding_base_vertical: 6;
    property real padding_base_horizontal: 12;
    property real padding_large_vertical: 10;
    property real padding_large_horizontal: 16;
    property real padding_small_vertical: 5;
    property real padding_small_horizontal: 10;
    property real padding_xs_vertical: 1;
    property real padding_xs_horizontal: 5;
    property real line_height_large: 1.3333333;
    property real line_height_small: 1.5;
    property real border_radius_base: 4;
    property real border_radius_large: 6;
    property real border_radius_small: 3;
    property string component_active_color: "#fff";
    property string component_active_bg: brand_primary;
    property real caret_width_base: 4;
    property real caret_width_large: 5;
    property real table_cell_padding: 8;
    property real table_condensed_cell_padding: 5;
    property string table_bg: "transparent";
    property string table_bg_accent: "#f9f9f9";
    property string table_bg_hover: "#f5f5f5";
    property string table_bg_active: table_bg_hover;
    property string table_border_color: "#ddd";
    property string btn_font_weight: "normal";
    property string btn_default_color: "#333";
    property string btn_default_bg: "#fff";
    property string btn_default_border: "#ccc";
    property string btn_primary_color: "#fff";
    property string btn_primary_bg: brand_primary;
    property string btn_primary_border: darken(btn_primary_bg, 5);
    property string btn_success_color: "#fff";
    property string btn_success_bg: brand_success;
    property string btn_success_border: darken(btn_success_bg, 5);
    property string btn_info_color: "#fff";
    property string btn_info_bg: brand_info;
    property string btn_info_border: darken(btn_info_bg, 5);
    property string btn_warning_color: "#fff";
    property string btn_warning_bg: brand_warning;
    property string btn_warning_border: darken(btn_warning_bg, 5);
    property string btn_danger_color: "#fff";
    property string btn_danger_bg: brand_danger;
    property string btn_danger_border: darken(btn_danger_bg, 5);
    property string btn_link_disabled_color: gray_light;
    property real btn_border_radius_base: border_radius_base;
    property real btn_border_radius_large: border_radius_large;
    property real btn_border_radius_small: border_radius_small;
    property string input_bg: "#fff";
    property string input_bg_disabled: gray_lighter;
    property string input_color: gray;
    property string input_border: "#ccc";
    property real input_border_radius: border_radius_base;
    property real input_border_radius_large: border_radius_large;
    property real input_border_radius_small: border_radius_small;
    property string input_border_focus: "#66afe9";
    property string input_color_placeholder: "#999";
    property real input_height_base: (line_height_computed + (padding_base_vertical * 2) + 2);
    property real input_height_large: (Math.ceil(font_size_large * line_height_large) + (padding_large_vertical * 2) + 2);
    property real input_height_small: (Math.floor(font_size_small * line_height_small) + (padding_small_vertical * 2) + 2);
    property real form_group_margin_bottom: 15;
    property string legend_color: gray_dark;
    property string legend_border_color: "#e5e5e5";
    property string input_group_addon_bg: gray_lighter;
    property string input_group_addon_border_color: input_border;
    property string cursor_disabled: "not_allowed";
    property string dropdown_bg: "#fff";
    property string dropdown_border: Qt.rgba(0,0,0,.15);
    property string dropdown_fallback_border: "#ccc";
    property string dropdown_divider_bg: "#e5e5e5";
    property string dropdown_link_color: gray_dark;
    property string dropdown_link_hover_color: darken(gray_dark, 5);
    property string dropdown_link_hover_bg: "#f5f5f5";
    property string dropdown_link_active_color: component_active_color;
    property string dropdown_link_active_bg: component_active_bg;
    property string dropdown_link_disabled_color: gray_light;
    property string dropdown_header_color: gray_light;
    property string dropdown_caret_color: "#000";
    property real screen_xs: 350;
    property real screen_xs_min: screen_xs;
    property real screen_phone: screen_xs_min;
    property real screen_sm: 480;
    property real screen_sm_min: screen_sm;
    property real screen_tablet: screen_sm_min;
    property real screen_md: 768;
    property real screen_md_min: screen_md;
    property real screen_desktop: screen_md_min;
    property real screen_lg: 992;
    property real screen_lg_min: screen_lg;
    property real screen_lg_desktop: screen_lg_min;
    property real screen_xs_max: (screen_sm_min - 1);
    property real screen_sm_max: (screen_md_min - 1);
    property real screen_md_max: (screen_lg_min - 1);
    property real grid_columns: 12;
    property real grid_gutter_width: 30;
    property real grid_float_breakpoint: screen_sm_min;
    property real grid_float_breakpoint_max: (grid_float_breakpoint - 1);
    property real container_tablet: (720 + grid_gutter_width);
    property real container_sm: container_tablet;
    property real container_desktop: (940 + grid_gutter_width);
    property real container_md: container_desktop;
    property real container_large_desktop: (1140 + grid_gutter_width);
    property real container_lg: container_large_desktop;
    property real navbar_height: 50;
    property real navbar_margin_bottom: line_height_computed;
    property real navbar_border_radius: border_radius_base;
    property real navbar_padding_horizontal: Math.floor((grid_gutter_width / 2));
    property real navbar_padding_vertical: ((navbar_height - line_height_computed) / 2);
    property real navbar_collapse_max_height: 340;
    property string navbar_default_color: "#777";
    property string navbar_default_bg: "#f8f8f8";
    property string navbar_default_border: darken(navbar_default_bg, 6.5);
    property string navbar_default_link_color: "#777";
    property string navbar_default_link_hover_color: "#333";
    property string navbar_default_link_hover_bg: "transparent";
    property string navbar_default_link_active_color: "#555";
    property string navbar_default_link_active_bg: darken(navbar_default_bg, 6.5);
    property string navbar_default_link_disabled_color: "#ccc";
    property string navbar_default_link_disabled_bg: "transparent";
    property string navbar_default_brand_color: navbar_default_link_color;
    property string navbar_default_brand_hover_color: darken(navbar_default_brand_color, 10);
    property string navbar_default_brand_hover_bg: "transparent";
    property string navbar_default_toggle_hover_bg: "#ddd";
    property string navbar_default_toggle_icon_bar_bg: "#888";
    property string navbar_default_toggle_border_color: "#ddd";
    property string navbar_inverse_color: lighten(gray_light, 15);
    property string navbar_inverse_bg: "#222";
    property string navbar_inverse_border: darken(navbar_inverse_bg, 10);
    property string navbar_inverse_link_color: lighten(gray_light, 15);
    property string navbar_inverse_link_hover_color: "#fff;"
    property string navbar_inverse_link_hover_bg: "transparent";
    property string navbar_inverse_link_active_color: navbar_inverse_link_hover_color;
    property string navbar_inverse_link_active_bg: darken(navbar_inverse_bg, 10);
    property string navbar_inverse_link_disabled_color: "#444";
    property string navbar_inverse_link_disabled_bg: "transparent";
    property string navbar_inverse_brand_color: navbar_inverse_link_color;
    property string navbar_inverse_brand_hover_color: "#fff";
    property string navbar_inverse_brand_hover_bg: "transparent";
    property string navbar_inverse_toggle_hover_bg: "#333";
    property string navbar_inverse_toggle_icon_bar_bg: "#fff";
    property string navbar_inverse_toggle_border_color: "#333";
    property real nav_link_padding: 15;
    property string nav_link_hover_bg: gray_lighter;
    property string nav_disabled_link_color: gray_light;
    property string nav_disabled_link_hover_color: gray_light;
    property string nav_tabs_border_color: "#ddd";
    property string nav_tabs_link_hover_border_color: gray_lighter;
    property string nav_tabs_active_link_hover_bg: body_bg;
    property string nav_tabs_active_link_hover_color: gray;
    property string nav_tabs_active_link_hover_border_color: "#ddd";
    property string nav_tabs_justified_link_border_color: "#ddd";
    property string nav_tabs_justified_active_link_border_color: body_bg;
    property string nav_pills_border_radius: border_radius_base;
    property string nav_pills_active_link_hover_bg: component_active_bg;
    property string nav_pills_active_link_hover_color: component_active_color;
    property string pagination_color: link_color;
    property string pagination_bg: "#fff";
    property string pagination_border: "#ddd";
    property string pagination_hover_color: link_hover_color;
    property string pagination_hover_bg: gray_lighter;
    property string pagination_hover_border: "#ddd";
    property string pagination_active_color: "#fff";
    property string pagination_active_bg: brand_primary;
    property string pagination_active_border: brand_primary;
    property string pagination_disabled_color: gray_light;
    property string pagination_disabled_bg: "#fff";
    property string pagination_disabled_border: "#ddd";
    property string pager_bg: pagination_bg;
    property string pager_border: pagination_border;
    property real pager_border_radius: 15;
    property string pager_hover_bg: pagination_hover_bg;
    property string pager_active_bg: pagination_active_bg;
    property string pager_active_color: pagination_active_color;
    property string pager_disabled_color: pagination_disabled_color;
    property real jumbotron_padding: 30;
    property string jumbotron_color: "inherit";
    property string jumbotron_bg: gray_lighter;
    property string jumbotron_heading_color: "inherit";
    property real jumbotron_font_size: Math.ceil((font_size_base * 1.5));
    property real jumbotron_heading_font_size: Math.ceil((font_size_base * 4.5));
    property string state_success_text: "#3c763d";
    property string state_success_bg: "#dff0d8";
    property string state_success_border: darken(state_success_bg, 15);
    property string state_info_text: "#31708f";
    property string state_info_bg: "#d9edf7";
    property string state_info_border: darken(state_info_bg, 15);
    property string state_warning_text: "#8a6d3b";
    property string state_warning_bg: "#fcf8e3";
    property string state_warning_border: darken(state_warning_bg, 15);
    property string state_danger_text: "#a94442";
    property string state_danger_bg: "#f2dede";
    property string state_danger_border: darken(state_danger_bg, 15);
    property real tooltip_max_width: 200;
    property string tooltip_color: "#fff";
    property string tooltip_bg: "#000";
    property real tooltip_opacity: .9;
    property real tooltip_arrow_width: 5;
    property string tooltip_arrow_color: tooltip_bg;
    property string popover_bg: "#fff";
    property real popover_max_width: 276;
    property string popover_border_color: Qt.rgba(0,0,0,.2);
    property string popover_fallback_border_color: "#ccc";
    property string popover_title_bg: darken(popover_bg, 3);
    property real popover_arrow_width: 10;
    property string popover_arrow_color: popover_bg;
    property real popover_arrow_outer_width: (popover_arrow_width + 1);
    //property string popover_arrow_outer_color: fadein(popover_border_color, 5);
    property string popover_arrow_outer_fallback_color: darken(popover_fallback_border_color, 20);
    property string label_default_bg: gray_light;
    property string label_primary_bg: brand_primary;
    property string label_success_bg: brand_success;
    property string label_info_bg: brand_info;
    property string label_warning_bg: brand_warning;
    property string label_danger_bg: brand_danger;
    property string label_color: "#fff";
    property string label_link_hover_color: "#fff";
    property real modal_inner_padding: 15;
    property real modal_title_padding: 15;
    property real modal_title_line_height: line_height_base;
    property string modal_content_bg: "#fff";
    property string modal_content_border_color: Qt.rgba(0,0,0,.2);
    property string modal_content_fallback_border_color: "#999";
    property string modal_backdrop_bg: "#000";
    property real modal_backdrop_opacity: .5;
    property string modal_header_border_color: "#e5e5e5";
    property string modal_footer_border_color: modal_header_border_color;
    property real modal_lg: 900;
    property real modal_md: 600;
    property real modal_sm: 300;
    property real alert_padding: 15;
    property real alert_border_radius: border_radius_base;
    property string alert_link_font_weight: "bold";
    property string alert_success_bg: state_success_bg;
    property string alert_success_text: state_success_text;
    property string alert_success_border: state_success_border;
    property string alert_info_bg: state_info_bg;
    property string alert_info_text: state_info_text;
    property string alert_info_border: state_info_border;
    property string alert_warning_bg: state_warning_bg;
    property string alert_warning_text: state_warning_text;
    property string alert_warning_border: state_warning_border;
    property string alert_danger_bg: state_danger_bg;
    property string alert_danger_text: state_danger_text;
    property string alert_danger_border: state_danger_border;
    property string progress_bg: "#f5f5f5";
    property string progress_bar_color: "#fff";
    property real progress_border_radius: border_radius_base;
    property string progress_bar_bg: brand_primary;
    property string progress_bar_success_bg: brand_success;
    property string progress_bar_warning_bg: brand_warning;
    property string progress_bar_danger_bg: brand_danger;
    property string progress_bar_info_bg: brand_info;
    property string list_group_bg: "#fff";
    property string list_group_border: "#ddd";
    property real list_group_border_radius: border_radius_base;
    property string list_group_hover_bg: "#f5f5f5";
    property string list_group_active_color: component_active_color;
    property string list_group_active_bg: component_active_bg;
    property string list_group_active_border: list_group_active_bg;
    property string list_group_active_text_color: lighten(list_group_active_bg, 40);
    property string list_group_disabled_color: gray_light;
    property string list_group_disabled_bg: gray_lighter;
    property string list_group_disabled_text_color: list_group_disabled_color;
    property string list_group_link_color: "#555";
    property string list_group_link_hover_color: list_group_link_color;
    property string list_group_link_heading_color: "#333";
    property string panel_bg: "#fff";
    property real panel_body_padding: 15;
    property real panel_heading_padding: 15;
    property real panel_footer_padding: 15;
    property real panel_border_radius: border_radius_base;
    property string panel_inner_border: "#ddd";
    property string panel_footer_bg: "#f5f5f5";
    property string panel_default_text: gray_dark;
    property string panel_default_border: "#ddd";
    property string panel_default_heading_bg: "#f5f5f5";
    property string panel_primary_text: "#fff";
    property string panel_primary_border: brand_primary;
    property string panel_primary_heading_bg: brand_primary;
    property string panel_success_text: state_success_text;
    property string panel_success_border: state_success_border;
    property string panel_success_heading_bg: state_success_bg;
    property string panel_info_text: state_info_text;
    property string panel_info_border: state_info_border;
    property string panel_info_heading_bg: state_info_bg;
    property string panel_warning_text: state_warning_text;
    property string panel_warning_border: state_warning_border;
    property string panel_warning_heading_bg: state_warning_bg;
    property string panel_danger_text: state_danger_text;
    property string panel_danger_border: state_danger_border;
    property string panel_danger_heading_bg: state_danger_bg;
    property real thumbnail_padding: 4;
    property string thumbnail_bg: body_bg;
    property string thumbnail_border: "#ddd";
    property real thumbnail_border_radius: border_radius_base;
    property string thumbnail_caption_color: text_color;
    property real thumbnail_caption_padding: 9;
    property string well_bg: "#f5f5f5";
    property string well_border: darken(well_bg, 7);
    property string badge_color: "#fff";
    property string badge_link_hover_color: "#fff";
    property string badge_bg: gray_light;
    property string badge_active_color: link_color;
    property string badge_active_bg: "#fff";
    property string badge_font_weight: "bold";
    property real badge_line_height: 1;
    property real badge_border_radius: 10;
    property real breadcrumb_padding_vertical: 8;
    property real breadcrumb_padding_horizontal: 15;
    property string breadcrumb_bg: "#f5f5f5";
    property string breadcrumb_color: "#ccc";
    property string breadcrumb_active_color: gray_light;
    property string breadcrumb_separator: "\\";
    //property string carousel_text_shadow: 0 1 2 rgba(0,0,0,.6);
    property string carousel_control_color: "#fff";
    property real carousel_control_width: 15;
    property real carousel_control_opacity: .5;
    property real carousel_control_font_size: 20;
    property string carousel_indicator_active_bg: "#fff";
    property string carousel_indicator_border_color: "#fff";
    property string carousel_caption_color: "#fff";
    property string close_font_weight: "bold";
    property string close_color: "#000";
    //property string close_text_shadow: 0 1 0 #fff;
    property string code_color: "#c7254e";
    property string code_bg: "#f9f2f4";
    property string kbd_color: "#fff";
    property string kbd_bg: "#333";
    property string pre_bg: "#f5f5f5";
    property string pre_color: gray_dark;
    property string pre_border_color: "#ccc";
    property real pre_scrollable_max_height: 340;
    property real component_offset_horizontal: 180;
    property string text_muted: gray_light;
    property string abbr_border_color: gray_light;
    property string headings_small_color: gray_light;
    property string blockquote_small_color: gray_light;
    property real blockquote_font_size: (font_size_base * 1.25);
    property string blockquote_border_color: gray_lighter;
    property string page_header_border_color: gray_lighter;
    property real dl_horizontal_offset: component_offset_horizontal;
    property real dl_horizontal_breakpoint: grid_float_breakpoint;
    property string hr_border: gray_lighter;

    property real tooltip_delay: 500;
    property real popover_delay: 500;
    property real popover_opacity: 1;


}
