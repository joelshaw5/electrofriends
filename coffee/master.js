
/*=================================================
----------------Youtube Player----------------------
=================================================
*/

(function() {
  var Filters, GeneratedQueue, Player, Queue, Rankings, Song, UserQueue;

  window.Player = Player = (function() {

    function Player() {
      this.initializePlayer();
      this.previousSongs = new Array();
      this.songsToRemember = 10;
    }

    Player.prototype.initializePlayer = function() {
      var debug, nh, params;
      debug = false;
      if (debug) console.log('Player.initializePlayer()');
      nh = $('#max-queue').height() - 12 - $('#bottomControls').height();
      $('#max-queue').height(nh);
      params = {
        allowScriptAccess: "always"
      };
      swfobject.embedSWF("http://www.youtube.com/v/" + $('#ytcode_1').val() + "&enablejsapi=1&playerapiid=ytplayer" + "&hd=1&iv_load_policy=3&rel=0&showinfo=0&autohide=1", "ytplayer", "275", "90", "8", null, null, params);
      return this.loadSongInRankings(1);
    };

    Player.prototype.loadSongInRankings = function(i) {
      var debug;
      debug = false;
      if (debug) console.log('loadSongInRankings Called()');
      window.currentSong = new Song($('#ytcode_' + i).val(), $('#title_' + i).val(), $('#genre_' + i).val(), $('#artist_' + i).val(), $('#user_' + i).val(), $('#userScore_' + i).val());
      return this.updateCurrentSongInfo();
    };

    Player.prototype.loadSongInQueue = function(i) {
      var debug;
      debug = false;
      if (debug) console.log('loadSongInQueue Called(' + i + ')');
      console.log(window.queue.userQ.songs[0].title);
      window.currentSong = new Song(window.queue.userQ.songs[i].ytcode, window.queue.userQ.songs[i].title, window.queue.userQ.songs[i].genre, window.queue.userQ.songs[i].artist, window.queue.userQ.songs[i].user, window.queue.userQ.songs[i].userScore);
      return this.updateCurrentSongInfo();
    };

    Player.prototype.addToHistory = function(song) {
      var debug;
      debug = false;
      if (debug) console.log('adding ' + song.title + ' to song history');
      this.previousSongs.push(song);
      if (this.previousSongs.length > this.songsToRemember) {
        return this.previousSongs.shift();
      }
    };

    Player.prototype.previousSong = function() {
      var debug, ytplayer;
      debug = false;
      if (debug) console.log('player.previousSong()');
      if (this.previousSongs.length > 0) {
        window.currentSong = this.previousSongs.pop();
        this.updateCurrentSongInfo();
        ytplayer = document.getElementById('ytplayer');
        return ytplayer.loadVideoById(currentSong.ytcode);
      }
    };

    Player.prototype.updateCurrentSongInfo = function() {
      var debug;
      debug = false;
      if (debug) console.log('player.updateCurrentSongInfo()');
      $('#currentSongTitle').html(window.currentSong.title);
      $('#currentSongArtist').html(window.currentSong.artist);
      $('#currentSongGenre').html(window.currentSong.genre);
      return $('#currentSongUser').html(window.currentSong.user + ' (' + window.currentSong.userScore + ')');
    };

    return Player;

  })();

  window.onYouTubePlayerReady = function(playerid) {
    var debug, ytplayer;
    debug = false;
    if (debug) console.log('player ready');
    ytplayer = document.getElementById(playerid);
    ytplayer.addEventListener("onStateChange", "stateChange");
    return ytplayer.addEventListener("onError", "onPlayerError");
  };

  window.stateChange = function(newState) {
    var debug;
    debug = false;
    if (debug) console.log('Player State Change: ' + newState);
    switch (newState) {
      case 0:
        if (debug) console.log('Song Ended');
        $('.next-song').click();
        break;
      case 1:
        if (debug) console.log('Song Playing');
        incrementPlayCount();
        return document.title = $('#currentSongTitle').html() + ' by ' + $('#currentSongArtist').html();
      case 2:
        if (debug) console.log('Song Paused');
        return document.title = 'Paused - T3K.NO';
      case 3:
        if (debug) console.log('Song Loading');
        return document.title = 'Loading Song - T3K.NO';
    }
  };

  window.incrementPlayCount = function() {
    var ampersandPosition, debug, video_id, ytcode, ytplayer;
    debug = false;
    ytplayer = document.getElementById('ytplayer');
    video_id = ytplayer.getVideoUrl().split('v=')[1];
    ampersandPosition = video_id.indexOf('&');
    if (ampersandPosition !== -1) {
      ytcode = video_id.substring(0, ampersandPosition);
    }
    if (debug) {
      console.log('window.incrementPlayCount(' + ytcode + '), currentSong.played: ' + window.currentSong.played);
    }
    if (!window.currentSong.played) {
      window.currentSong.played = true;
      return $.post('ajax/incrementPlayCount.php', {
        ytcode: ytcode
      }, function(data) {
        if (debug) return console.log(' Successfully Incremented Play Count!');
      });
    }
  };

  window.onPlayerError = function(errorCode) {
    var debug;
    debug = false;
    if (debug) console.log('onPlayerError() called!');
    $('.next-song').click();
  };

  /*=================================================
  ---------------------Queue--------------------------
  =================================================
  */

  window.Song = Song = (function() {

    function Song(ytcode, title, genre, artist, user, userScore) {
      var debug;
      this.ytcode = ytcode;
      this.title = title;
      this.genre = genre;
      this.artist = artist;
      this.user = user;
      this.userScore = userScore;
      this.played = false;
      debug = false;
      if (debug) {
        console.log('Song Created! ytcode: ' + this.ytcode + ', title: ' + this.title + ', genre: ' + this.genre + ', artist: ' + this.artist + ', userScore: ' + this.userScore + ', user: ' + this.user);
      }
    }

    return Song;

  })();

  window.Queue = Queue = (function() {

    function Queue() {
      this.genQ = new GeneratedQueue;
      this.userQ = new UserQueue;
      this.minQ_MaxSongs = 3;
      this.initialize();
    }

    Queue.prototype.initialize = function() {
      this.genQ.refresh();
      return this.updateMinQueue();
    };

    Queue.prototype.updateMinQueue = function(rankingsChange) {
      var debug, i, _ref, _results;
      if (rankingsChange == null) rankingsChange = false;
      debug = false;
      if (debug) console.log('Queue.updateMinQueue() called!');
      $('#min-queue').html('');
      if ($('#userQ').find('.queue-item').length !== 0) {
        for (i = 0, _ref = $('#userQ').find('.queue-item').length - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
          if (debug) console.log('Adding Song from UserQ');
          if ($('#min-queue').find('.queue-item').length >= this.minQ_MaxSongs) {
            break;
          }
          if (!this.userQ.songs[i].played) {
            $('#min-queue').append(' <li class="queue-item" id="userQ_' + (i + 1) + '_2"><span class="title"> ' + this.userQ.songs[i].title + '</span><span class="purple"> //</span> ' + this.userQ.songs[i].artist);
          }
        }
      }
      if (rankingsChange) {
        i = 1;
      } else {
        i = parseInt(this.genQ.curSong) + 1;
      }
      _results = [];
      while ($('#genQ_' + i).html() !== null && $('#min-queue').find('.queue-item').length < this.minQ_MaxSongs) {
        if (debug) console.log('Next song to add: ' + i);
        if (debug) console.log('Adding Song from GenQ: ' + $('#genQ_' + i).html());
        $('#min-queue').append(' <li class="queue-item" id="genQ_' + i + '_2"><span class="title"> ' + $('#title_' + i).val() + '</span><span class="purple"> //</span> ' + $('#artist_' + i).val() + '</li>');
        _results.push(i++);
      }
      return _results;
    };

    Queue.prototype.playSong = function(queue, index) {
      var debug, i, ytcode, ytplayer;
      debug = false;
      if (debug) console.log('Play Song ' + index + ' in ' + queue);
      if (queue !== 'genQ' && queue !== 'userQ') {
        console.log('Queue.playSong ERROR: Invalid param queue: ' + queue);
        return;
      }
      if (index < 1 || index > $('#' + queue).find('.queue-item').length) {
        console.log('Queue.playSong ERROR: Index out of bounds: ' + index);
        return;
      }
      $('.queue-item').removeClass('selected-song');
      $('#' + queue + '_' + index).addClass('selected-song');
      window.player.addToHistory(window.currentSong);
      if (queue === 'genQ') {
        ytcode = $('#ytcode_' + index).val();
        window.player.loadSongInRankings(index);
        this.genQ.curSong = index;
        this.userQ.markAllPlayed();
      } else {
        ytcode = this.userQ.songs[index - 1].ytcode;
        i = index - 1;
        window.player.loadSongInQueue(i);
        this.userQ.songs[i].played = true;
        this.userQ.markAllNotPlayed(i);
      }
      this.updateMinQueue();
      if (debug) console.log('  about to play song with ytcode: ' + ytcode);
      ytplayer = document.getElementById('ytplayer');
      return ytplayer.loadVideoById(ytcode);
    };

    return Queue;

  })();

  window.UserQueue = UserQueue = (function() {

    function UserQueue() {
      var debug;
      debug = false;
      if (debug) console.log('User Queue Created!');
      this.songs = new Array();
    }

    UserQueue.prototype.append = function(i) {
      this.songs.push(new Song($('#ytcode_' + i).val(), $('#title_' + i).val(), $('#genre_' + i).val(), $('#artist_' + i).val(), $('#user_' + i).val(), $('#userScore_' + i).val()));
      return $('#userQ').append(' <li class="queue-item" id="userQ_' + this.songs.length + '"><span class="title"> ' + $('#title_' + i).val() + '</span><span class="purple"> //</span> ' + $('#artist_' + i).val());
    };

    UserQueue.prototype.clear = function() {
      var debug;
      debug = false;
      if (debug) console.log('UserQueue.clear() called!');
      return this.initialize();
    };

    UserQueue.prototype.markAllPlayed = function() {
      var debug, song, _i, _len, _ref, _results;
      debug = false;
      if (debug) console.log('UserQueue.markAllPlayed() called!');
      _ref = this.songs;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        song = _ref[_i];
        _results.push(song.played = true);
      }
      return _results;
    };

    UserQueue.prototype.markAllNotPlayed = function(index) {
      var debug, i, _ref, _ref2, _results;
      debug = false;
      if (debug) console.log('UserQueue.markAllNotPlayed(' + index + ') called!');
      if ($('#userQ').find('.queue-item').length > 1) {
        _results = [];
        for (i = _ref = index + 1, _ref2 = this.songs.length - 1; _ref <= _ref2 ? i <= _ref2 : i >= _ref2; _ref <= _ref2 ? i++ : i--) {
          this.songs[i].played = false;
          if (debug) {
            _results.push(console.log(this.songs[i].title + ' played: ' + this.songs[i].played));
          } else {
            _results.push(void 0);
          }
        }
        return _results;
      }
    };

    return UserQueue;

  })();

  window.GeneratedQueue = GeneratedQueue = (function() {

    function GeneratedQueue() {
      var debug;
      debug = false;
      if (debug) console.log('Generated Queue Created!');
      this.songs = new Array();
      this.curSong = 1;
    }

    GeneratedQueue.prototype.refresh = function() {
      var i, _ref, _results;
      this.clear();
      this.curSong = 1;
      _results = [];
      for (i = 1, _ref = $('.song-max').length; 1 <= _ref ? i <= _ref : i >= _ref; 1 <= _ref ? i++ : i--) {
        this.songs.push(i);
        _results.push($('#genQ').append(' <li class="queue-item" id="genQ_' + i + '"><span class="title"> ' + $('#title_' + i).val() + '</span><span class="purple"> //</span> ' + $('#artist_' + i).val() + '</li>'));
      }
      return _results;
    };

    GeneratedQueue.prototype.clear = function() {
      var debug;
      debug = false;
      if (debug) console.log('GenQueue.clear() called!');
      return $('#genQ').html('');
    };

    return GeneratedQueue;

  })();

  /*=================================================
  ---------------------Filters--------------------------
  =================================================
  */

  window.Filters = Filters = (function() {

    function Filters(genre, time, artist, user) {
      this.genre = genre != null ? genre : "all";
      this.time = time != null ? time : "new";
      this.artist = artist != null ? artist : "";
      this.user = user != null ? user : "";
      this.highlight();
    }

    Filters.prototype.isSet = function(filter) {
      var _ref;
      return ((_ref = this.filt(filter)) != null ? _ref.length : void 0) > 0;
    };

    Filters.prototype.filt = function(filter) {
      if (filter === "genre") {
        return this.genre;
      } else if (filter === "time") {
        return this.time;
      } else if (filter === "artist") {
        return this.artist;
      } else if (filter === "user") {
        return this.user;
      } else {
        return false;
      }
    };

    Filters.prototype.set = function(filter, value) {
      if (filter === "genre") {
        this.genre = value;
        $('.genre-filter').removeClass('highlight-filter');
        return $('#filter-' + value).addClass('highlight-filter');
      } else if (filter === "time") {
        this.time = value;
        $('.time-filter').removeClass('highlight-filter');
        return $('#filter-' + value).addClass('highlight-filter');
      } else if (filter === "artist") {
        return this.artist = value;
      } else if (filter === "user") {
        return this.user = value;
      } else {
        return false;
      }
    };

    Filters.prototype.highlight = function() {
      if (this.genre === 'all') {
        $('#filter-all').addClass('highlight-filter');
      } else if (this.genre === 'dnb') {
        $('#filter-dnb').addClass('highlight-filter');
      } else if (this.genre === 'dubstep') {
        $('#filter-dubstep').addclass('highlight-filter');
      } else if (this.genre === 'electro') {
        $('#filter-electro').addclass('highlight-filter');
      } else if (this.genre === 'hardstyle') {
        $('#filter-hardstyle').addclass('highlight-filter');
      } else if (this.genre === 'house') {
        $('#filter-house').addclass('highlight-filter');
      } else if (this.genre === 'trance') {
        $('#filter-trance').addclass('highlight-filter');
      }
      if (this.time === 'day') {
        return $('#filter-day').addclass('highlight-filter');
      } else if (this.time === 'week') {
        return $('#filter-week').addclass('highlight-filter');
      } else if (this.time === 'month') {
        return $('#filter-month').addclass('highlight-filter');
      } else if (this.time === 'year') {
        return $('#filter-year').addclass('highlight-filter');
      } else if (this.time === 'century') {
        return $('#filter-century').addclass('highlight-filter');
      }
    };

    return Filters;

  })();

  /*=================================================
  ---------------------Rankings--------------------------
  =================================================
  */

  window.Rankings = Rankings = (function() {

    function Rankings() {
      this.filters = new Filters;
      this.maxed_song = -1;
      this.songsPerPage = $('tr.song-min').length;
      this.commentsPerSong = 4;
      /*=================================
      #special flag to tell ajax what is currently displayed in rankings
      Possible values:
        'search' - if rankings currently display search results
        'user' - if rankings currently display a specific user's songs
        'normal' - if rankings display a typical genre/time rankings
      */
      this.flag = 'normal';
      this.initialize();
    }

    Rankings.prototype.initialize = function() {
      return this.initializeSongs(1, this.songsPerPage);
    };

    Rankings.prototype.filt = function(filter) {
      return this.filters.filt(filter);
    };

    Rankings.prototype.nextComments = function(index) {
      var comments, debug, iterator, lowerLimit;
      debug = false;
      if (debug) console.log('Rankings.nextComments(' + index + ')');
      lowerLimit = parseInt($('#commentIterator_' + index).val());
      comments = this.commentsPerSong;
      iterator = lowerLimit + this.commentsPerSong;
      $('#commentIterator_' + index).val(iterator);
      if (debug) {
        console.log('POSTS: ');
        console.log('lowerLimit: ' + lowerLimit);
        console.log('upperLimit: ' + iterator);
        console.log('ytcode: ' + $('#ytcode_' + index).val());
      }
      return $.post('ajax/nextCommentAjax.php', {
        lowerLimit: lowerLimit,
        upperLimit: iterator,
        ytcode: $('#ytcode_' + index).val()
      }, function(data) {
        if (debug) console.log(data);
        $('#max_' + index).find('.comment-display').html(data);
        if ($('#max_' + index).find('.comment-p').length < comments) {
          return $('#max_' + index).find('.see-more-comments').addClass('hidden');
        }
      });
    };

    /*checks to see if there should be a showMoreSongs button at the bottom of the rankings
    if there is, show the button and return true, else don't show buton and return false
    */

    Rankings.prototype.enableMoreSongsButton = function() {
      if ($('tr.song-min').length > 0 && $('tr.song-min').length % this.songsPerPage === 0) {
        $('#showMoreSongs').removeClass('hidden');
        return true;
      } else {
        $('#showMoreSongs').addClass('hidden');
        return false;
      }
    };

    Rankings.prototype.changeTitle = function(title) {
      console.log('Rankings.changeTitle(' + title + ')');
      return $('#rankings-title').text(title);
    };

    Rankings.prototype.submitComment = function(comment, user, index) {
      var debug, ytcode;
      if (index == null) index = -1;
      debug = false;
      if (debug) {
        console.log('User ' + user + ' commenting on ' + index + ': ' + comment);
      }
      if (comment === '') {
        return alert('Please enter a comment');
      } else if (user === '') {
        return alert('Please enter a username to comment');
      } else {
        if (index !== -1) {
          ytcode = $('#ytcode_' + index).val();
        } else {
          ytcode = $('#upload_yturl').val();
        }
        if (debug) console.log('POSTS:');
        if (debug) console.log(encodeURIComponent(user));
        if (debug) console.log(encodeURIComponent(comment));
        if (debug) console.log('ytcode: ' + ytcode);
        return $.post('ajax/commentAjax.php', {
          user: encodeURIComponent(user),
          comment: encodeURIComponent(comment),
          ytcode: ytcode
        }, function(data) {
          if (debug) console.log('Data: ' + data);
          if (index !== -1) {
            if (!$('#max_' + index).find('.no-comment').hasClass('hidden')) {
              $('#max_' + index).find('.no-comment').addClass('hidden');
            }
            return $('#max_' + index).find('.comment-display').prepend(data);
          }
        });
      }
    };

    Rankings.prototype.refreshTitle = function() {
      var genre, title;
      if (this.filt('genre') === 'all') {
        genre = 'Tracks';
      } else {
        genre = this.filt('genre');
      }
      if (genre === 'all' && this.filt('time') === 'new') {
        title = 'The Fresh List';
      } else if (this.filt('time') === 'new') {
        title = 'The Freshest ' + genre;
      } else {
        title = "Top " + genre + " of the " + this.filt('time');
      }
      return $('#rankings-title').text(title);
    };

    Rankings.prototype.initializeSongs = function(startIndex, endIndex) {
      var debug, i, _results;
      debug = false;
      this.enableMoreSongsButton();
      if (debug) {
        console.log('Rankings.initializeComments(' + startIndex + ',' + endIndex + ') called');
      }
      _results = [];
      for (i = startIndex; startIndex <= endIndex ? i <= endIndex : i >= endIndex; startIndex <= endIndex ? i++ : i--) {
        if (debug) {
          console.log('Comments on Song ' + i + ": " + $('#max_' + i).find('.comment-p').length);
        }
        if ($('#max_' + i).find('.comment-p').length < this.commentsPerSong) {
          $('#max_' + i).find('.see-more-comments').addClass('hidden');
        }
        if ($('#max_' + i).find('.comment-p').length === 0) {
          _results.push($('#max_' + i).find('.comment-display').html('<p class="no-comment">No Comments. </p>'));
        } else {
          _results.push(void 0);
        }
      }
      return _results;
    };

    /*searches database for songs with 'searchterm' in either the title or artist 
    and displays results in rankings
    */

    Rankings.prototype.search = function(searchterm) {
      var commentsPerSong, upperlimit;
      upperlimit = this.songsPerPage;
      commentsPerSong = this.commentsPerSong;
      searchterm = searchterm.trim();
      if (searchterm.length === 0) {
        return alert('Please enter a search term');
      } else {
        console.log('search:' + searchterm);
        this.changeTitle('Searching: ' + searchterm);
        this.flag = 'search';
        return $.post('ajax/searchAjax.php', {
          searchTerm: searchterm,
          upperLimit: upperlimit
        }, function(data) {
          var i, _ref, _results;
          $('#rankings-table').html(data);
          if ($('tr.song-min').length > 0 && $('tr.song-min').length % upperlimit === 0) {
            $('#showMoreSongs').removeClass('hidden');
          } else {
            $('#showMoreSongs').addClass('hidden');
          }
          if ($('tr.song-min').length > 0) {
            _results = [];
            for (i = 1, _ref = $('tr.song-min').length; 1 <= _ref ? i <= _ref : i >= _ref; 1 <= _ref ? i++ : i--) {
              if ($('#max_' + i).find('.comment-p').length === 0) {
                $('#max_' + i).find('.comment-display').html('<p class="no-comment">No Comments. </p>');
              }
              if ($('#max_' + i).find('.comment-p').length < commentsPerSong) {
                _results.push($('#max_' + i).find('.see-more-comments').addClass('hidden'));
              } else {
                _results.push(void 0);
              }
            }
            return _results;
          }
        });
      }
    };

    return Rankings;

  })();

  /*=================================================
  -------------------On Load--------------------------
  =================================================
  */

  $(function() {
    window.player = new Player;
    window.queue = new Queue;
    window.rankings = new Rankings;
    $(document).on('click', '.song-button', function() {
      var i;
      i = $(this).closest('.song').attr('id').split('_')[1];
      if ($(this).hasClass('play-button')) {
        return queue.playSong('genQ', i);
      } else if ($(this).hasClass('queue-button')) {
        queue.userQ.append(i);
        return queue.updateMinQueue();
      }
    });
    $(document).on('click', '.next-song', function() {
      var debug, i, id, q;
      debug = false;
      if (debug) {
        console.log($('#min-queue').find('.queue-item:first-child').html());
      }
      id = $('#min-queue').find('.queue-item:first-child').attr('id');
      i = id.split('_')[1];
      q = id.split('_')[0];
      if (debug) console.log('queue: ' + q + ', index: ' + i);
      return queue.playSong(q, i);
    });
    $(document).on('click', '.previous-song', function() {
      return player.previousSong();
    });
    $(document).on('click', '.queue-item', function() {
      var debug, i, q;
      debug = false;
      if (debug) console.log('queue-item clicked');
      i = $(this).attr('id').split('_')[1];
      q = $(this).attr('id').split('_')[0];
      if (debug) console.log('queue: ' + q + ', index: ' + i);
      return queue.playSong(q, i);
    });
    $('.filter').click(function() {
      if ($(this).hasClass('genre-filter')) {
        rankings.filters.set('genre', $(this).html().toLowerCase());
      } else {
        rankings.filters.set('time', $(this).html().toLowerCase());
      }
      rankings.refreshTitle();
      return $.post('ajax/rankingsAjax.php', {
        genrefilter: rankings.filt('genre'),
        timefilter: rankings.filt('time')
      }, function(data) {
        $('#rankings-table').html(data);
        rankings.initialize();
        rankings.flag = 'normal';
        queue.genQ.refresh();
        return queue.updateMinQueue(true);
      });
    });
    $(document).on('click', '.song', function() {
      var i, state, temp;
      temp = $(this).attr('id').split('_');
      i = temp[1];
      state = temp[0];
      if (state === 'min') {
        if (rankings.maxed_song !== -1) {
          $('#max_' + rankings.maxed_song).addClass('hidden');
          $('#min_' + rankings.maxed_song).removeClass('hidden');
        } else {

        }
        $('#min_' + i).addClass('hidden');
        $('#max_' + i).removeClass('hidden');
        return rankings.maxed_song = i;
      }
    });
    $(document).on('click', '.queue-min', function() {
      $('#max-queue').addClass('hidden');
      $('.content').removeClass('queue-open');
      return $('#queue-max').html("[Show Queue]");
    });
    $(document).on('click', '#queue-max', function() {
      if ($('#max-queue').hasClass('hidden')) {
        $('#max-queue').removeClass('hidden');
        $('.content:not(#bottom-contents)').addClass('queue-open');
        return $('#queue-max').html("[Close Queue]");
      } else {
        return $('.queue-min').click();
      }
    });
    $(document).on('click', '#showMoreSongs', function() {
      var lowerLimit;
      lowerLimit = $('tr.song-min').length;
      return $.post('ajax/showMoreSongsAjax.php', {
        genrefilter: rankings.filt('genre'),
        timefilter: rankings.filt('time'),
        searchTerm: $('#search-input').val(),
        flag: rankings.flag,
        lowerLimit: lowerLimit,
        upperLimit: $('tr.song-min').length + rankings.songsPerPage
      }, function(data) {
        $('#rankings-table').append(data);
        rankings.initializeSongs(lowerLimit, lowerLimit + rankings.songsPerPage);
        queue.genQ.refresh();
        return queue.updateMinQ();
      });
    });
    $(document).on('click', '.submit-comment', function() {
      var i;
      i = $(this).closest('.song').attr('id').split('_')[1];
      return rankings.submitComment($('#max_' + i).find('.comment-text').val(), $('#max_' + i).find('.comment-user').val(), i);
    });
    $(document).on('click', '.see-more-comments', function() {
      var debug;
      debug = false;
      if (debug) console.log('See-More-Comments Clicked');
      return rankings.nextComments($(this).closest('.song').attr('id').split('_')[1]);
    });
    $(document).on('click', '.vote-button', function() {
      var debug, i, result, toAdd;
      debug = false;
      if (!$(this).hasClass('highlight-vote')) {
        i = $(this).closest('.song').attr('id').split('_')[1];
        if ($(this).attr('id') === 'up-vote') {
          if (debug) console.log('UpVote called on ' + i);
          result = 'up';
          toAdd = 1;
          $('#max_' + i).find("#up-vote").addClass('highlight-vote');
          $('#max_' + i).find("#down-vote").removeClass('highlight-vote');
        } else if ($(this).attr('id') === 'down-vote') {
          if (debug) console.log('DownVote called on ' + i);
          result = 'down';
          toAdd = -1;
          $('#max_' + i).find("#down-vote").addClass('highlight-vote');
          $('#max_' + i).find("#up-vote").removeClass('highlight-vote');
        } else {
          if (debug) {
            console.log('Error: Something went wrong with the vote-buttons');
          }
          result = 'error';
        }
        return $.post('ajax/voteAjax.php', {
          result: result,
          ytcode: $('#ytcode_' + i).val(),
          user: $('#user_' + i).val(),
          score: $('#score_' + i).val(),
          ups: $('#ups_' + i).val(),
          downs: $('#downs_' + i).val()
        }, function(data) {
          var oldScore;
          if (debug) console.log('Vote Success: ' + data);
          $('#max_' + i).find('.score-container').html(data);
          $('#min_' + i).find('.score-container').html(data);
          oldScore = parseInt($('#max_' + i).find('.user-score').html());
          return $('#max_' + i).find('.user-score').html(oldScore + toAdd);
        });
      }
    });
    $('#search-button').click(function() {
      return rankings.search($('#search-input').val());
    });
    $(document).on('click', '.search-filter', function() {
      return rankings.search($(this).html());
    });
    return $('#upload_song').click(function() {
      var debug;
      debug = false;
      return $.post('ajax/uploadAjax.php', {
        ytcode: $('#upload_yturl').val(),
        title: $('#upload_title').val(),
        oldie: $('#upload_oldie').attr('checked'),
        artist: $('#upload_artist').val(),
        genre: $('#upload_genre').val(),
        user: $('#upload_user').val()
      }, function(data) {
        console.log('Upload Result: ' + data);
        $("#upload-box-result").html(data);
        $("#upload-box-result").removeClass('hidden');
        if ($("#upload-box-result").html().indexOf("Upload Failed") === -1) {
          $('#upload-box-result').css('color', '#33FF33');
          if (debug) console.log('comment: ' + $('#upload_comment').val());
          if ($('#upload_comment').val() !== '') {
            rankings.submitComment($('#upload_comment').val(), $('#upload_user').val(), -1);
          }
          $('#upload_yturl').val('');
          $('#upload_title').val('');
          $('#upload_artist').val('');
          return $('#upload_comment').val('');
        } else {
          return $('#upload-box-result').css('color', 'red');
        }
      });
    });
  });

}).call(this);
