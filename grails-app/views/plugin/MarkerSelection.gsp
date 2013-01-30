<!--
 Copyright 2008-2012 Janssen Research & Development, LLC.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>subsetPanel.html</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file:'dataAssociation.css')}">

</head>

<body>
	<form>
	
		<table class="subsettable" style="margin: 10px;width:300px; border: 0px none; border-collapse: collapse;" >
			<tr>
				<td colspan="4">
					<span class='AnalysisHeader'>Variable Selection</span>
					<a href='JavaScript:D2H_ShowHelp(1508,helpURL,"wndExternal",CTXT_DISPLAY_FULLHELP )'>
			<img src="${resource(dir:'images',file:'help/helpicon_white.jpg')}" alt="Help" border=0 width=18pt style="margin-top:1pt;margin-bottom:1pt;margin-right:18pt;"/>
					</a>					
				</td>			
			</tr>	
			<tr>
				<td colspan="4">
					<hr />
				</td>
			</tr>	
			<tr>
				<td align="center">
					<span class='AnalysisHeader'>Marker Variable</span>
					<br />
					<br />
					Select a High Dimensional Data node from the Data Set Explorer Tree and drag it into the box.
				</td>
			</tr>
			<tr>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="clearGroupMarkerSelection('divIndependentVariable')" value="X"> 
					<br />
					<div id='divIndependentVariable' class="queryGroupIncludeSmall"></div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="gatherHighDimensionalData('divIndependentVariable')" value="High Dimensional Data">
					<input type="hidden" id="multipleSubsets" name="multipleSubsets" value="true" />
				</td>
			</tr>
			<tr><td><br/></td></tr>
			<tr>
				<td>
					Number of Markers : <input id="txtNumberOfMarkers" name="txtNumberOfMarkers" value="50" />
				</td>

			</tr>			
			<tr><td><br/></td></tr-->
			<tr>
				<td>
					<div id = "displaydivIndependentVariable"></div>
					<!--input type="hidden" id="txtImageWidth" value="1200" />
					<input type="hidden" id="txtImageHeight" value="800" />
					<input type="hidden" id="txtImagePointsize" value="12" /-->
				</td>
			</tr-->
			<tr><td><br/></td></tr>		
			<tr>
				<td align="center">
					Use default sizes :  
					<input 
						type=checkbox 
						id="useDefaultHeatmapProperties" 
						checked="true" 
						onclick="
							document.getElementById('txtImageWidth').disabled = this.checked;
							document.getElementById('txtImageHeight').disabled = this.checked;
							document.getElementById('txtImagePointsize').disabled = this.checked;
							if ( this.checked )
							{
								/* use default values from R script */
								document.getElementById('txtImageWidth').value = -1;
								document.getElementById('txtImageHeight').value = -1;
								document.getElementById('txtImagePointsize').value = -1;
								/* hide dom objects */
								var toHide = document.getElementsByClassName('HeatmapImageProperties');
								for(var i=0; i < toHide.length; i++) { 
									toHide[i].style.visibility='collapse';
									//toHide[i].style.display='none';
								}
							} else {
								/* use some default values - user will set, as he likes */
								document.getElementById('txtImageWidth').value = 2000;
								document.getElementById('txtImageHeight').value = 3000;
								document.getElementById('txtImagePointsize').value = 12;
								/* hide dom objects */
								var toShow = document.getElementsByClassName('HeatmapImageProperties');
								for(var i=0; i < toShow.length; i++) { 
									toShow[i].style.visibility='visible';
									//toShow[i].style.visibility='table-row';
								}
							}
						"
					/>
					<br />
					<br />
				</td>
			</tr>				

			<tr class="HeatmapImageProperties" style="visibility: collapse;"><td><br/></td></tr>		
			<tr class="HeatmapImageProperties" style="visibility: collapse;">
				<td align="center">
					Image Width (pixels) :  <input id="txtImageWidth" value="-1" />
					<br />
					<br />
				</td>
			</tr>				
			<tr class="HeatmapImageProperties" style="visibility: collapse;"><td><br/></td></tr>
			<tr class="HeatmapImageProperties" style="visibility: collapse;">
				<td align="center">
					Image Height (pixels) :  <input id="txtImageHeight" value="-1" />
					<br />
					<br />
				</td>
			</tr>				
			<tr class="HeatmapImageProperties" style="visibility: collapse;"><td><br/></td></tr>
			<tr class="HeatmapImageProperties" style="visibility: collapse;">
				<td align="center">
					Text size (pointsize) :  <input id="txtImagePointsize" value="-1" />
					<br />
					<br />
				</td>
			</tr>							
			<tr><td><br/></td></tr>
			<tr>
				<td colspan="4" align="center">
					<input type="button" value="Run" onClick="submitMarkerSelectionJob(this.form);"></input>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>
