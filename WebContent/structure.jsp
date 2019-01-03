<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="static/css/common.css" />
<style type="text/css">
{
	font-size: 18px;
}
</style>
<script type="text/javascript" src="http://tabcollapse.okendoken.com/example/lib/js/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="static/js/jquery.sticky.js"></script>
<script src="static/js/ddscrollspy.js"></script>
<script src="https://peter-ertl.com/jsme/JSME_2017-02-26/jsme/jsme.nocache.js"></script>

<!--<script type="text/javascript">
   //this function will be called after the JavaScriptApplet code has been loaded.
      function jsmeOnLoad() {
          jsmeApplet = new JSApplet.JSME("jsme_container", "600px", "400px");
     }
</script>-->

<script type="text/javascript">

	//this function will be called after the JavaScriptApplet code has been loaded.
	function jsmeOnLoad() {

		//Instantiate a new JSME:
		//arguments: HTML id, width, height (must be string not number!)

		jsmeApplet = new JSApplet.JSME("jsme_container", "440px", "400px", {
			//optional parameters
			"options" : "query,hydrogens"
		});

		//Alternative method: the size is not specified: the applet will use 100% of the space of its parent container "appletContainer".
		//Be sure that the parent container size > 0, otherwise the applet will not be visible

		/*    	jsmeApplet = new JSApplet.JSME("appletContainer",  {
		 //optional parameters
		 "options" : "query,hydrogens",
		 "jme" : startingStructure
		 });
		 */

		//Opera patch: if some applet elements are not displayed, force repaint
		//jsmeApplet.deferredRepaint(); //the applet will be repainted after the browser event loop returns
		//it is recommended to use it if the JSME is created outside this jsmeOnLoad() function

		//jsmeApplet has the same API as the original Java applet
		//One can mimic the JME Java applet access to simplify the adaptation of HTML and JavaScript code:
		document.JME = jsmeApplet;

		//suggestion 
		//all buttons that access the jsme variable were disabled in the html
		//Now enable all buttons that can access the jsme variable since the applet is ready
		//example:
		//document.getElementById("button").disabled=false;

	}

	function readMolecule() {
		var jme = "16 17 C 7.37 -8.99 C 7.37 -7.59 C 6.16 -6.89 C 4.95 -7.59 C 4.95 -8.99 C 6.16 -9.69 N 8.58 -6.89 C 8.58 -5.49 C 7.37 -4.79 O 6.16 -5.49 C 9.80 -7.59 O 9.80 -8.99 C 11.01 -6.89 Cl 12.22 -7.59 Cl 11.01 -5.49 C 9.80 -4.79 1 2 1 2 3 2 3 4 1 4 5 2 5 6 1 6 1 2 7 8 1 8 9 1 9 10 1 3 10 1 2 7 1 7 11 1 11 12 2 11 13 1 13 14 1 13 15 1 8 16 1";
		jsmeApplet.readMolecule(jme); // or document.JME.readMolecule(jme);
	}

	function readMultipart() {
		var jme = "9 9 C 6.68 -7.15 C 5.47 -6.45 C 4.26 -7.15 C 4.26 -8.55 C 5.47 -9.25 C 6.68 -8.55 C 5.47 -5.05 O- 6.68 -4.35 O 4.26 -4.35 1 2 1 2 3 2 3 4 1 4 5 2 5 6 1 6 1 2 2 7 1 7 8 1 7 9 2|1 0 Na+ 12.21 -6.61";
		jsmeApplet.readMolecule(jme) // or document.JME.readMolecule(jme
	}

	function readReaction() {
		var jme = "3 2 C:1 1.41 -7.12 O:2 1.41 -5.72 Cl 2.63 -7.82 1 2 2 1 3 1|3 2 N:3 5.72 -6.78 C:4 7.12 -6.78 H:5 5.02 -7.99 1 2 1 1 3 1 >> 5 4 C:1 13.51 -6.40 O:2 13.51 -5.00 N:3 14.72 -7.10 C:4 15.94 -6.40 H:5 14.71 -8.50 1 2 2 1 3 1 3 4 1 3 5 1";
		jsmeApplet.readMolecule(jme);
	}

	function getMolfile() {
		var data = document.JME.molFile();
		document.getElementById("jme_output").value = data;

	}
	function getSmiles() {
		var data = document.JME.smiles();
		document.getElementById("jme_output").value = data;
	}
	function getJMEstring() {
		var data = document.JME.jmeFile();
		document.getElementById("jme_output").value = data;
	}
</script>
  
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-93486213-4"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-93486213-4');
</script>
<script>
	function fill_smibox(a_id)
	  {
	  ae=document.getElementById(a_id);
	  smibox=document.getElementById('researchSmiles');
	  smibox.value=ae.innerHTML;
	  return;
	  }
