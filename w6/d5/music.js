class MusicLib {
  constructor(name, creator) {
    this.name = name.toString();
    this.creator = creator;
    this.playlists = [];
  }
  addPlaylist(pName){
    this.playlists.push(pName);
  }
}

class Playlist{
  constructor(name) {
    this.name = name.toString();
    this._rating = 0;
    this._ratingCounter = 0;
    this._ratingOverall = 0;
    this._totalDuration = 0;
    this.tracks = [];
  }

  addTrack(tName) {
    this._rating += Number(tName.rating);
    this._ratingCounter++;
    this._ratingOverall = this._rating / this._ratingCounter;
    this._totalDuration += tName.length;
    this.tracks.push(tName);
  }

  // to make it accessible when directly called like (get balance)
  get ratingOverall() {
    return this._rating / this._ratingCounter;
  }

  // to make it accessible when directly called
  get totalDuration() {
    return this._totalDuration;
  }
}

class Track{
  constructor(title, rating) {
    this.title = title.toString();
    this.rating = Number(rating); // rating 1 - 5, int
    this.length = 0; // duration, int in secs
    this.songs = [];
  }

  addSong(sName) {
    this.songs.push(sName);
    this.length += sName[2];
  }
}

let myMusicLib = new MusicLib(123, 'Me');
let plist1, plist2;
let track1, track2, trackA1, trackA2, trackA3;
let song1, song2, song3;

song1 = ['Cranberries', 'Zombie', 180];
song2 = ['Blur', 'Song 2', 300];
song3 = ['Somashing Pumpkings', '1979', 200];
song4 = ['Foo Fighters', 'Learn to fly', 300];
song5 = ['Oasis', 'Wonderwall', 200];
song6 = ['R.E.M', 'Song 2', 350];
song7 = ['Radiohead', 'Karmapolice', 200];

track1 = new Track('track1', 5);
track2 = new Track('track2', 2);
track3 = new Track('track3', 4);
playlist1 = new Playlist('playlist1');
playlist2 = new Playlist('playlist2');

track1.addSong(song1);
track1.addSong(song2);
track2.addSong(song3);
track2.addSong(song4);
track2.addSong(song5);
track3.addSong(song6);
track3.addSong(song7);

playlist1.addTrack(track1);
playlist1.addTrack(track2);
playlist2.addTrack(track3);

myMusicLib.addPlaylist(playlist1);
myMusicLib.addPlaylist(playlist2);

// USAGE:
// console.log(song1);
// console.log(track2);
// console.log(playlist1);
// console.log(playlist1.ratingOverall);
// console.log(playlist1.totalDuration);
// console.log(myMusicLib);