User.destroy_all
Album.destroy_all
Song.destroy_all
RefImg.destroy_all
RefSong.destroy_all
Beat.destroy_all
Vocal.destroy_all
Result.destroy_all
Poll.destroy_all





user_tim = User.create(name: "Tim", username: "swizzed")
user_kanye = User.create(name: "Kanye", username: "yeye")
user_mike_dean = User.create(name: "Mike Dean", username: "Blazed")


album_1 = Album.create(title: "Project 1", user: user_tim, genre: "hip-hop")
########
song_1 = Song.create(title: "Track 1", placement: 1, phase: 6, album: album_1)

ref_img_1 = RefImg.create(title: "Kanye", img_url: "https://storage.googleapis.com/afs-prod/media/c7ee6099a9044f57b6502c4b2a6105d7/2763.jpeg", song: song_1, user: user_kanye, selected: true)

ref_song_1 = RefSong.create(title: "Stronger", song_url: "https://www.youtube.com/watch?v=PsO6ZnUZI0g&ab_channel=KanyeWestVEVO", song: song_1, user: user_kanye, selected: true)

beat_1 = Beat.create(bpm: 145, key_sig: "A minor", selected: true, song: song_1, user: user_kanye)
beat_2 = Beat.create(bpm: 100, key_sig: "B major", selected: false, song: song_1, user: user_mike_dean)
beat_3 = Beat.create(bpm: 80, key_sig: "D minor", selected: false, song: song_1, user: user_tim)

vocal_1 = Vocal.create(beat: beat_1, user: user_kanye, selected: false)
vocal_2 = Vocal.create(beat: beat_1, user: user_mike_dean, selected: true)

mix_1 = Mix.create(vocal: vocal_2, user: user_mike_dean, selected: true)
mix_2 = Mix.create(vocal: vocal_2, user: user_kanye, selected: false)

master_1 = Master.create(mix: mix_1, user: user_mike_dean, selected: true)
master_2 = Master.create(mix: mix_1, user: user_kanye, selected: false)
#
song_2 = Song.create(title: "Track 2", placement: 2, phase: 1, album: album_1)


song_3 = Song.create(title: "Track 3", placement: 3, phase: 1, album: album_1)
song_4 = Song.create(title: "Track 4", placement: 4, phase: 1, album: album_1)
song_5 = Song.create(title: "Track 5", placement: 5, phase: 1, album: album_1)
song_6 = Song.create(title: "Track 6", placement: 6, phase: 1, album: album_1)
song_7 = Song.create(title: "Track 7", placement: 7, phase: 1, album: album_1)

######

poll_1_tim = Poll.create(phase: 2, user: user_tim)

poll_2_tim = Poll.create(phase: 1, user: user_tim)

ref_song_result_tim = Result.create(win: true, poll: poll_2_tim, winnable: RefSong, winnable: ref_song_1)


beat_result_tim = Result.create(win: true, poll: poll_1_tim, winnable: Beat, winnable: beat_1)

beat_result_tim = Result.create(win: false, poll: poll_1_tim, winnable: Beat, winnable: beat_2)


