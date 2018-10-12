<#--
* Assign the current data to the object called "paginationData" if set.
-->
<#if paginationData??>
<#assign data = paginationData />
</#if>

<#--
* Bind pagination data to the current data set these macros are using.
-->
<#macro bind paginationData>
<#assign data = paginationData />
</#macro>

<#--
* Outputs the first page link
-->
<#macro first>
<#if (data.pageNumber < 2)>
<#local classAttr = "class=\"prev-page disabled\"" />
<#local text>
<@spring.messageText "pagination.first", "← Первая" />
</#local>
<@pagepnspan 0, text, classAttr/>
<#else>
<#local classAttr = "class=\"prev-page\"" />
<#local text>
<@spring.messageText "pagination.first", "← Первая" />
</#local>
<@pagepn 0, text, classAttr/>
</#if>

</#macro>

<#--
* Outputs the last page link
-->
<#macro last>
<#if (data.pageNumber >= data.pagesAvailable)>
<#local classAttr = "class=\"next-page disabled\"" />

<#local text>
<@spring.messageText "pagination.last", "Последняя →" />
</#local>
<@pagepnspan data.pagesAvailable-1, text, classAttr/>
<#else>
<#local classAttr = "class=\"next-page\"" />
<#local text>
<@spring.messageText "pagination.last", "Последняя →" />
</#local>
<@pagepn data.pagesAvailable-1, text, classAttr/>
</#if>

</#macro>

<#--
* Outputs the next page link
-->
<#macro next city="" cityb="" cat="" subcat="">
<#if (data.pageNumber >= data.pagesAvailable)>

<#local pageNumber = data.pageNumber />
<#local classAttr = "class=\"next-page disabled\"" />
<#local text>
<@spring.messageText "pagination.next", "Следующие →" />
</#local>
<@pagepnspan pageNumber-1, text, classAttr/>

<#else>

<#local pageNumber = data.pageNumber + 1 />
<#local classAttr = "class=\"next-page\"" />
<#local text>
<@spring.messageText "pagination.next", "Следующие →" />
</#local>
<@pagepn pageNumber-1, text, classAttr city cityb cat subcat />

</#if>

</#macro>

<#--
* Outputs the previous page link
-->
<#macro previous city="" cityb="" cat="" subcat="">
<#if (data.pageNumber < 2)>
<#local pageNumber = data.pageNumber />
<#local classAttr = "class=\"prev-page disabled\"" />
<#local text>
<@spring.messageText "pagination.previous", "← Предыдущие" />
</#local>
<@pagepnspan pageNumber-1, text, classAttr/>

<#else>
<#local pageNumber = data.pageNumber - 1 />
<#local classAttr = "class=\"prev-page\"" />

<#local text>
<@spring.messageText "pagination.previous", "← Предыдущие" />
</#local>
<@pagepn pageNumber-1, text, classAttr city cityb cat subcat />

</#if>



</#macro>

<#--
* Outputs the page numbers and links
*
* @param maxPages (Optional) The maximum number of page links to show
* @param separator (Optional) The separator between page links
-->
<#macro numbers maxPages = 9 separator = " | " city="" cityb="" cat="" subcat="">
<#local pagesBefore = (maxPages / 2)?floor />
<#local pagesAfter = (maxPages / 2)?floor />
<#if maxPages % 2 == 0>
<#local pagesBefore = pagesBefore - 1 />
</#if>
<#local pageNumMin = data.pageNumber - pagesBefore />
<#local pageNumMax = data.pageNumber + pagesBefore />
<#if (pageNumMin < 0)>
<#local pageNumMax = pageNumMax + (0 - pageNumMin) />
<#local pageNumMin = 0 />
</#if>
<#if (pageNumMax >= data.pagesAvailable)>
<#local pageNumMin = pageNumMin - (pageNumMax - data.pagesAvailable) />
<#local pageNumMax = data.pagesAvailable - 1 />
<#if (pageNumMin < 0)>
<#local pageNumMin = 0 />
</#if>
<#if (pageNumMax < 0)>
<#local pageNumMax = 0 />
</#if>
</#if>
<#list pageNumMin..pageNumMax as pageNumber>
<#if pageNumber+1 == data.pageNumber>
<#local classAttr = "class=\"active\"" />
<@page1 pageNumber, "", classAttr/><#if pageNumber_has_next></#if>
<#else>
<#local classAttr = "" />
<@page pageNumber, "", classAttr city cityb cat subcat/><#if pageNumber_has_next></#if>
</#if>

