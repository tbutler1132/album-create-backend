User.destroy_all
Album.destroy_all
Song.destroy_all
RefImg.destroy_all
RefSong.destroy_all
Beat.destroy_all
Vocal.destroy_all
Result.destroy_all
Poll.destroy_all
Mix.destroy_all
Master.destroy_all





user_tim = User.create(name: "Tim", username: "swizzed")
user_kanye = User.create(name: "Kanye", username: "yeye")
user_mike_dean = User.create(name: "Mike Dean", username: "Blazed")


album_1 = Album.create(title: "Project 1", user: user_tim, genre: "hip-hop")
########
song_1 = Song.create(title: "Track 1", placement: 1, phase: 6, album: album_1)

ref_img_1 = RefImg.create(title: "Winter", img_url: "https://freestock.ca/sapphire_forest__hdr_sjpg877.jpg", song: song_1, user: user_kanye, selected: true)

ref_song_1 = RefSong.create(title: "Stronger", song_url: "https://www.youtube.com/watch?v=PsO6ZnUZI0g&ab_channel=KanyeWestVEVO", song: song_1, user: user_kanye, selected: true)

beat_1 = Beat.create(bpm: 145, key_sig: "A minor", selected: true, song: song_1, user: user_kanye, audio:'../app/audio/rockstar.mp3')
beat_2 = Beat.create(bpm: 100, key_sig: "B major", selected: false, song: song_1, user: user_mike_dean, audio:'../app/audio/rockstar.mp3')
beat_3 = Beat.create(bpm: 80, key_sig: "D minor", selected: false, song: song_1, user: user_tim, audio:'../app/audio/rockstar.mp3')

vocal_1 = Vocal.create(beat: beat_1, user: user_kanye, selected: false)
vocal_2 = Vocal.create(beat: beat_1, user: user_mike_dean, selected: true)

mix_1 = Mix.create(vocal: vocal_2, user: user_mike_dean, selected: true)
mix_2 = Mix.create(vocal: vocal_2, user: user_kanye, selected: false)

master_1 = Master.create(mix: mix_1, user: user_mike_dean, selected: true)
master_2 = Master.create(mix: mix_1, user: user_kanye, selected: false)
#
song_2 = Song.create(title: "Track 2", placement: 2, phase: 2, album: album_1)

