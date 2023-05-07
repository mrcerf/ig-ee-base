<!--FHIR-NAME-01 Convention for Profile definition -->
<div class="card border-success mb-3" id="fhir-name-01">
   <div class="card-header bg-success">
      <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-01 Convention for      Profile definition</strong>
      <a href="#fhir-name-01"><i class="bi bi-link-45deg"></i></a>
   </div>
   <div class="card-body">
      <ul>
         <li>FHIR Profile name <b>MUST</b> follow an agreed format.</li>
         <li>
            The URL of a profile consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/StructureDefinition/[<b>Base</b>]-[<b>FHIRAssetName</b>]-[<b>BusinessName1</b>]-[<b>BusinessName2</b>]
            <ul>
               <li><b>Base URL:</b> The <b>URL</b> used for standard publishing. For example, <a href="#">hl7.org</a> for HL7 International and <a href="#">hl7.ee</a> for HL7 Estonia. Check the full <a href="/guide/ee-fhir-base/Home/Policy/Health-Services.guide.md?version=current">list</a> for details.</li>
               <li><b>Base:</b> The provider name. <b>EEBase</b> for Estonian Base. <b>Mandatory</b></li>
               <li><b>FHIRAssetName:</b> The name of the base FHIR Resource. <b>Mandatory</b></li>
               <li><b>BusinessNames:</b> Business names are only used where mutiple profiles exist for a given base resource type. <b>Optional</b></li>
               <li>No business version information is allowed in the  resource URL.</li>
               <li>Segment names in FHIR Profile URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>
            </ul>
            <div class="callout callout-success">
               <strong>Examples</strong>
               <br/>
               EEBase-Patient
               <br/>
               EEBase-Patient-Unknown
               <br/>
               EEBase-Observation-EducationLevel
               <br/>
               RETS-MedicationRequest
               <br/>
               EEHIF-MedicationRequest-Inpatient
            </div>
         <li><b>Resource name:</b> The [<b>Base</b>], [<b>FHIRAssetName</b>] and [<b>BusinessNames</b>] without hyphen (-)  <b>SHOULD</b> be used as resource name.</li>
         <li><b>Resource id:</b> The specification does not specify the form of resource id. [<b>Base</b>]-[<b>FHIRAssetName</b>]-[<b>BusinessNames</b>] with hyphen (-) is <b>RECOMMENDED</b> for this purpose.</li>
         <li><b>Title:</b> The title of the resource <b>MUST</b> be the [<b>Base</b>], [<b>FHIRAssetName</b>] and [<b>BusinessNames</b>] with added spaces to make it human readable and understandable.</li>
      </ul>
      <div class="callout callout-success" id="profDefEx">
         <strong>Example of EEBase Organization definition</strong><br/>
         <br/>    
         <div class="tabletab">
            <button class="tabletablinks active" onclick="openTab(event, 'xmlProfDef','profDefEx')">XML</button>
            <button class="tabletablinks" onclick="openTab(event, 'jsonProfDef','profDefEx')">JSON</button>
         </div>
         <div id="xmlProfDef" class="tabletabcontent" style="display: block;">
            </br>
            <pre>
          &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
            &lt;id value="EEBase-Organization"/&gt;
            &lt;url value="http://hl7.ee/fhir/StructureDefinition/EEBase-Organization"/&gt;
            &lt;version value="1.0.0"/&gt;
            &lt;name value="EEBaseOrganization"/&gt;
            &lt;title value="EEBase Organization"/&gt;
        </pre>
         </div>
         <div id="jsonProfDef" class="tabletabcontent">
            </br>
            <pre>
        {
          "resourceType": "StructureDefinition",
          "id": "EEBase-Organization",
          "url": "https://hl7.ee/fhir/StructureDefinition/EEBase-Organization",
          "version": "1.0.0",
          "name": "EEBaseOrganization",
          "title": "EEBase Organization"
        }
        </pre>
         </div>
      </div>
   </div>
</div>

