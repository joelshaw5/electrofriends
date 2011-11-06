<?php
include 'connection.php';
$table_name = 'songs';
$ok = true;

//=======================Upload Song to DB==========================//
if(isset($_POST['title']) && validPost())
{
    $title = $_POST['title'];
    $artist = $_POST['artist'];
    $genre = $_POST['genre'];
    $url = GetYouTubeVideoId($_POST['url']);
    $user = $_POST['user'];
    
    if($ok)
    {
        $qry = mysql_query("INSERT INTO $table_name (title, artist, 
                                                    genre, youtubecode, 
                                                    user, uploaded_on)
                            VALUES ('$title', '$artist',
                                    '$genre', '$url',
                                    '$user', NOW())");
        if(!$qry)
        {
           die('Error: ' . mysql_error() . '<br />');
        }
	}
    else
        echo 'Upload Failed =( <br />';
}
?>

<html>
<body>
    <a href="index.php"><b>Home</b></a>
    
    <form action="upload.php" method="post">
    YouTube URL: <input type="text" name="url" /> <br />
    Title: <input type="text" name="title" /> <br />
    Artist: <input type="text" name="artist" /> <br />
    Genre: <select name="genre">
            <option value="DnB">Drum & Bass</option>
            <option value="Dubstep">Dubstep</option>
            <option value="Electro">Electro</option>
            <option value="House">House</option>
            <option value="Trance">Trance</option>
           </select> <br />
    Uploaded By: <input type="text" name="user" value="Anonymous" /> <br />
    
    <input type="submit" />
    </form>

</body>
</html>


<?php //=======================__FUNCTIONS__==============================//

//Gets youtube song ID
//Source: http://codestips.com/php-parse-youtube-video-id/
function GetYouTubeVideoId($youtubeUrl)
{
    global $ok;
    $youtubeID = 'invalid'; //should be overwritten if valid url
    try
    {
        $link = parse_url_helper($youtubeUrl);
        parse_str($link['query'], $qs);
        $youtubeID = $qs['v'];
    }
    catch (Exception $e) 
    {
        echo 'Error: Invalid URL: ',  $e->getMessage(), '<br />';
        $ok = false;
    }
    
    return $youtubeID;
}

//using php's parse URL but throws exception if not in valid format
function parse_url_helper($youtubeURL)
{
    $link = parse_url($youtubeURL);
    if(!array_key_exists('query', $link))
        throw new Exception('No \'Query\'');
    else
        return $link;
}

//checks if forms are submitted and have a length greater than 0
function validPost()
{
    $field_checks = array(
      // 'fieldname' => 'errormessage'
       'title' => '  Please enter a title',
       'artist' => '  Please enter an artist',
       'genre' => '  Please enter a genre' ,
       'url' => '  Please enter a URL',
       'user' => '  Please enter a user to credit this song to'
    );

    $errors = array();    
    foreach ($field_checks as $field => $errmsg) 
    {       
        if (!isset($_POST[$field]) || ($_POST[$field] === '')) {
            $errors[] = $errmsg;
        }
    }

    if (count($errors) > 0) 
    {
         echo 'ERROR: <br />';
         foreach($errors as $err)
         {
            echo $err . '<br />';
         }
         echo '<br />'; //For good measure
         return false;
    }
    
    return true;
}
?>
