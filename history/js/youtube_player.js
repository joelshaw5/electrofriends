
//song constructor
function Song(ytcode, title, artist, genre, score, ups, downs, user)
{
    this.ytcode = ytcode;
    this.title = title;
    this.artist = artist;
    this.genre = genre;
    this.score = score;
    this.ups = ups;
    this.downs = downs;
    this.user = user;
}

var userQueue = new Array();
var genQueue = new Array();
var queue = new Array();  //push() to bottom of stack, shift() to get first element
var recently_played = new Array(); //push() to bottom of array, pop() to element off bottom
var current_song;


$(function() {
    //initializing variables
   
    $(document).on('click', '.track-button', function(){ //binds next/prev track buttons to functions
        if($(this).attr("id") == 'next-track') {
            //printQueues();
            nextSong();
           //printQueues();
        }
        else //previous track
        {
            //alert('p1');
            if(recently_played.length > 0)
                previousSong();
           // alert('p2');
        }
    });

    $(document).on('click', '.queue-control', function(){
          if($(this).hasClass('queue-control-min'))
          {
              //alert('max');
              $('#max-queue').removeClass('hidden');
              $('.main').addClass('main-right');
              //alert($('.main').attr('class'));
              $('#rankings-table').css('width', '100%');
              $('.filters').css('text-align', 'right'); //push the filters to the right
              $('#blog-link').addClass('hidden');
          }
          else //min
          {
              $('#max-queue').addClass('hidden');
              $('.main').removeClass('main-right');
              $('#rankings-table').css('width', '65%');
              $('.filters').css('text-align', 'center');
              $('#blog-link').removeClass('hidden');
          }
          });

    $(document).on('click', '.pause-button', function(){

        ytplayer = document.getElementById('ytp');
        //alert(ytplayer.getPlayerState());
        if(ytplayer.getPlayerState() == '1') //playing
            ytplayer.pauseVideo();
        else if (ytplayer.getPlayerState() == '2' ||
                 ytplayer.getPlayerState() == '5' ||
                 ytplayer.getPlayerState() == '-1' )
        {
            ytplayer.playVideo();
        }
    });

});



function onYouTubePlayerReady(playerId) {
  ytplayer = document.getElementById(playerId);
  ytplayer.addEventListener("onStateChange", "stateChange");
  ytplayer.addEventListener("onError", "onPlayerError");
}
function stateChange(newState)
{
   //unstarted (-1), ended (0), playing (1), paused (2), buffering (3), video cued (5)
   if(newState == 0) //song is done, load next song
   {
       nextSong();
   }
   else if(newState == 1) // if its playing, change the title
   {
       $("title").text($('#song-title').html() + ' by ' + $('#song-artist').html() + '    - T3k.no');
   }
   else if(newState == 2) //song is paused, go back to original title
   {
       $("title").text("Paused - T3k.no");
   }
   else if(newState == 3) //song is buffering, change title
   {
       //next song hasn't loaded yet so pull from playlist
       $("title").text('Loading Song - T3k.no');
   }
}

function onPlayerError(errorCode) {
    nextSong();
    //on error, load a new player
     var params = { allowScriptAccess: "always" };
     swfobject.embedSWF("http://www.youtube.com/v/" + current_song.ytcode + "&enablejsapi=1&playerapiid=ytp" +
                       "&hd=1&iv_load_policy=3&rel=0&showinfo=0&autoplay=1&autohide=1",
                        "ytp", "275", "90", "8", null, null, params);

}

function previousSong()
{
   //shift the queue down 1 slot
   $('#playlist-3').html($('#playlist-2').html());
   queue[2] = queue[1];
   $('#playlist-2').html($('#playlist-1').html());
   queue[1] = queue[0];
    //take current song, add to top of queue
   $('#playlist-1').html(current_song.title + ' - ' + current_song.artist);
   queue[0] = current_song;
   
   current_song = recently_played.pop(); //last song added to recently_played
   ytplayer = document.getElementById('ytp');
   ytplayer.loadVideoById(current_song.ytcode);
   loadSongInfoCurrentSong();
}

//updates queue, moving 2,3 up a position and pulling new 3rd
function nextSong()
{
    //first things first, start the next song
    ytplayer = document.getElementById('ytp');
    ytplayer.loadVideoById(queue[0].ytcode); //playing the next song on the queue
    recently_played.push(current_song); //adding current song to recently_played
    current_song = queue.shift(); //sets current song to 1. in queue
    loadSongInfoCurrentSong();

    //moving 2,3 in the queue to 1,2
    $('#playlist-1').html($('#playlist-2').html());
    $('#playlist-2').html($('#playlist-3').html());

    //loading new 3
    var next_index = $('#playlist-next-index').val();
    queue.push(new Song($('#ytcode_'+next_index).val(),
                        $('#title_'+next_index).val(),
                        $('#artist_'+next_index).val(),
                        $('#genre_'+next_index).val(),
                        $('#score_'+next_index).val(),
                        $('#ups_'+next_index).val(),
                        $('#downs_'+next_index).val(),
                        $('#user_'+next_index).val()));
    $('#playlist-3').html($('#title_'+next_index).val() + ' - ' + $('#artist_'+next_index).val());


    resizeQueue();

    //setting new playlist-next/prev-index
    $('#playlist-next-index').val(parseInt(next_index) + 1);
}

function uq_addtoQueue(song)
{
    
}
//loads the next song in the user-queue, if none then loads from gen-queue
/*function updateQueue(){
    if (userQueue.length < queue.length) //pull all from userQueue, then the rest from gen-queue
    {
        for(var i=0; i< userQueue.length)
            addToQueue(userQueue.shift());

        while(userQueue.length < queue.length){
            addToQueue()
        }
    }
    
}*/

function printQueues()
{
    var qStr = "";

    for(var i=0; i<queue.length; i++)
    {
        qStr += queue[i].title + "-";
    }
        //qStr += i.toString() + '. ' + queue[i].title + "-";

    alert(qStr);
}