</script>
<title>Natural Product Bank</title>
</head>

<body>
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
              <h1 class="sectionTitle">Natural Product : Structure
                    <a class="helpLink" target="_blank" href="#">?</a>
                </h1>
            </div>
           <div class="col-md-12 col-lg-12" style="margin-top: 10px;"">

            <form NAME=MolForm1 id='MolForm1'  method="POST" action="search_compound_s.php" target="_blank">
              <div id="structure-drawer" style="min-height:500px; width: 100%; float: left;">
                <h2><b>Draw Chemical Structure</b></h2>
                <div id="jsme_container" name='drawStructure' style="height:405px; margin-top: 10px; width: 60%; float: left;"></div>
                <div style="height:20px; width: 100%; float: left;">
                 	<input id="searchButton" name="SMILES_drawStructure" type='button' onclick='document.getElementById("researchSmiles").value=jsmeApplet.smiles()' VALUE="Submit" style="height:22px; width:130px; color:#FFF; background-color:#630">
                	<input id="smiles" name="smiles" value="" style="display:none">
                </div>
                <div style="width: 60%; left:200px; padding-top:50px; padding-left:480px;">
                	<form id="topic" class="exploreForm">
                        <div class="searchSubForm requiredSection">
                            <div class="formRow">
                                <input type="text" id="researchSmiles" name="SMILES" maxlength="500">
                                <p class="hint">Please input SMILES.</p>
                                <p class="hint">Examples:<a id='a_ss2' href='javascript:fill_smibox("a_ss2")' style='text-decoration: none'>SMILES</a></p>
                                <p class="hint">&nbsp;</p>
                                <div data-field-error-for="topic" class="errorMessageWrapper hideNode"></div>
                                <div data-form-error-for="topic" class="errorMessageWrapper hideNode"></div>
                            </div>
                        </div>
                   </form>
                  <div style="height:200px;">
                      <ul class="column" style=" list-style:none; font-size:18px">
                        <li style=" list-style:none">
                            <input type="radio" id="PreciseStructure" name="radioStructure" value="PreciseStructure">Precise Structure
                        </li>
                        <li style=" list-style:none"><p>&nbsp;</p></li>
                        <li style=" list-style:none">
                            <input type="radio" id="Substructure" name="radioStructure" value="Substructure">Substructure
                        </li>
                        <li style=" list-style:none"><p>&nbsp;</p></li>
                        <li style=" list-style:none">
                            <input type="radio" id="SimilarStructure" name="radioStructure" value="SimilarStructure">Similar Structure
                        </li>
                        <dl class="sublist" id="Achild">
                        	<dd>
                            	<div>
                                	<div style="display:inline;"><font size='3.5'> *Fingerprint Type: </font></div>
                                        <select id="fingerprintType" name="fingerprintType" style=" height:25px; font-size:14px; display:inline">
                                            <option value="pubchem881">PubChem-881 fp</option>
                                            <option value="fcfp6">FCFP6 fp</option>
                                        </select>
                                </div>
                            </dd>
                            <dd>
                              <div>
                                  <div style="display:inline"><font size='3.5'>*Threshold: </font></div>
                                  <select id="similarityCutoff_drawStructure" name="similarityCutoff_drawStructure" style=" height:25px; font-size:14px; display:inline">
                                    <option value="0.70">&gt=0.70</option>
                                    <option value="0.80">&gt=0.80</option>
                                    <option value="0.85">&gt=0.85</option>
                                    <option value="0.95">&gt=0.95</option>
                                    <option value="0.90">&gt=0.90</option>
                                    <option value="0.99">&gt=0.99</option>
                                    <option value="0.97">&gt=0.97</option>
                                    <option value="1.00">=1.0</option>
                                  </select>
                                </div>
                            </dd>
                        </dl>
                      </ul>
                  </div>
                  
                <div style="margin-left:65px; margin-top:50px;">
                  <input id="searchButton" name="SMILES_drawStructure" type='submit' onclick='document.getElementById("researchSmiles").value=jsmeApplet.smiles()' VALUE="Search" style="height:32px; width:135px">
                </div>
            </div>

            <div style="height:120px; width: 100%; float: left; text-align: left;">
                <p>&nbsp;</p>
                <p># Note: A similarity search will be performed based on Tanimoto Coefficient and PubChem 881bit fingerprint.<br>
                  		   Top 20  ingredients that most similar to your input structure will be presented.<br>
                           Click individual ingredients to access related plants.
                </p>
            </div>
        </div>
    </form>
  </div>
</div>
<!--<div id="footer">
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
</div>-->
</body>
</html>
