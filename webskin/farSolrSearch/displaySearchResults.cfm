<cfsetting enablecfoutputonly="true" />
<!--- @@Copyright: Daemon Pty Limited 2002-2009, http://www.daemon.com.au --->
<!--- @@License:  --->
<!--- @@displayname: Displays results found --->
<!--- @@description:   --->
<!--- @@author: Matthew Bryant (mbryant@daemon.com.au) --->

<!------------------ 
FARCRY IMPORT FILES
 ------------------>
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<cfparam name="stParam.qResults" default="#queryNew('blah')#" />
<cfparam name="stParam.searchCriteria" default="" />
<cfparam name="stParam.actionURL" default="" />
<cfparam name="stParam.paginationID" default="results" />
<cfparam name="stParam.pageLinks" default="5" />
<cfparam name="stParam.recordsPerPage" default="25" />
<cfparam name="stParam.searchItemWebskin" default="displaySearchResult" />

<!------------------ 
START WEBSKIN
 ------------------>
<!--- display search results --->
<skin:pagination
	actionURL="#stParam.actionURL#"
	paginationID="#stParam.paginationID#"
	qRecordSet="#stParam.qResults#"
	pageLinks="#stParam.pageLinks#"
	recordsPerPage="#stParam.recordsPerPage#"
	r_stobject="st">
		<skin:view 
			typename="#st.custom1#" 
			objectid="#st.objectid#" 
			webskin="#stParam.searchItemWebskin#"
			searchCriteria="#stParam.searchCriteria#"
			rank="#st.rank#"
			score="#st.score#"
			title="#st.title#"
			key="#st.key#"
			summary="#st.summary#" />
</skin:pagination>

<cfsetting enablecfoutputonly="false" />