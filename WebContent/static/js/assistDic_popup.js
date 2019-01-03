// JavaScript Document
/*  Prototype JavaScript framework, version 1.5.0
 *  (c) 2005-2007 Sam Stephenson
 *
 *  Prototype is freely distributable under the terms of an MIT-style license.
 *  For details, see the Prototype web site: http://prototype.conio.net/
 *
 */
/*--------------------------------------------------------------------------*/
var _assistDic_req;
var _assistDic_res;
var _assistDic_UA;
var style = "width=300,height=200,resizable=1,scrollbars=1";
var WindowObject = null;
function _assistDic_init() {
    if (window.XMLHttpRequest) {
        _assistDic_req= new XMLHttpRequest(); 
    } else if(window.ActiveXObject) {
        _assistDic_req= new ActiveXObject("Microsoft.XMLHTTP");
    } else {
    }
        
    // ブラウザ冉侍
    _assistDic_UA = getBrowserName();

    Event.observe(document, 'keyup', _assistDic_ONKU, true);
    Event.observe(document, 'mouseup', _assistDic_ONMU, true);
}

function _assistDic_ONKU(e) {
    e = (e) ? e : ((event) ? event : (window.event)?window.event:null);
    var keycode= (window.event) ? e.keyCode : e.which;

    var modifire= 0;
    if (e.shiftKey)
            modifire+= 4;
    if (e.ctrlKey)
            modifire+= 2;
    if (e.altKey)
            modifire+= 1;

    var selection = "";
    if (document.selection){
        selection = document.selection.createRange().text;
    }else if (window.getSelection){
        selection = window.getSelection();
    }else if (document.getSelection){
        selection = document.getSelection();
    }

    if(selection == ""){
        return false;
    }else if ((keycode == 35 && modifire == 4 && _assistDic_UA == "OP")
        ||(keycode == 68 && modifire == 4)){
	if(!WindowObject || WindowObject.closed || WindowObject == null){
	  WindowObject = window.open("/ja/lsd_view.html","popup",style);
      //WindowObject.moveTo(0,0);	
	}
        _assistDic_show(selection);
        return false;
    }
    return true;
}

function _assistDic_ONMU(e) {
    e = (e) ? e : ((event) ? event : (window.event)?window.event:null);
    var keycode= (window.event) ? e.keyCode : e.which;
        
	if(!WindowObject || WindowObject.closed || WindowObject == null){
		return false;
	}
    var selection = "";
    if (document.selection){
        selection = document.selection.createRange().text;
    }else if (window.getSelection){
        selection = window.getSelection();
    }else if (document.getSelection){
        selection = document.getSelection();
    }
	if(selection == ""){
	}else{
        _assistDic_show(selection);
	}
}


function _assistDic_show(key) {
    var ary;
    if (_assistDic_req.readyState == 4 || _assistDic_req.readyState == 0) {
        //var fn= key + ".xml";
        var fn = "/dbget-bin/show_lsd.cgi?keyword="+key;
        _assistDic_req.open("GET", fn, true);
        _assistDic_req.onreadystatechange = _assistDic_handle_show; 
        _assistDic_req.send(null);
    }            
}

function _assistDic_handle_show() {
	var res_str = "";
	//WindowObject.document.getElementById("lsd_dic").innerHTML = "";

    if (_assistDic_req.readyState == 4 && _assistDic_req.status == 200) {
        var l= (_assistDic_UA=="IE" || _assistDic_UA=="OP" ||  _assistDic_UA=="NN")?1:0;
        var nodes= _assistDic_req.responseXML.childNodes[l].childNodes;


        for(var i = 0; i < nodes.length; i++) {
            var node= nodes[i];
            if (node.nodeName == "value") {
                res_str  = res_str + node.firstChild.nodeValue.replace(new RegExp("\n", "g"), "");
            }
        }
		WindowObject.document.getElementById("lsd_dic").innerHTML = res_str;
		//WindowObject.document.getElementById("lsd_dic").innerHTML = res_str + "<hr>" + WindowObject.document.getElementById("lsd_dic").innerHTML;
    }
}
