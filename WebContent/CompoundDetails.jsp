<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.npb.domian.*,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="static/css/common.css" />
<link rel="stylesheet" type="text/css" href="static/css/CompDetails.css" />

<script src="./js/jquery.min.js" type="text/javascript"></script>
<script src="./js/append.js" type="text/javascript"></script>
<title>Natural Product Bank</title>
</head>

<script>
	$(document).ready(function() {
		var CompoundDetailsList=${requestScope.CompoundDetailsList};
		getCompoundDetails(CompoundDetailsList);
	});
</script>

<body>

<div class="fullcontainer">
<div class="pageHeader" id="header"><a>Natural Product Bank</a></div>
<hr width="100%" size="6" color="#660066" align="right"/>

<div class="contentLeft">
  <div id="leftNav" class="leftNav">
        <div class="typeGroup">
            <h2 class="sectionTitle navIcon ref">
                <span>Natural Product</span>
            </h2>
          <ul class="groupList" data-group="Natural_Product">
                <li data-type="Basic Information" class="listTypes dataTypeBasic" tabindex="0"><a href="BasicInformation.html">Basic Information</a></li>
                <li data-type="Structure" class="listTypes dataTypeStructure" tabindex="0">Structure</li>
                <li data-type="Target" class="listTypes dataTypeTarget" tabindex="0"><a href="Target.html">Target</a></li>
                <li data-type="Disease" class="listTypes dataTypeDisease" tabindex="0"><a href="DiseaseSearch.html">Disease</a></li>
            </ul>
        </div>
        <div class="typeGroup">
            <h2 class="sectionTitle navIcon sub">
                <span>Species</span>
            </h2>
          <ul class="groupList" data-group="Species">
                <li data-type="Latin Name" class="listTypes dataTypeLatinName" tabindex="0"><a href="LatinName.html">Latin Name</a></li>
                <li data-type="Latin Name" class="listTypes dataTypeLatinName" tabindex="0"><a  href="MapSearch.html">Map Search</a></li>
                <li data-type="Geographic Location" class="listTypes dataTypeGeographicLocation" tabindex="0"><a href="EnvironmentalConditions.html">Environmental conditions</a></li>
                <li data-type="Genus" class="listTypes dataTypeGenus" tabindex="0">Genus</li>
                <li data-type="Biological Species" class="listTypes dataTypeBiologicalSpecies" tabindex="0"><a href="BiologicalSpecies.html">Biological Species</a></li>
            </ul>
        </div>
        <div class="typeGroup">
            <h2 class="sectionTitle navIcon rxn">
                <span>Special Subject</span>
            </h2>
          <ul class="groupList" data-group="Subject">
                <!--<li data-type="rxnStructure" class="listTypes dataTyperxnStructure" tabindex="0">Marine Microorganism</li>-->
            <li data-type="Traditional Herbs" class="listTypes dataTypeTraditionalHerbs" tabindex="0"><a href="TraditionalHerbs.html">Traditional Herbs</a></li>
                <li data-type="Intestinal Flora" class="listTypes dataTypeIntestinalFlora" tabindex="0">Intestinal Flora</li>
                <li data-type="Marine Microorganism" class="listTypes dataTypeMarineSMicroorganism" tabindex="0">Marine Microorganism</li>
            </ul>
        </div>
        <div class="typeGroup">
            <h2 class="sectionTitle navIcon rxn">
                <span>About</span>
            </h2>
        </div>
    </div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>





<div class="contentCenter">
    <input name="nav" type="hidden" value="" />
    <div id="exploreTypeContainer">
<!-- References -->
        <div class="listOptionContainer dataTypetopic hideNode" data-type="topic" id="CompoundDetails">
        	<!-- 此块中为js填充内容 -->
       </div>
   </div>
</div></div>
<div id="footer">
    <p>
        <a href="#" target="_blank">
            Contact Us
        </a> | <a class="linkLegal" href="#" target="_blank">
            Legal
        </a>
    </p>  
    <p class="copyrightNotice">     
        Copyright © 2018 China Pharmaceutical University. All Rights Reserved.
        &nbsp;|&nbsp;&nbsp;<a tabindex="50" class="cdnKey" href="#" target="_blank">XXXXXXXXXXXXXXX</a>
    </p>
</div>
</body>
</body>
</html>
