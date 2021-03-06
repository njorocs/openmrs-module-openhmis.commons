<%--
  ~ The contents of this file are subject to the OpenMRS Public License
  ~ Version 2.0 (the "License"); you may not use this file except in
  ~ compliance with the License. You may obtain a copy of the License at
  ~ http://license.openmrs.org
  ~
  ~ Software distributed under the License is distributed on an "AS IS"
  ~ basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
  ~ License for the specific language governing rights and limitations
  ~ under the License.
  ~
  ~ Copyright (C) OpenMRS, LLC.  All Rights Reserved.
  --%>
<ul class="navList">
	<li id="homeNavLink" class="firstChild">
		<a href="${pageContext.request.contextPath}/"><openmrs:message code="Navigation.home"/></a>
	</li>

	<li id="findPatientNavLink">
		<a href="${pageContext.request.contextPath}/findPatient.htm">
			<openmrs:hasPrivilege privilege="Add Patients">
				<openmrs:message code="Navigation.findCreatePatient"/>
			</openmrs:hasPrivilege>
			<openmrs:hasPrivilege privilege="Add Patients" inverse="true">
				<openmrs:message code="Navigation.findPatient"/>
			</openmrs:hasPrivilege>
		</a>
	</li>

	<openmrs:hasPrivilege privilege="View Concepts">
		<li id="dictionaryNavLink">
			<a href="${pageContext.request.contextPath}/dictionary"><openmrs:message code="Navigation.dictionary"/></a>
		</li>
	</openmrs:hasPrivilege>

	<openmrs:extensionPoint pointId="org.openmrs.gutter.tools" type="html"
	                        requiredClass="org.openmrs.module.web.extension.LinkExt">
		<openmrs:hasPrivilege privilege="${extension.requiredPrivilege}">
			<li>
				<a href="${pageContext.request.contextPath}/${extension.url}"><openmrs:message
						code="${extension.label}"/></a>
			</li>
		</openmrs:hasPrivilege>
	</openmrs:extensionPoint>

	<openmrs:hasPrivilege privilege="View Administration Functions">
		<li id="administrationNavLink">
			<a href="${pageContext.request.contextPath}/admin"><openmrs:message code="Navigation.administration"/></a>
		</li>
	</openmrs:hasPrivilege>


</ul>
