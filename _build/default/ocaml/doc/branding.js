/*
 * Copyright (C) 2006-2009 Citrix Systems Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; version 2.1 only. with the special
 * exception on linking described in file LICENSE.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 */

function make_title() {
	document.write('<title>Citrix Hypervisor Management API</title>');
}

function make_header(t) {
	html = '<img src="http://citrix.com/site/resources/v4_includes/css/5.0/citrix_logo.gif" alt="Citrix" width="208px" height="36px" border="0" style="float:left">'
		+ '<h1 style="float:left; font-size: 24px;"><a href="index.html">Citrix Hypervisor Management API</a></h1>'
	document.getElementById('header').innerHTML = html;
}

first_release = 'rio';

function get_release_name(s) {
	switch (s) {
		case 'rio':
			return 'XenServer 4.0';
		case 'miami':
			return 'XenServer 4.1';
		case 'symc':
			return 'XenServer 4.1.1';
		case 'orlando':
			return 'XenServer 5.0';
		case 'orlando-update-1':
			return 'XenServer 5.0 Update 1';
		case 'george':
			return 'XenServer 5.5';
		case 'midnight-ride':
			return 'XenServer 5.6';
		case 'cowley':
			return 'XenServer 5.6 FP1';
		case 'boston':
			return 'XenServer 6.0';
		case 'tampa':
			return 'XenServer 6.1';
		case 'clearwater':
			return 'XenServer 6.2';
		case 'vgpu-tech-preview':
			return 'XenServer 6.2 SP1 Tech-Preview';
		case 'vgpu-productisation':
			return 'XenServer 6.2 SP1';
		case 'clearwater-felton':
			return 'XenServer 6.2 SP1 Hotfix 4';
		case 'clearwater-whetstone':
			return 'XenServer 6.2 SP1 Hotfix 11';
		case 'creedence':
			return 'XenServer 6.5';
		case 'cream':
			return 'XenServer 6.5 SP1';
		case 'indigo':
			return 'XenServer 6.5 SP1 Hotfix 31';
		case 'dundee':
			return 'XenServer 7.0';
		case 'ely':
			return 'XenServer 7.1';
		case 'honolulu':
			return 'XenServer 7.1 CU1';
		case 'falcon':
			return 'XenServer 7.2';
		case 'inverness':
			return 'XenServer 7.3';
		case 'jura':
			return 'XenServer 7.4';
		case 'kolkata':
			return 'XenServer 7.5';
		case 'lima':
			return 'XenServer 7.6';
		case 'naples':
			return 'Citrix Hypervisor 8.0';
		case 'oslo':
			return 'Unreleased';
		case 'quebec':
			return 'Citrix Hypervisor 8.1';
		case 'stockholm':
			return 'Citrix Hypervisor 8.2';
		case 'stockholm_psr':
			return 'Citrix Hypervisor 8.2 Hotfix 2';
		case 'yangtze_https':
			return 'Citrix Hypervisor 8.2 CU1 Hotfix';
		case 'rel_next':
			return 'Unreleased';
		default:
			return 'Unreleased';
		}
}