<!--FHIR-NAME-02 Convention for Extension definition -->
<div class="card border-success mb-3" id="fhir-name-02">
   <div class="card-header bg-success">
      <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-02 Convention for Extension definition</strong>
      <a href="#fhir-name-02"><i class="bi bi-link-45deg"></i></a>
   </div>
   <div class="card-body">
      <ul>
         <li>FHIR Extension <b>MUST</b> follow an agreed format.</li>
         <li>
            The <b>URL</b> of an Extension consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/StructureDefinition/Extension-[<b>Base</b>]-[<b>BusinessName</b>]
            <ul>
               <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i> </li>
               <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
               <li><b>BusinessName:</b> The business name of the Extension. <b>Mandatory</b></li>
               <li>No business version information is allowed in the  Extension URL</li>
               <li>Segment names in FHIR Extension URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>
            </ul>
         <li><b>Resource name:</b> "Extension", [Base] and [BusinessName] without hyphen (-) <b>SHOULD</b> be used as resource name.</li>
         <li><b>Resource id:</b> The specification does not specify the form of resource id. "Extension", [Base] and [BusinessName] with hyphen (-) <b>RECOMMENDED</b> as resource id.</li>
         <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessName], and the word "extension" with added spaces to make it human-readable and understandable.</li>
      </ul>
      <div class="callout callout-success" id="extDefEx">
         <strong>Example of EEBase ADS extension definition</strong><br/> 
         <br/>   
         <div class="tabletab">
            <button class="tabletablinks active" onclick="openTab(event, 'xmlExtDef','extDefEx')">XML</button>
            <button class="tabletablinks" onclick="openTab(event, 'jsonExtDef','extDefEx')">JSON</button>
         </div>
         <div id="xmlExtDef" class="tabletabcontent" style="display: block;">
            </br>
            <pre>
        &lt;StructureDefinition xmlns="http://hl7.org/fhir"&gt;
          &lt;url value="http://hl7.ee/fhir/StructureDefinition/Extension-EEBase-ADS"/&gt;
          &lt;name value="ExtensionEEBaseADS"/&gt;
          &lt;version value="1.0.0"/&gt;
          &lt;id value="Extension-EEBase-ADS"/&gt;
          &lt;title value="EEBase ADS extension"/&gt;
      </pre>
         </div>
         <div id="jsonExtDef" class="tabletabcontent">
            </br>
            <pre>
      {
        "resourceType": "StructureDefinition",
        "id": "Extension-EEBase-ADS",
        "url": "https://hl7.ee/fhir/StructureDefinition/Extension-EEBase-ADS",
        "version": "1.0.0",
        "name": "ExtensionEEBaseADS",
        "title": "EEBase ADS extension" 
      }
      </pre>
         </div>
      </div>
   </div>
</div>


<!--FHIR-NAME-03 Convention for OperationDefinition resource definition -->
<div class="card border-success mb-3" id="fhir-name-03">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-03 Convention for OperationDefinition resource definition</strong>
    <a href="#fhir-name-03"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR OperationDefinition <b>MUST</b> follow an agreed format.</li>
      <li>
        The <b>URL</b> of an OperationDefinition consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/OperationDefinition/[<b>Base</b>]-[<b>BusinessName</b>]
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessName:</b> The business name of OperationDefinition. <b>Mandatory</b></li>
          <li>No business version information is allowed in the  OperationDefinition URL.</li>
          <li>Segment names in FHIR OperationDefinition URL <b>MUST</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Pascal case convention</a>.</li>
        </ul>
      <li><b>Resource name:</b> [Base] and [BusinessName] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>
      <li><b>Resource id:</b> The specification does not specify the form of resource id. [Base] and [BusinessName] with Hyphen (-) <b>RECOMMENDED</b> as resource id.</li>
      <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessName] with added spaces to make it human-readable and understandable.</li>
    </ul>
    <div class="callout callout-success" id="opdDefEx">
      <strong>Example of OperationDefinition resource definition</strong><br/> 
      <br/> 
      <div class="tabletab">
        <button class="tabletablinks active" onclick="openTab(event, 'xmlOpdDef', 'opdDefEx')">XML</button>
        <button class="tabletablinks" onclick="openTab(event, 'jsonOpdDef', 'opdDefEx')">JSON</button>
      </div>
      <div id="xmlOpdDef" class="tabletabcontent" style="display: block;">
        </br>
        <pre>
  &lt;OperationDefinition xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="EEBase-PatientMerge"/&gt;
      &lt;url value="https://hl7.org/fhir/OperationDefinition/EEBase-PatientMerge"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBasePatientMerge"/&gt;
      &lt;title value="EEBase PatientMerge"/&gt;
</pre>
      </div>
      <div id="jsonOpdDef" class="tabletabcontent">
        </br>
        <pre>
    {
      "resourceType": "OperationDefinition",
      "id": "EEBase-PatientMerge",
      "url": "https://hl7.org/fhir/OperationDefinition/EEBase-PatientMerge",
      "version": "1.0.0",
      "name": "EEBasePatientMerge",
      "title": "EEBase PatientMerge" 
    }
    </pre>
      </div>
    </div>
  </div>
</div>

