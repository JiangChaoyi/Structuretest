<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,com.npb.domian.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="static/css/common.css" />
<link rel="stylesheet" type="text/css" href="static/css/BioSpecies.css" />

<!-- shopping 卡片样式 -->
<link href="./css/item.css" rel="stylesheet">
<link href="./css/baike.css" rel="stylesheet" type="text/css">
<link href="http://mg.kaoyan365.cn/baoyan/css/style.css"
	rel="stylesheet" type="text/css">
<!-- Site CSS -->
<script src="./js/jquery.min.js" type="text/javascript"></script>
<link href="./css/style.css" rel="stylesheet" type="text/css">
<link href="./css/pages.css" rel="stylesheet" type="text/css">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="http://static.bootcss.com/www/assets/css/site.min.css?v5"
	rel="stylesheet">
<link href="./css/item.css" rel="stylesheet">
<style>
.job-hot {
	position: absolute;
	color: #d9534f;
	right: 0;
	top: 15px;
}

a {
	text-decoration: none;
	color: grey;
}

a:hover {
	text-decoration: none;
}

#univer {
	width: 1224px;
	min-height: 355px;
	margin: 0 auto !important;
}
</style>
<!-- 结束 -->
<title>Natural Product Bank</title>
</head>

<body>
<!-- 加载页面时，显示卡片 -->

<!-- 结束 -->










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
                <li data-type="Species Name" class="listTypes dataTypeSpeciesName" tabindex="0"><a href="SpeciesName.html">Species Name</a></li>
                <li data-type="Latin Name" class="listTypes dataTypeLatinName" tabindex="0"><a href="LatinName.html">Latin Name</a></li>
                <li data-type="Latin Name" class="listTypes dataTypeLatinName" tabindex="0"><a  href="MapSearch.php">Map Search</a></li>
                <li data-type="Geographic Location" class="listTypes dataTypeGeographicLocation" tabindex="0"><a href="NaturalConditions.html">Natural conditions</a></li>
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
      <div class="listOptionContainer dataTypetopic hideNode" data-type="topic">
            <div class="exploreFormHeader pageTitle">
                <h1 class="sectionTitle">Species: Biological Species
                  <a class="helpLink" target="_blank" href="#">?</a>
                </h1>
            </div>
            <div>
            <form action="search" method="post">
                <div class="checkBoxnav">
                    <div class="cheBox">
                        <h2 class="sectionTitle navIcon ref">
                            <span>Plants</span>
                        </h2>
                            <ul class="column">
                                <li>
                                    <input type="checkbox" id="Medicinal Plants" name="docTypes" value="Medicinal Plants">
                                    <a id="MedicinalPlants" href="#">Medicinal Plants</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="Food" name="docTypes" value="Food">
                                    <a id="Food" href="#">Food</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="Edible Plant" name="docTypes" value="Edible Plant">
                                    <a id="EdiblePlant" href="#">Edible Plant</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="Ornamental Plant" name="docTypes" value="Ornamental Plant">
                                    <a id="OrnamentalPlant" href="#">Ornamental Plant</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="AgriculturalPlant" name="docTypes" value="Agricultural Plant">
                                    <a id="AgriculturalPlant" href="#">Agricultural Plant</a>
                                </li>
                           </ul>
                    </div>
                    <div class="cheBox">
                        <h2 class="sectionTitle navIcon ref">
                            <span>Animals</span>
                        </h2>
                            <ul class="column">
                                <li>
                                    <span>
                                        <input id="A001Humanity" type="hidden" value="A">
                                        <img id="A001first" style="display: none;" onclick="plusclick('A001','','SCDBtpiresult')" src="static/Image/add_expand.png">
                                        <img id="A001second" onclick="reduceclick('A001')" onload="reduceload('A001')" src="static/Image/minus_collapse.png">
                                        <input type="checkbox" id="Metabolite" name="docTypes" value="Metabolite">
                                        <a id="Metabolite" href="#">Metabolite</a>
                                    </span>
                                </li>
                                <dl class="sublist" id="Achild">
                                    <dd>
                                        <input type="checkbox" id="Humanity" name="docTypes" value="Humanity">
                                        <a id="Humanity" href="#">Humanity</a>
                                    </dd>
                                    <dd>
                                        <input type="checkbox" id="IntestinalMicroorganism" name="docTypes" value="Intestinal Microorganism">
                                        <a id="IntestinalMicroorganism" href="#">Intestinal Microorganism</a>
                                    </dd>
                                </dl>                       
                                <li>
                                    <input type="checkbox" id="MarineLife" name="docTypes" value="Marine Life">
                                    <a id="MarineLife" href="#">Marine Life</a>
                                </li>
                                <li>
                                    <span>
                                        <input id="A001Humanity" type="hidden" value="A">
                                        <img id="A001first" style="display: none;" onclick="plusclick('A001','','SCDBtpiresult')" src="static/Image/add_expand.png">
                                        <img id="A001second" onclick="reduceclick('A001')" onload="reduceload('A001')" src="static/Image/minus_collapse.png">
                                        <input type="checkbox" id="Other" name="docTypes" value="Other">
                                        <a id="Other" href="#">Other</a>
                                    </span>
                                    <dl class="sublist" id="Achild">
                                        <dd>
                                            <input type="checkbox" id="LiverMetabolite" name="docTypes" value="Liver Metabolite">
                                            <a id="LiverMetabolite" href="#">Liver Metabolite</a>
                                        </dd>
                                    </dl>
                                </li>
                           </ul>
                    </div>
                    <div class="cheBox">
                        <h2 class="sectionTitle navIcon ref">
                            <span>Microorganism</span>
                        </h2>
                            <ul class="column">
                                <li>
                                    <input type="checkbox" id="Fungus" name="docTypes" value="Fungus">
                                    <a id="Fungus" href="#">Fungus</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="Bacterial" name="docTypes" value="Bacterial">
                                    <a id="Bacterial" href="#">Bacterial</a>
                                </li>  
                           </ul>
                    </div>
                </div>
               <div class="searchSubForm requiredSection">
               
                    <div class="formRow">
                        	<input type="text" id="researchTopic" name="keyword" maxlength="500">
                        	<p class="hint">Please input biological species name.</p><br />
                        	<p class="hint">Examples:<br><a>Red algae</a></p><br/>
                       		<div data-field-error-for="topic" class="errorMessageWrapper hideNode"></div>
                        	<div data-form-error-for="topic" class="errorMessageWrapper hideNode"></div>
                    </div>
                    <div>
                        <input class="searchButton" type="submit" value="Search">
                    </div>
                    </form>
                </div>
          </div>
      	  
      </div>
      <div class="contentNatural" style="margin-top:250px">
      	<hr width="100%" size=".1" color="#CCCCCC" align="left"/><br />
       	<p>以下应显示选中的类别的化合物</p>
       </div>
	<!-- Ajax 添加的块的地址 -->
	<div id="univer" class="wrap" style="width: 1224px; margin-left: 30px;"></div>
	<!-- end -->		
   </div>
</div>
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
</html>
