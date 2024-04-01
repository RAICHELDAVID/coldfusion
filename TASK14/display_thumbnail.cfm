

<cfparam name="url.imageName" default="">
<cfparam name="url.thumbnailName" default="">

<cfif len(url.imageName) AND len(url.thumbnailName)>
    
    <h2>Thumbnail</h2>
<cfimage action="read" source="#expandPath('assets/thumbnails/')#/#url.thumbnailName#" name="thumbnailName" >
<cfelse>
    <p>No image to display.</p>
</cfif>