<!--FHIR-NAME-04: External CodeSystem and ValueSet names -->
<div class="card border-success mb-3" id="fhir-name-04">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-04: External CodeSystem and ValueSet names</strong>
    <a href="#fhir-name-04"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>The FHIR-managed <a href="https://www.hl7.org/fhir/terminologies-systems.html">CodeSystems</a> <b>SHOULD</b> use names defined by FHIR working groups.</li>
      <li>The FHIR-managed <a href="https://www.hl7.org/fhir/terminologies-valuesets.html">ValueSets</a> <b>SHOULD</b> use names defined by FHIR working groups.</li>
      <li>Some ValueSets that use SNOMED CT will refer directly to SNOMED CT artefacts, for example, SNOMED CT Ref Sets, and there will not be a need to create a CodeSystem resource. There may be other ValueSets which follow the same principles, for example, LOINC.</li>
    </ul>
  </div>
</div>

<!--FHIR-NAME-05: CodeSystem name convention -->
<div class="card border-success mb-5" id="fhir-name-05">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-05: CodeSystem name convention</strong>
    <a href="#fhir-name-05"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR CodeSystem names <b>MUST</b> follow an agreed format.</li>
      <li>The <b>URL</b> of a CodeSystem consists of several segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/CodeSystem/[<b>base</b>]-[<b>businessname1</b>]-[<b>businessname2</b>]
      <li>
        The segments are defined as follows:
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessNames:</b> The business names of the CodeSystem. The CodeSystem name <b>MUST</b> have at least one BusinessName segment. Where a CodeSystem <b>MAY</b> is used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>
        </ul>
      </li>
      <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>
      <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>
      <li><b>Title:</b> The resource's title <b>MUST</b> be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. BusinessName segment(s) of the title <b>MAY</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Camel case convention</a>.</li>
    </ul>
    </li>   
    <li>The CodeSystems name <b>MUST</b> be used as the CodeSystems filename.</li>
    </ul>
    <div class="callout callout-success" id="CodeDefEx">
      <strong>Example of ArrivalMode CodeSystem definition</strong><br/> 
      <br/> 
      <div class="tabletab">
        <button class="tabletablinks active" onclick="openTab(event, 'xmlCodeDef', 'CodeDefEx')">XML</button>
        <button class="tabletablinks" onclick="openTab(event, 'jsonCodeDef', 'CodeDefEx')">JSON</button>
      </div>
      <div id="xmlCodeDef" class="tabletabcontent" style="display: block;">
        </br>
        <pre>
    &lt;CodeSystem xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="eebase-arrivalmode"/&gt;
      &lt;url value="https://hl7.ee/fhir/CodeSystem/eebase-arrivalmode"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBaseArrivalMode"/&gt;
      &lt;title value="EEBase arrivalMode"/&gt;
  </pre>
      </div>
      <div id="jsonCodeDef" class="tabletabcontent">
        </br>
        <pre>
    {
      "resourceType": "CodeSystem",
      "id": "eebase-arrivalmode",
      "url": "https://hl7.ee/fhir/CodeSystem/eebase-arrivalmode",
      "version": "1.0.0",
      "name": "EEBaseArrivalMode",
      "title": "EEBase arrivalMode" 
    }
    </pre>
      </div>
    </div>
  </div>
</div>

