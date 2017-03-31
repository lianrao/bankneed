function TabBox(tabname,type){
var tabbox=this;
this.tabname=tabname;
this.lasttab=1;
this.tabarray=new Array();
this.tabPad=null;

 
this.item=function(tabid,caption,dis){
   this.tabid=tabid;
   this.caption=caption;
   this.dis=dis;
}

 
this.addtab=function(tabid,caption,dis){
 //alert(tabbox.tabarray.length)
 tabbox.tabarray[tabbox.tabarray.length]=new tabbox.item(tabid,caption,dis);
}

 
this.init=function(){
 //alert(tabbox.tabname)
 if (tabbox.tabarray.length==0) {alert("error");return;}
 document.write("<div id='"+tabbox.tabname+"div' style='width:99%;margin:5px 10px 0 5px'>");
  tabbox.tabPad=eval(document.getElementById(tabbox.tabname+"div"));
  var tbBoard=document.createElement("table");
  tabbox.tabPad.insertAdjacentElement("beforeEnd",tbBoard);
  
 //tabbox.tabPad.insertAdjacentHTML("beforeEnd",tbBoard);
 
 tbBoard.style.cssText="border-collapse: collapse";
 tbBoard.border="0";
 tbBoard.cellSpacing="0";
 tbBoard.cellPadding="0";
 tbBoard.height="26";
 tbBoard.width="100%";
 trRow = tbBoard.insertRow(0);
 trRow.height="3";
 
 var tl=0
 tbCell=trRow.insertCell(tl)
 tbCell.id=tabbox.tabname+'_tabbar1'
 tbCell.rowSpan="2"
 tbCell.className="tbottom3"
 tbCell.width="3"
 tbCell.noWrap=true
 
 tl++
 tbCell=trRow.insertCell(tl)
 tbCell.id=tabbox.tabname+'_tabtop1'
 tbCell.noWrap=true
 
 for (i=1;i<tabbox.tabarray.length;i++)
   {
    tl++
    tbCell=trRow.insertCell(tl)
    tbCell.id=tabbox.tabname+'_tabbar'+(i+1)
    tbCell.rowSpan="2"
    tbCell.className="tbottom"
    tbCell.width="3"
    tbCell.noWrap=true
   
    tl++
    tbCell=trRow.insertCell(tl)
    tbCell.id=tabbox.tabname+'_tabtop'+(i+1)
    tbCell.noWrap=true
   }
   
 tl++
 tbCell=trRow.insertCell(tl)
 tbCell.id=tabbox.tabname+'_tabbar'+(tabbox.tabarray.length+1)
 tbCell.rowSpan="2"
 tbCell.className="tbottom2"
 tbCell.width="3"
 tbCell.noWrap=true
 
 tl++
 tbCell=trRow.insertCell(tl)
 tbCell.rowSpan="2"  
 tbCell.width="100%"
 tbCell.noWrap=true
 tbCell.style.cssText="border-bottom:1px #91A5BD solid;"
 //alert(tbBoard.cells.length)
  trRow = tbBoard.insertRow(1)
   for (i=0;i<tabbox.tabarray.length;i++)
   {

     tbCell=trRow.insertCell(i)
     tbCell.id=tabbox.tabname+'_tabcon'+(i+1)
     tbCell.className="lostfouce"
     if (tabbox.tabarray[i].dis==1)
        {
          tbCell.innerHTML="<b>"+tabbox.tabarray[i].caption+"&nbsp;"+"</b>"
        }
        else
        {
          tbCell.innerHTML=tabbox.tabarray[i].caption+"&nbsp;"
        }
     tbCell.tabnum=i+1
     tbCell.noWrap=true
     tbCell.onclick=function()
     {
       tabbox.doclick(this.tabnum)
     }
     tbCell.onmouseover=function()
     {
      
     }
     tbCell.onmouseout=function()
     {
     tabbox.doout(this)
     }
   }
 
}

this.inithidetab=function(num)
{

  for (i=0;i<tabbox.tabarray.length;i++)
   {
      
	  eval(document.getElementById(tabbox.tabarray[i].tabid)).style.display="none";
   } 
   tabbox.doclick(1)
}
this.doclick=function(num,action){
 
lastbar1=document.getElementById(tabbox.tabname+"_tabbar"+this.lasttab);
nlasttab=this.lasttab+1
 
lastbar2=document.getElementById(tabbox.tabname+"_tabbar"+nlasttab);

 
tpbar1=document.getElementById(tabbox.tabname+"_tabbar"+1);
 
tpbar2=document.getElementById(tabbox.tabname+"_tabbar"+(tabbox.tabarray.length+1));

 
tabtop=document.getElementById(tabbox.tabname+"_tabtop"+this.lasttab);
 
tabcon=document.getElementById(tabbox.tabname+"_tabcon"+this.lasttab);
tabtop.className=""
tabcon.className="lostfouce"
//alert(lastbar2.className)
   lastbar1.className='tbottom';
   lastbar2.className='tbottom';
   tpbar1.className='tbottom3';
   tpbar2.className='tbottom2';
   
 
 document.getElementById(tabbox.tabarray[this.lasttab-1].tabid).style.display="none" ;
 
 
lastbar1=document.getElementById(tabbox.tabname+"_tabbar"+num);
nnum=num+1
 
lastbar2=document.getElementById(tabbox.tabname+"_tabbar"+nnum);
 
tabtop=document.getElementById(tabbox.tabname+"_tabtop"+num);
 
tabcon=document.getElementById(tabbox.tabname+"_tabcon"+num);
   lastbar1.className='tleft';
   lastbar2.className='tright';    
   tabtop.className="ttop"
   tabcon.className="getfouce"
   //alert(tabbox.tabarray[num-1].tabid)
 
document.getElementById(tabbox.tabarray[num-1].tabid).style.display="block";
 this.lasttab=num;
}


this.doover=function(obj){
if (obj.className=="lostfouce") 
  {
   obj.className="lostfouce_over"
     }

}

this.doout=function(obj){
if (obj.className=="lostfouce_over") 
  {
   obj.className="lostfouce"
     }

}
}