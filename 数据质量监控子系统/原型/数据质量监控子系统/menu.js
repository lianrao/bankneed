var mmenus    = new Array();
var misShow   = new Boolean();
misShow=false;
var misdown   = new Boolean();
misdown=false;
var musestatus=false;
var mpopTimer = 0;
mmenucolor='#5C97D4';mfontcolor='#ffffff';mmenuoutcolor='#345A91';mmenuincolor='#345A91';mmenuoutbordercolor='';mmenuinbordercolor='';mmidoutcolor='#000000';mmidincolor='#FFFFFF';mmenuovercolor='#FFFFFF';mitemedge='1';msubedge='0';mmenuunitwidth=100;mmenuitemwidth=120;mmenuheight=24;mmenuwidth='100%';mmenuadjust=0;mmenuadjustV=0;mfonts='font-family: ����; color: #FFFFFF; ';mcursor='default';

function stoperror(){
return true;
}
window.onerror=stoperror;
function mpopOut() {
mpopTimer = setTimeout('mallhide()', 500);
}
function getReal(el, type, value) {
	temp = el;
	while ((temp != null) && (temp.tagName != "BODY")) {
		if (eval("temp." + type) == value) {
			el = temp;
			return el;
		}
		temp = temp.parentElement;
	}
	return el;
}


function mMenuRegister(menu)
{
  mmenus[mmenus.length] = menu
  return (mmenus.length - 1)
}
function mMenuItem(caption,command,target,isline,statustxt,img,sizex,sizey,pos){
	this.caption=caption;
	this.command=command;
	this.target=target;
	this.isline=isline;
	this.statustxt=statustxt;
	this.img=img;
	this.sizex=sizex;
	this.sizey=sizey;
	this.pos=pos;
}
function mMenu(caption,command,target,img,sizex,sizey,pos){
	this.items = new Array();
	this.caption=caption;
	this.command=command;
	this.target=target;
	this.img=img;
	this.sizex=sizex;
	this.sizey=sizey;
	this.pos=pos;
	this.id=mMenuRegister(this);
}
function mMenuAddItem(item)
{
  this.items[this.items.length] = item
  item.parent = this.id;
  this.children=true;
}