song_2_ref_img_1 = RefImg.create(title: "Desert", img_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/desert-manar-hawsawi.jpg", song: song_2, user: user_kanye, selected: true)
song_2_ref_img_2 = RefImg.create(title: "Desert 2", img_url: "https://images.fineartamerica.com/images-medium-large-5/sonoran-desert-glow-harriet-peck-taylor.jpg", song: song_2, user: user_tim, selected: false)
song_2_ref_img_3 = RefImg.create(title: "Desert 3", img_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/colorful-desert-bekim-art.jpg", song: song_2, user: user_mike_dean, selected: false)
song_2_ref_img_4 = RefImg.create(title: "Desert 4", img_url: "https://cdn.shopify.com/s/files/1/1347/9399/products/Desert_Day.jpg?v=1546411143", song: song_2, user: user_mike_dean, selected: false)

song_2_beat_1 = Beat.create(bpm: 92, key_sig: "C# minor", selected: false, song: song_2, user: user_tim)
song_2_beat_2 = Beat.create(bpm: 90, key_sig: "F# minor", selected: false, song: song_2, user: user_kanye)
song_2_beat_3 = Beat.create(bpm: 189, key_sig: "D major", selected: false, song: song_2, user: user_mike_dean)
#

song_3 = Song.create(title: "Track 3", placement: 3, phase: 1, album: album_1)

song_3_ref_img_1 = RefImg.create(title: "Ocean", img_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/abstract-art-flaming-ocean-kathy-symonds.jpg", song: song_3, user: user_kanye, selected: false)
song_3_ref_img_2 = RefImg.create(title: "Water", img_url: "https://www.trollart.com/wp-content/uploads/store-img/P/PlanetOcean.jpg", song: song_3, user: user_tim, selected: false)
song_3_ref_img_3 = RefImg.create(title: "Fish", img_url: "https://i.pinimg.com/originals/b4/d0/87/b4d08752f0bd87658db860905261fd89.jpg", song: song_3, user: user_kanye, selected: false)
song_3_ref_img_4 = RefImg.create(title: "more", img_url: "https://img5.goodfon.com/wallpaper/nbig/2/48/sea-waves-water-sky-orange-sky-artwork-digital-art-art.jpg", song: song_3, user: user_tim, selected: false)
song_3_ref_img_5 = RefImg.create(title: "lake", img_url: "https://news.uga.edu/wp-content/uploads/2017/12/GMOA-1953_1277-Hokusai.jpg", song: song_3, user: user_kanye, selected: false)
song_3_ref_img_6 = RefImg.create(title: "pool", img_url: "https://www.teamlab.art/images/pc-l/19809", song: song_3, user: user_tim, selected: false)
song_3_ref_img_7 = RefImg.create(title: "Fishey", img_url: "https://ae01.alicdn.com/kf/HTB1ZadePFXXXXXxXVXXq6xXFXXX3/Claude-Monet-Water-Lilies-Canvas-Art-Printed-Painting-Reproduction-Canvas-Picture-Prints-Wall-Art-for-Home.jpg", song: song_3, user: user_kanye, selected: false)
song_3_ref_img_8 = RefImg.create(title: "shark", img_url: "https://p0.pikrepo.com/preview/668/835/untitled.jpg", song: song_3, user: user_tim, selected: false)
song_3_ref_img_9 = RefImg.create(title: "aqua", img_url: "hhttps://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWJ9QZcv0MF1fXtF1vcsdnzcQ_16lzY6Wrbw&usqp=CAU", song: song_3, user: user_kanye, selected: false)

beat_1_song_3 = Beat.create(bpm: 145, key_sig: "F minor", selected: true, song: song_3, user: user_kanye, audio:'../app/audio/rockstar.mp3')
beat_2_song_3 = Beat.create(bpm: 300, key_sig: "B# major", selected: false, song: song_3, user: user_mike_dean, audio:'../app/audio/rockstar.mp3')
beat_3_song_3 = Beat.create(bpm: 80, key_sig: "D major", selected: false, song: song_3, user: user_tim, audio:'../app/audio/rockstar.mp3')

vocal_1_song_3 = Vocal.create(beat: beat_1_song_3, user: user_kanye, selected: false)
vocal_2_song_3 = Vocal.create(beat: beat_1_song_3, user: user_mike_dean, selected: false)

mix_1_song_3 = Mix.create(vocal: vocal_2_song_3, user: user_mike_dean, selected: false)
mix_2_song_3 = Mix.create(vocal: vocal_2_song_3, user: user_kanye, selected: false)

master_1_song_3 = Master.create(mix: mix_1_song_3, user: user_mike_dean, selected: false)
master_2_song_3 = Master.create(mix: mix_1_song_3, user: user_kanye, selected: false)

# #
song_4 = Song.create(title: "Track 4", placement: 4, phase: 3, album: album_1)

# song_4_ref_img_1 = RefImg.create(title: "Eminem", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg", song: song_4, user: user_kanye, selected: true)
# song_4_ref_img_2 = RefImg.create(title: "Marshall", img_url: "https://static.billboard.com/files/2020/11/Eminem-feb-2020-a-billboard-1548-1604341302-compressed.jpg", song: song_4, user: user_tim, selected: false)
# song_4_ref_img_3 = RefImg.create(title: "Slim Shady", img_url: "https://factmag-images.s3.amazonaws.com/wp-content/uploads/2015/04/Eminem021214-635x372.jpg", song: song_4, user: user_kanye, selected: false)

# song_4_beat_1 = Beat.create(bpm: 145, key_sig: "C minor", selected: true, song: song_4, user: user_tim)
# song_4_beat_2 = Beat.create(bpm: 70, key_sig: "F major", selected: false, song: song_4, user: user_kanye)
# song_4_beat_3 = Beat.create(bpm: 100, key_sig: "D major", selected: false, song: song_4, user: user_mike_dean)

# song_4_vocal_1 = Vocal.create(beat: song_4_beat_1, user: user_kanye, selected: false)
# song_4_vocal_2 = Vocal.create(beat: song_4_beat_1, user: user_mike_dean, selected: false)

# #
song_5 = Song.create(title: "Track 5", placement: 5, phase: 4, album: album_1)

# song_5_ref_img_1 = RefImg.create(title: "Nas", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg", song: song_4, user: user_kanye, selected: true)
# song_5_ref_img_2 = RefImg.create(title: "Nasty Nas", img_url: "https://static.billboard.com/files/2020/11/Eminem-feb-2020-a-billboard-1548-1604341302-compressed.jpg", song: song_4, user: user_tim, selected: false)
# song_5_ref_img_3 = RefImg.create(title: "N", img_url: "https://factmag-images.s3.amazonaws.com/wp-content/uploads/2015/04/Eminem021214-635x372.jpg", song: song_4, user: user_kanye, selected: false)

# song_5_beat_1 = Beat.create(bpm: 100, key_sig: "C major", selected: true, song: song_5, user: user_tim)
# song_5_beat_2 = Beat.create(bpm: 73, key_sig: "F minor", selected: false, song: song_5, user: user_kanye)
# song_5_beat_3 = Beat.create(bpm: 120, key_sig: "A major", selected: false, song: song_5, user: user_mike_dean)

# song_5_vocal_1 = Vocal.create(beat: song_5_beat_1, user: user_kanye, selected: true)
# song_5_vocal_2 = Vocal.create(beat: song_5_beat_1, user: user_mike_dean, selected: false)

# song_5_mix_1 = Mix.create(vocal: song_5_vocal_1, user: user_mike_dean, selected: false)
# song_5_mix_2 = Mix.create(vocal: song_5_vocal_2, user: user_kanye, selected: false)

# #
song_6 = Song.create(title: "Track 6", placement: 6, phase: 5, album: album_1)

# song_6_ref_img_1 = RefImg.create(title: "Wale", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg", song: song_6, user: user_kanye, selected: true)
# song_6_ref_img_2 = RefImg.create(title: "Dolphin", img_url: "https://static.billboard.com/files/2020/11/Eminem-feb-2020-a-billboard-1548-1604341302-compressed.jpg", song: song_6, user: user_tim, selected: false)
# song_6_ref_img_3 = RefImg.create(title: "Fish", img_url: "https://factmag-images.s3.amazonaws.com/wp-content/uploads/2015/04/Eminem021214-635x372.jpg", song: song_6, user: user_kanye, selected: false)

# song_6_beat_1 = Beat.create(bpm: 98, key_sig: "A major", selected: true, song: song_6, user: user_tim)
# song_6_beat_2 = Beat.create(bpm: 79, key_sig: "A minor", selected: false, song: song_6, user: user_kanye)
# song_6_beat_3 = Beat.create(bpm: 127, key_sig: "D major", selected: false, song: song_6, user: user_mike_dean)

# song_6_vocal_1 = Vocal.create(beat: song_6_beat_1, user: user_kanye, selected: true)
# song_6_vocal_2 = Vocal.create(beat: song_6_beat_1, user: user_mike_dean, selected: false)

# song_6_mix_1 = Mix.create(vocal: song_6_vocal_1, user: user_mike_dean, selected: true)
# song_6_mix_2 = Mix.create(vocal: song_6_vocal_2, user: user_kanye, selected: false)

# song_6_master_1 = Master.create(mix: song_6_mix_1, user: user_mike_dean, selected: false)
# song_6_master_2 = Master.create(mix: song_6_mix_1, user: user_kanye, selected: false)



# #
song_7 = Song.create(title: "Track 7", placement: 7, phase: 1, album: album_1)

######

poll_1_tim = Poll.create(phase: 2, user: user_tim)

poll_2_tim = Poll.create(phase: 1, user: user_tim)

# ref_song_result_tim = Result.create(win: true, poll: poll_2_tim, winnable: RefSong, winnable: ref_song_1)


beat_result_tim = Result.create(win: true, poll: poll_1_tim, winnable: Beat, winnable: beat_1)

beat_result_tim_2 = Result.create(win: false, poll: poll_1_tim, winnable: Beat, winnable: beat_2)

song_2_poll_1_tim = Poll.create(phase: 1, user: user_tim)
song_2_poll_2_tim = Poll.create(phase: 1, user: user_tim)
song_2_poll_1_kanye = Poll.create(phase: 1, user: user_kanye)
song_2_poll_2_kanye = Poll.create(phase: 1, user: user_kanye)
song_2_poll_1_mike = Poll.create(phase: 1, user: user_mike_dean)
song_2_poll_2_mike = Poll.create(phase: 1, user: user_mike_dean)

ref_result_1_tim = Result.create(poll: song_2_poll_1_tim, win: true, winnable: RefImg, winnable: song_2_ref_img_1)
ref_result_1_tim = Result.create(poll: song_2_poll_1_tim, win: false, winnable: RefImg, winnable: song_2_ref_img_2)

ref_result_2_tim = Result.create(poll: song_2_poll_2_tim, win: true, winnable: RefImg, winnable: song_2_ref_img_1)
ref_result_2_tim = Result.create(poll: song_2_poll_2_tim, win: false, winnable: RefImg, winnable: song_2_ref_img_3)

ref_result_1_kanye = Result.create(poll: song_2_poll_1_kanye, win: true, winnable: RefImg, winnable: song_2_ref_img_3)
ref_result_1_kanye = Result.create(poll: song_2_poll_1_kanye, win: false, winnable: RefImg, winnable: song_2_ref_img_1)

ref_result_1_mike = Result.create(poll: song_2_poll_1_mike, win: true, winnable: RefImg, winnable: song_2_ref_img_2)
ref_result_1_mike = Result.create(poll: song_2_poll_1_mike, win: false, winnable: RefImg, winnable: song_2_ref_img_3)