</#list>
</#macro>

<#--
* Outputs a link to a specific page.
*
* @param pageNumber To page number ot link to
* @param text (Optional) The link text (Defaults to page number if not set)
* @param attributes (Optional) Any HTML attributes to add to the element
-->
<#macro page pageNumber text = "" attributes = "" city="" cityb="" cat="" subcat="">
<#if text == "">
<#local text = (pageNumber + 1)?string />
</#if>
<#if (attributes != "" && attributes?starts_with(" ") == false)>
<#local attributes = " " + attributes />
</#if>
<#if (city == "" && cityb == "") >

<#if cat !="">
<#if subcat !="">
<li><a target="_self" href="?page=${pageNumber+1}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a></li>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}&amp;category=${cat}"${attributes}>${text?html}</a></li>
</#if>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}"${attributes}>${text?html}</a></li>
</#if>


<#elseif cityb != "">

<#if cat !="">
<#if subcat !="">
<li><a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a><li>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}&amp;category=${cat}"${attributes}>${text?html}</a><li>
</#if>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}"${attributes}>${text?html}</a></li>
</#if>

<#else>

<#if cat !="">
<#if subcat !="">
<li><a target="_self" href="?page=${pageNumber+1}&amp;city=${city}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a></li>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}&amp;city=${city}&amp;category=${cat}"${attributes}>${text?html}</a></li>
</#if>
<#else>
<li><a target="_self" href="?page=${pageNumber+1}&amp;city=${city}"${attributes}>${text?html}</a></li>
</#if>


</#if>
</#macro>

<#macro page1 pageNumber text = "" attributes = "">
<#if text == "">
<#local text = (pageNumber + 1)?string />
</#if>
<#if (attributes != "" && attributes?starts_with(" ") == false)>
<#local attributes = " " + attributes />
</#if>

<li ${attributes}>${text?html}</li>
</#macro>





<#macro pagepn pageNumber text = "" attributes = ""  city="" cityb="" cat="" subcat="">
<#if text == "">
<#local text = (pageNumber + 1)?string />
</#if>
<#if (attributes != "" && attributes?starts_with(" ") == false)>
<#local attributes = " " + attributes />
</#if>
<#if (city == "" && cityb="")>

<#if cat !="">
<#if subcat !="">
<a target="_self" href="?page=${pageNumber+1}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a>
<#else>
<a target="_self" href="?page=${pageNumber+1}&amp;category=${cat}"${attributes}>${text?html}</a>
</#if>
<#else>
<a target="_self" href="?page=${pageNumber+1}"${attributes}>${text?html}</a>
</#if>





<#elseif cityb !="">

<#if cat !="">
<#if subcat !="">
<a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a>
<#else>
<a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}&amp;category=${cat}"${attributes}>${text?html}</a>
</#if>
<#else>
<a target="_self" href="?page=${pageNumber+1}&amp;cityb=${cityb}"${attributes}>${text?html}</a>
</#if>

<#else>

<#if cat !="">
<#if subcat !="">
<a target="_self" href="?page=${pageNumber+1}&amp;city=${city}&amp;category=${cat}&amp;subcategory=${subcat}"${attributes}>${text?html}</a>
<#else>
<a target="_self" href="?page=${pageNumber+1}&amp;city=${city}&amp;category=${cat}"${attributes}>${text?html}</a>
</#if>
<#else>
<a target="_self" href="?page=${pageNumber+1}&amp;city=${city}"${attributes}>${text?html}</a>
</#if>

</#if>
</#macro>

<#macro pagepnspan pageNumber text = "" attributes = "">
<#if text == "">
<#local text = (pageNumber + 1)?string />
</#if>
<#if (attributes != "" && attributes?starts_with(" ") == false)>
<#local attributes = " " + attributes />
</#if>

<span ${attributes}>${text?html}</span>
</#macro>


<#--
* Outputs the current page number and the total pages
-->
<#macro counter>
<#if data.pagesAvailable == 0>
<#local pagesAvailable = 1 />
<#else>
<#local pagesAvailable = data.pagesAvailable />
</#if>
<@spring.messageArgsText "pagination.counter", [data.pageNumber + 1, pagesAvailable], "{0} of {1}" />
</#macro>

