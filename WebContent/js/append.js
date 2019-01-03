/*
*函数名称：getCompoundDetails
*函数作用：动态加载详情页面CompoundDetails.jsp
*参数说明：CompoundDetails类的列表
*/
function getCompoundDetails(CompoundDetailsList){
		//alert('已经调用到');
		//var CompoundDetailsList=${requestScope.CompoundDetailsList};
		for (var i = 0; i < CompoundDetailsList.length; i++) {
			$("#CompoundDetails")
			.append(
					"<div class=\"exploreFormHeader pageTitle\"><h1 class=\"sectionTitle\" style=\"font-size:28px\">"
					+CompoundDetailsList[i].Product_name
					+"</h1></div><div class=\"exploreFormHeader pageTitle\"><div><table class=\"CompDetails\"><tbody><tr><th>NPB_No :</th><td>"
					+CompoundDetailsList[i].NPB_No
					+"</td></tr><tr><th>Names:</th><td>"
					+CompoundDetailsList[i].Product_name
					+"</td></tr><tr><th>Structure:</th><td><img src=\"static/Image/compounds/"
					+CompoundDetailsList[i].Structure
					+"\" /></td></tr><tr><th>Description:</th><td>"
					+CompoundDetailsList[i].Descrip
					+"</td></tr><tr><th>Molecular Formula:</th><td>"
					+CompoundDetailsList[i].Molecular_Formula
					+"</td></tr><tr><th>Molecular Weight:</th><td>"
					+CompoundDetailsList[i].Molecular_Weight
					+"</td></tr><tr><th>InChIKey:</th><td>"
					+CompoundDetailsList[i].InchiKey
					+"</td></tr><tr><th>SMILES:</th><td>"
					+CompoundDetailsList[i].Smiles
					+"</td></tr><tr><th>CAS No:</th><td>"
					+CompoundDetailsList[i].Cas_no
					+"</td></tr><tr><th>PubChem ID:</th><td><a href=\"https://pubchem.ncbi.nlm.nih.gov/compound/"
					+CompoundDetailsList[i].PubChem_ID
					+"\">"
					+CompoundDetailsList[i].PubChem_ID
					+"</a></td></tr><tr><th>Species:</th><td><a>"
					+CompoundDetailsList[i].Species
					+"</a></td></tr><tr><th>Targets:</th><td><a></a></td></tr><tr><th>Activity:</th><td></td></tr><tr><th>Mass Spectrometry:</th><td></td></tr><tr><th>References:</th><td><a href=\"http://www.ymdb.ca/compounds/YMDB01435\">YMDB</a></td></tr></tbody></table></div></div>"
					);
			}
}
/*
*函数名称：getsearchCompound
*函数作用：动态加载搜索结果页面searchOutCome.jsp
*参数说明：CompoundDetails类的列表
*/
function getsearchCompound(searchCompoundlist)
{
	for (var i = 0; i < searchCompoundlist.length; i++) {
		$("#searchCompound")
		.append(
				"<div style=\"position: relative; width:100%;\"><div class=\"a\"style=\"width:100%;height: 125px;background-color: white;margin-bottom: 16px;border-radius: 10px;box-shadow: 1px 1px 3px #c6bdbdb3;transform: translateZ(0px);transition: transform 0.6s ease 0.05s;\"> <a href=\"getCompoundDetails?NPB_NO="
						+searchCompoundlist[i].NPB_No
						+ "\" title=\""
						+searchCompoundlist[i].Product_name
						+ "\" target=\"_blank\" style=\"display:inline-block;height: 100%;width:100%;position: absolute;\"><img class=\"img\" style=\"width:10%;height: 100%; border-radius:4px;*/\" src=\"static/Image/compounds/"+searchCompoundlist[i].Structure+"\"  ></a>				            <div class=\"caption\"style=\"height: 100%;width: 88%;float:right;\">				              <h5 style=\"height: 37px;margin-top: 18px;font-size: 8px;\">				              <br/>				                <a class=\"summeritem\" style=\"font-size: 20px;\" href=\"getCompoundDetails?NPB_NO="
						+searchCompoundlist[i].NPB_No
						+ "\" ><br>"
						+ "<br><small>"+searchCompoundlist[i].Descrip+"	              <br/>				              <br/>"
						+ "</small><small>"+searchCompoundlist[i].Molecular_Weight+"     <br/>				              <br/>"
						+ "</small>"
						+"<small style=\"float:right;position: relative;right: 27px;top: -27px\">"+searchCompoundlist[i].Molecular_Weight+"</small>				              </h5>			              <p style=\"position: relative;top: -27px;\">"+searchCompoundlist[i].Product_name+" <br/>	"
						+ " </p></a></div>				          </div>				      </div>");
	}
}