mMenu.prototype.addItem = mMenuAddItem;
function mtoout(src){

src.style.borderLeftColor=mmenuoutbordercolor;
src.style.borderRightColor=mmenuinbordercolor;
src.style.borderTopColor=mmenuoutbordercolor;
src.style.borderBottomColor=mmenuinbordercolor;
src.style.backgroundColor=mmenuoutcolor;
src.style.color=mmenuovercolor;
}
function mtoin(src){

src.style.borderLeftColor=mmenuinbordercolor;
src.style.borderRightColor=mmenuoutbordercolor;
src.style.borderTopColor=mmenuinbordercolor;
src.style.borderBottomColor=mmenuoutbordercolor;
src.style.backgroundColor=mmenuincolor;
src.style.color=mmenuovercolor;
}
function mnochange(src){
src.style.borderLeftColor=mmenucolor;
src.style.borderRightColor=mmenucolor;
src.style.borderTopColor=mmenucolor;
src.style.borderBottomColor=mmenucolor;
src.style.backgroundColor='';
src.style.color=mfontcolor;

}
function mallhide(){
	for(var nummenu=0;nummenu<mmenus.length;nummenu++){
		var themenu=document.all['mMenu'+nummenu]
		var themenudiv=document.all['mmenudiv'+nummenu]
                mnochange(themenu);
                mmenuhide(themenudiv);
                }
}
function mmenuhide(menuid){

menuid.style.visibility='hidden';
misShow=false;
}
function mmenushow(menuid,pid){

menuid.style.left=mposflag.offsetLeft+pid.offsetLeft+mmenuadjust;menuid.style.top=mposflag.offsetTop+mmenutable.offsetHeight+mmenuadjustV;
if(mmenuitemwidth+parseInt(menuid.style.left)>document.body.clientWidth+document.body.scrollLeft)
menuid.style.left=document.body.clientWidth+document.body.scrollLeft-mmenuitemwidth;
menuid.style.visibility='visible';
misShow=true;
}
function mmenu_over(menuid,x){
toel = getReal(window.event.toElement, "className", "coolButton");
fromel = getReal(window.event.fromElement, "className", "coolButton");
if (toel == fromel) return;
if(x==5){
  misShow = false;
  mallhide();
  mtoout(eval("mMenu"+x));
}else{

  mallhide();
  mtoin(eval("mMenu"+x));
  mmenushow(menuid,eval("mMenu"+x));

}
clearTimeout(mpopTimer);
}
function mmenu_out(x){
toel = getReal(window.event.toElement, "className", "coolButton");
fromel = getReal(window.event.fromElement, "className", "coolButton");
if (toel == fromel) return;
if (misShow){
mtoin(eval("mMenu"+x));
}else{
mnochange(eval("mMenu"+x));
}
mpopOut()
}
function mmenu_down(menuid,x){
  if(misShow){
  mmenuhide(menuid);
  mtoout(eval("mMenu"+x));
  }
  else{
  mtoin(eval("mMenu"+x));
  mmenushow(menuid,eval("mMenu"+x));
  misdown=true;
  }
}
function mmenu_up(){
  misdown=false;
}
function mmenuitem_over(x,i){
srcel = getReal(window.event.srcElement, "className", "coolButton");
if(misdown){
	mtoin(srcel);
}
else{
mtoout(srcel);
}
mthestatus = mmenus[x].items[i].statustxt;
if(mthestatus!=""){
	musestatus=true;
	window.status=mthestatus;
}
clearTimeout(mpopTimer);
}
function mmenuitem_out(){
srcel = getReal(window.event.srcElement, "className", "coolButton");
mnochange(srcel);
if(musestatus)window.status="";
mpopOut()
}
function mmenuitem_down(){
srcel = getReal(window.event.srcElement, "className", "coolButton");
mtoin(srcel)
misdown=true;
}
function mmenuitem_up(){
srcel = getReal(window.event.srcElement, "className", "coolButton");
mtoout(srcel)
misdown=false;
}
function mexec2(x){
var cmd;
if(mmenus[x].target=="blank"){
  cmd = "window.open('"+mmenus[x].command+"')";
}else{
  cmd = mmenus[x].target+".location=\""+mmenus[x].command+"\"";
}
eval(cmd);
}
function mexec(x,i){
var cmd;
if(mmenus[x].items[i].target=="blank"){
  cmd = "window.open('"+mmenus[x].items[i].command+"')";
}else{
  cmd = mmenus[x].items[i].target+".location=\""+mmenus[x].items[i].command+"\"";
}
eval(cmd);
}
function mbody_click(){

if (misShow){
	srcel = getReal(window.event.srcElement, "className", "coolButton");
	for(var x=0;x<=mmenus.length;x++){
		if(srcel.id=="mMenu"+x)
		return;
	}
	mallhide();
}
}
document.onclick=mbody_click;
function mwritetodocument(){
      var mwb=1;
                     var stringx='<div id="mposflag" style="position:absolute;"></div><table  id=mmenutable border=0 cellpadding=2 cellspacing=2 width='+mmenuwidth+' height='+mmenuheight+' bgcolor='+mmenucolor+
                     ' onselectstart="event.returnValue=false"'+
                     ' style="cursor:'+mcursor+';'+mfonts+
                     ' border-left: '+mwb+'px solid '+mmenuoutbordercolor+';'+
                     ' border-right: '+mwb+'px solid '+mmenuinbordercolor+'; '+
                     'border-top: '+mwb+'px solid '+mmenuoutbordercolor+'; '+
                     'border-bottom: '+mwb+'px solid '+mmenuinbordercolor+'; padding:0px"><tr>'
                     for(var x=0;x<mmenus.length;x++){
                     	var thismenu=mmenus[x];
                     	var imgsize="";
                     	if(thismenu.sizex!="0"||thismenu.sizey!="0")imgsize=" width="+thismenu.sizex+" height="+thismenu.sizey;
                     	var ifspace="";
                     	if(thismenu.caption!="")ifspace="&nbsp;";
                     	stringx += "<td nowrap class=coolButton id=mMenu"+x+" style='border: "+mitemedge+"px solid "+mmenucolor+
                     	"' width="+mmenuunitwidth+"px onmouseover=mmenu_over(mmenudiv"+x+
                     	","+x+") onmouseout=mmenu_out("+x+
                     	") onmousedown=mmenu_down(mmenudiv"+x+","+x+")";
                     	      if(thismenu.command!=""){
                     	          stringx += " onmouseup=mmenu_up();mexec2("+x+");";
                     	      }else{
                     	      	  stringx += " onmouseup=mmenu_up()";
                     	      }
                     	      if(thismenu.pos=="0"){
                     	          stringx += " align=center><img align=absmiddle src='"+thismenu.img+"'"+imgsize+">"+ifspace+thismenu.caption+"</td>";
                     	      }else if(thismenu.pos=="1"){
                     	          stringx += " align=center>"+thismenu.caption+ifspace+"<img align=absmiddle src='"+thismenu.img+"'"+imgsize+"></td>";
                     	      }else if(thismenu.pos=="2"){
                     	          stringx += " align=center background='"+thismenu.img+"'>&nbsp;"+thismenu.caption+"&nbsp;</td>";
                     	      }else{
                     	          stringx += " align=center>&nbsp;"+thismenu.caption+"&nbsp;</td>";
                     	      }
                     	stringx += "";
                     }
                     stringx+="<td width=*>&nbsp;</td></tr></table>";


                     for(var x=0;x<mmenus.length;x++){
                     	thismenu=mmenus[x];
                        if(x==5){
                        stringx+='<div id=mmenudiv'+x+' style="visiable:none"></div>';
                        }else{
                        stringx+='<div id=mmenudiv'+x+
                        ' style="cursor:'+mcursor+';position:absolute;'+
                        'width:'+mmenuitemwidth+'px; z-index:'+(x+100);
                        if(mmenuinbordercolor!=mmenuoutbordercolor&&msubedge=="0"){
                        stringx+=';border-left: 1px solid '+mmidoutcolor+
                        ';border-top: 1px solid '+mmidoutcolor;}
                        stringx+=';border-right: 1px solid '+mmenuinbordercolor+
                        ';border-bottom: 1px solid '+mmenuinbordercolor+';visibility:hidden" onselectstart="event.returnValue=false">\n'+
                     	'<table  width="100%" border="0" height="100%" align="center" cellpadding="0" cellspacing="1" '+
                     	'style="'+mfonts+' border-left: 1px solid '+mmenuoutbordercolor;
                        if(mmenuinbordercolor!=mmenuoutbordercolor&&msubedge=="0"){
                     	stringx+=';border-right: 1px solid '+mmidincolor+
                     	';border-bottom: 1px solid '+mmidincolor;}
                     	stringx+=';border-top: 1px solid '+mmenuoutbordercolor+
                     	';padding: 4px" bgcolor='+mmenucolor+'>\n'
                     	for(var i=0;i<thismenu.items.length;i++){
                     		var thismenuitem=thismenu.items[i];
                     		var imgsize="";
                     	        if(thismenuitem.sizex!="0"||thismenuitem.sizey!="0")imgsize=" width="+thismenuitem.sizex+" height="+thismenuitem.sizey;
                     	        var ifspace="";
                     	        if(thismenu.caption!="")ifspace="&nbsp;";
                     		if(!thismenuitem.isline){
                     		stringx += "<tr><td class=coolButton style='border: "+mitemedge+"px solid "+mmenucolor+
                     		"' width=100% height=15px onmouseover=\"mmenuitem_over("+x+","+i+
                     		");\" onmouseout=mmenuitem_out() onmousedown=mmenuitem_down() onmouseup=";
 				stringx += "mmenuitem_up();mexec("+x+","+i+"); ";
 				if(thismenuitem.pos=="0"){
                     	            stringx += "><img align=absmiddle src='"+thismenuitem.img+"'"+imgsize+">"+ifspace+thismenuitem.caption+"</td></tr>";
                     	          }else if(thismenuitem.pos=="1"){
                     	            stringx += ">"+thismenuitem.caption+ifspace+"<img align=absmiddle src='"+thismenuitem.img+"'"+imgsize+"></td></tr>";
                     	          }else if(thismenuitem.pos=="2"){
                     	            stringx += "background='"+thismenuitem.img+"'>"+thismenuitem.caption+"</td></tr>";
                     	          }else{
                     	            stringx += ">"+thismenuitem.caption+"</td></tr>";
                     	          }
 				}else{
                     		stringx+='<tr><td height="1" background="hr.gif" onmousemove="clearTimeout(mpopTimer);"><img height="1" width="1" src="none.gif" border="0"></td></tr>\n';
                     		}
                     	}stringx+='</table>\n</div>'
                     	}

                }

                     document.write("<div align='left'>"+stringx+"</div>");
}


