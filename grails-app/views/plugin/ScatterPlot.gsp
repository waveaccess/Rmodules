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
					<a href='JavaScript:D2H_ShowHelp(1512,helpURL,"wndExternal",CTXT_DISPLAY_FULLHELP )'>
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
					<span class='AnalysisHeader'>Independent Variable</span>
					<br />
					<br />
					Select a continuous variable from the Data Set Explorer Tree and drag it into the box.
				</td>
				<td id="subsetdivider" rowspan="2" valign="center" align="center" height="100%">
					<div style="margin: 15px; border: 1px solid black; background: black; width: 1px; height: 150px"></div>
				</td>
				<td align="center">
					<span class='AnalysisHeader'>Dependent Variable</span>
					<br />
					<br />
					Select a continuous variable from the Data Set Explorer Tree and drag it into the box.					
				</td>					
			</tr>
	
			<tr>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="clearGroupScatter('divIndependentVariable')" value="X"> 
					<br />
					<div id='divIndependentVariable' class="queryGroupIncludeSmall"></div>
				</td>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="clearGroupScatter('divDependentVariable')" value="X"> 
					<br />
					<div id='divDependentVariable' class="queryGroupIncludeSmall"></div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="gatherHighDimensionalDataSingleSubset('divIndependentVariable')" value="High Dimensional Data">
				</td>
				<td>&nbsp;</td>
				<td align="right">
					<input style="font: 9pt tahoma;" type="button" onclick="gatherHighDimensionalDataSingleSubset('divDependentVariable')" value="High Dimensional Data">
				</td>
			</tr>
			<tr><td><br/></td></tr>
			<tr>
				<td>
					<div id="displaydivIndependentVariable"></div>
				</td>
				<td>&nbsp;</td>
				<td>
					<div id = "displaydivDependentVariable"></div>
				</td>
			</tr>
			<tr><td><br/></td></tr>
			<tr>
				<td>
					<g:checkBox name="logX"/> Perform log<sub>10</sub> transformation on independent variable
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="button" value="Run" onClick="submitScatterPlotJob(this.form);"></input>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>