<!--FHIR-NAME-06: ValueSet name convention -->
<div class="card border-success mb-3" id="fhir-name-06">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-06: ValueSet name convention</strong>
    <a href="#fhir-name-06"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR ValueSet names <b>MUST</b> follow an agreed format.</li>
      <li>The <b>URL</b> of a ValueSet consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/ValueSet/[<b>base</b>]-[<b>businessname1</b>]-[<b>businessname2</b>]
      <li>
        The segments are defined as follows:
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>Base:</b> The standard provider name. <i>See profile definition.</i> <b>Mandatory</b></li>
          <li><b>BusinessNames:</b> The list of business names of the ValueSet. The ValueSet name <b>MUST</b> have at least one BusinessName segment. Where a ValueSet <b>MAY</b> be used across several domains, business names <b>SHOULD</b> reflect that. <b>Mandatory</b></li>
        </ul>
      </li>
      <li><b>Resource name:</b> [Base] and [BusinessNames] without hyphen (-) <b>SHOULD</b> be used as the resource name.</li>
      <li><b>Resource id:</b> [Base] and [BusinessNames] in lowercase where every word is separated with a hyphen (-). The same formatting rules <b>SHOULD</b> be applied to the resource URL.</li>
      <li><b>Title:</b> The title of the resource <b>MUST</b> be [Base] and [BusinessNames] with added spaces to make it human-readable and understandable. BusinessName segment(s) of the title <b>MAY</b> follow <a href="https://learn.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/ms229043(v=vs.100)?redirectedfrom=MSDN">Camel case convention</a></li>
      <li>The ValueSet name <b>MUST</b> be used as the ValueSet's filename.</li>
    </ul>
    <div class="callout callout-success" id="ValDefEx">
      <strong>Example of ArrivalMode ValueSet definition</strong><br/> 
      <br/> 
      <div class="tabletab">
        <button class="tabletablinks active" onclick="openTab(event, 'xmlValDef', 'ValDefEx')">XML</button>
        <button class="tabletablinks" onclick="openTab(event, 'jsonValDef', 'ValDefEx')">JSON</button>
      </div>
      <div id="xmlValDef" class="tabletabcontent" style="display: block;">
        </br>
        <pre>
    &lt;ValueSet xmlns="http://hl7.org/fhir"&gt;
      &lt;id value="eebase-arrivalmode"/&gt;
      &lt;url value="https://hl7.ee/fhir/ValueSet/eebase-arrivalmode"/&gt; 
      &lt;version value="1.0.0" /&gt;
      &lt;name value="EEBaseArrivalMode"/&gt;
      &lt;title value="EEBase arrivalMode"/&gt;
  </pre>
      </div>
      <div id="jsonValDef" class="tabletabcontent">
        </br>
        <pre>
    {
      "resourceType": "ValueSet",
      "id": "eebase-arrivalmode",
      "url": "https://hl7.ee/fhir/ValueSet/eebase-arrivalmode",
      "version": "1.0.0",
      "name": "EEBaseArrivalMode",
      "title": "EEBase arrivalMode" 
    }
    </pre>
      </div>
    </div>
  </div>
</div>

<!--FHIR-NAME-07: Identifier systems name convention -->
<div class="card border-success mb-3" id="fhir-name-07">
  <div class="card-header bg-success">
    <strong class="card-title"><i class="bi bi-check-circle-fill"></i> FHIR-NAME-07: Identifier systems name convention</strong>
    <a href="#fhir-name-07"><i class="bi bi-link-45deg"></i></a>
  </div>
  <div class="card-body">
    <ul>
      <li>FHIR identifier systems <b>MUST</b> follow an agreed format.</li>
      <li>The identifier systems <b>MAY</b> be used in the system element of the Identifier datatype. They establish the namespace for an asset's identifier.value element and have a URI datatype.</li>
      <li>The <b>URL</b> of an identifier systems consists of several name segments and will be in the form: <br/>https://[<b>base url</b>]/fhir/NamingSystem/[<b>businessname1</b>]-[<b>businessname2</b>]-[<b>businessname3</b>]-[<b>businessname4</b>]</li>
      <li>
        The segments are defined as follows:
        <ul>
          <li><b>Base URL:</b> The URL used for standard publishing. <i>See profile definition.</i></li>
          <li><b>NamingSystem:</b> The NamingSystem section of the identifier is formatted as a string 'NamingSystem'. This segment denotes that the string is an identifier system and is <b>Mandatory</b>.</li>
          <li><b>BusinessNames:</b> The business name segments describe the identifier system. The first business name is Mandatory, but all subsequent ones are optional. There <b>MAY</b> be up to four business names each separated by a hyphen (-) character.</li>
        </ul>
      </li>
      <li>Business names <b>SHOULD</b> be used as the logical ID in lowercase.</li>
    </ul>
  </div>
  <div class="callout callout-success" id="NsCodeEx">
    <strong>Example of NamingSystem definition for Estonian Address Data System (ADS)</strong><br/>
    <br/> 
    <div class="tabletab">
      <button class="tabletablinks active" onclick="openTab(event, 'xmlNsCode', 'NsCodeEx')">XML</button>
      <button class="tabletablinks" onclick="openTab(event, 'jsonNsCode', 'NsCodeEx')">JSON</button>
    </div>
    <div id="xmlNsCode" class="tabletabcontent" style="display: block;">
      </br>
      <pre>
      &lt;NamingSystem xmlns="http://hl7.org/fhir"&gt;
        &lt;id value="ads-id"/&gt;
        &lt;url value="https://hl7.ee/fhir/NamingSystem/ads-id"/&gt; 
        &lt;version value="1.0.0" /&gt;
        &lt;name value="ADSID"/&gt;
    </pre>
    </div>
    <div id="jsonNsCode" class="tabletabcontent">
      </br>
      <pre>     
    {
      "resourceType": "NamingSystem",
      "id": "ads-id",
      "url": "https://hl7.ee/fhir/NamingSystem/ads-id",
      "version": "1.0.0",
      "name": "ADSID",
    }
    </pre>
    </div>
  </div>
</div>