mpmenu1=new mMenu('���ݱ���','','self','','','','');
mpmenu1.addItem(new mMenuItem('���ݱ��ı���','/creditunion/dataupload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('������ѯ���ı���','/creditunion/batchqueryupload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('����ɾ�����ı���','/creditunion/datadeleteupload.jsp','self',false,'','','','',''));
//mpmenu1.addItem(new mMenuItem('�ر��¼���ı���','/creditunion/specrecordupload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('�����˻����ı���','/creditunion/payaccountupload.jsp','self',false,'','','','',''));
//mpmenu1.addItem(new mMenuItem('����������ѯ�������','/creditunion/idqueryload.jsp','self',false,'','','','',''));
//mpmenu1.addItem(new mMenuItem('�����������±���','/creditunion/idupadateupload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('MT����','/creditunion/mttrans.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('������������','feedbackdownload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('�������ı���','/creditunion/accfundload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('������ɾ�����ı���','/creditunion/accfunddeleteload.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('�ϱ��Ǳ���ɾ���������ף�����','/creditunion/shanchu.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('�ϱ��Ǳ��ĸ�������','/creditunion/gengzheng.jsp','self',false,'','','','',''));
mpmenu1.addItem(new mMenuItem('�������ı���','/creditunion/upgradeupload.jsp','self',false,'','','','',''));

mpmenu2=new mMenu('��Ϣ��ѯ','','self','','','','');
mpmenu2.addItem(new mMenuItem('��ѯ����֧��������Ϣ','index/individualpaysearch.htm','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('�������ñ����ѯ','/creditunion/creditreportquery.jsp','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('����רҵ�����ñ����ѯ','/creditunion/specialcreditreportquery.jsp','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('���������ѯ','/creditunion/rptinfoquery.jsp','self',false,'','','','',''));
//mpmenu2.addItem(new mMenuItem('ͳ�Ʊ���','showreports','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('��ѯ�Ǳ���ɾ����Ϣ�������ף�','/creditunion/onlineremovequery.jsp','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('��ѯ�Ǳ��ĸ�����Ϣ','/creditunion/onlinemodifyquery.jsp','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('��ѯ������Ϣ��ѯ���','CreditQueryLogServlet?newquery=1&type=1','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('��ѯƥ����','MatchRateQueryServletBank?newquery=1','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('���Ĵ�������ѯ��ͳ��','/creditunion/resultqueryandsummary.jsp','self',false,'','','','',''));
mpmenu2.addItem(new mMenuItem('������ѯ�����ѯ','/creditunion/batchqueryprocessstats.jsp','self',false,'','','','',''));

mpmenu3=new mMenu('�������','yy.jsp','self','','','','');
//mpmenu3=new mMenu('���鴦��','','self','','','','');
//mpmenu3.addItem(new mMenuItem('���鴦������','','self',false,'','','','',''));
//mpmenu3.addItem(new mMenuItem('���鴦��ר��','','self',false,'','','','',''));
//mpmenu3.addItem(new mMenuItem('���鴦��','security/dissentlogin.jsp?usertype=I','self',false,'','','','',''));

mpmenu4=new mMenu('ϵͳ����','','self','','','','');
mpmenu4.addItem(new mMenuItem('�û�����','outerUsermgtAction.do','self',false,'','','','',''));
mpmenu4.addItem(new mMenuItem('�޸�����','/creditunion/changepasswordauth.jsp','self',false,'','','','',''));


mpmenu7=new mMenu('ѧϰ԰��','/creditunion/datadownload.jsp','self',false,'','','');
mpmenu7.addItem(new mMenuItem('����������','question.jsp','self',false,'','','','',''));
mpmenu7.addItem(new mMenuItem('��������','datadownload.jsp','self',false,'','','','',''));

mpmenu8=new mMenu('��ϵ����','','self','','','','');


mwritetodocument();


