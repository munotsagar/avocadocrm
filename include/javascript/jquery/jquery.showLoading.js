/*
 * jQuery showLoading plugin v1.0
 *
 * Copyright (c) 2009 Jim Keller
 * Context - http://www.contextllc.com
 *
 * Dual licensed under the MIT and GPL licenses.
 *
 */
jQuery.fn.showLoading=function(e){var t,r={addClass:"",beforeShow:"",afterShow:"",hPos:"center",vPos:"center",indicatorZIndex:5001,overlayZIndex:5e3,parent:"",marginTop:0,marginLeft:0,overlayWidth:null,overlayHeight:null};jQuery.extend(r,e);var s=jQuery("<div></div>"),o=jQuery("<div></div>");t=r.indicatorID?r.indicatorID:jQuery(this).attr("id"),jQuery(s).attr("id","loading-indicator-"+t),jQuery(s).addClass("loading-indicator-ui"),r.addClass&&jQuery(s).addClass(r.addClass),jQuery(o).css("display","none"),jQuery(document.body).append(o),jQuery(o).attr("id","loading-indicator-"+t+"-overlay"),jQuery(o).addClass("loading-indicator-ui-overlay"),r.addClass&&jQuery(o).addClass(r.addClass+"-overlay");var i,a,n=jQuery(this).css("border-top-width"),d=jQuery(this).css("border-left-width");n=isNaN(parseInt(n))?0:n,d=isNaN(parseInt(d))?0:d;var y=jQuery(this).offset().left+parseInt(d),u=jQuery(this).offset().top+parseInt(n);i=null!==r.overlayWidth?r.overlayWidth:parseInt(jQuery(this).width())+parseInt(jQuery(this).css("padding-right"))+parseInt(jQuery(this).css("padding-left")),a=null!==r.overlayHeight?r.overlayWidth:parseInt(jQuery(this).height())+parseInt(jQuery(this).css("padding-top"))+parseInt(jQuery(this).css("padding-bottom")),jQuery(o).css("width",i.toString()+"px"),jQuery(o).css("height",a.toString()+"px"),jQuery(o).css("left",y.toString()+"px"),jQuery(o).css("position","absolute"),jQuery(o).css("top",u.toString()+"px"),jQuery(o).css("z-index",r.overlayZIndex),r.overlayCSS&&jQuery(o).css(r.overlayCSS),jQuery(s).css("display","none"),jQuery(document.body).append(s),jQuery(s).css("position","absolute"),jQuery(s).css("z-index",r.indicatorZIndex);var j=u;r.marginTop&&(j+=parseInt(r.marginTop));var p=y;r.marginLeft&&(p+=parseInt(r.marginTop)),"center"==r.hPos.toString().toLowerCase()?jQuery(s).css("left",(p+(jQuery(o).width()-parseInt(jQuery(s).width()))/2).toString()+"px"):"left"==r.hPos.toString().toLowerCase()?jQuery(s).css("left",(p+parseInt(jQuery(o).css("margin-left"))).toString()+"px"):"right"==r.hPos.toString().toLowerCase()?jQuery(s).css("left",(p+(jQuery(o).width()-parseInt(jQuery(s).width()))).toString()+"px"):jQuery(s).css("left",(p+parseInt(r.hPos)).toString()+"px"),"center"==r.vPos.toString().toLowerCase()?jQuery(s).css("top",(j+(jQuery(o).height()-parseInt(jQuery(s).height()))/2).toString()+"px"):"top"==r.vPos.toString().toLowerCase()?jQuery(s).css("top",j.toString()+"px"):"bottom"==r.vPos.toString().toLowerCase()?jQuery(s).css("top",(j+(jQuery(o).height()-parseInt(jQuery(s).height()))).toString()+"px"):jQuery(s).css("top",(j+parseInt(r.vPos)).toString()+"px"),r.css&&jQuery(s).css(r.css);var Q={overlay:o,indicator:s,element:this};return"function"==typeof r.beforeShow&&r.beforeShow(Q),jQuery(o).show(),jQuery(s).show(),"function"==typeof r.afterShow&&r.afterShow(Q),this},jQuery.fn.hideLoading=function(e){var t={};return jQuery.extend(t,e),indicatorID=t.indicatorID?t.indicatorID:jQuery(this).attr("id"),jQuery(document.body).find("#loading-indicator-"+indicatorID).remove(),jQuery(document.body).find("#loading-indicator-"+indicatorID+"-overlay").remove(),this};