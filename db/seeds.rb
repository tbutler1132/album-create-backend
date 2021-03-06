

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
CommentThread.destroy_all
Comment.destroy_all

user_tim = User.create(name: "Tim", username: "swizzed", password: "1234")
user_kanye = User.create(name: "Kanye", username: "ye", password: "1234")  

album_1 = Album.create(title: "Project 1", user: user_tim, genre: "hip-hop")

song_1 = Song.create(title: "Track 1", placement: 1, phase: 1, album: album_1, description: "The ordinary world. A simple song that hints at the adventure that is to come.")




ref_img_1 = RefImg.create(title: "Kanye", img_url: "https://esdevlin.com/files/kanye-west/_largeImage/EDN_KANYE_GLOW_08A_170915_160256.jpg", song: song_1, user: user_tim, selected: false)
ref_img_2 = RefImg.create(title: "Kanye_CD", img_url: "https://www.nme.com/wp-content/uploads/2019/02/Kanye.jpg", song: song_1, user: user_tim, selected: false)
ref_img_3 = RefImg.create(title: "Kanye_LR", img_url: "https://cdn.vox-cdn.com/thumbor/EW6bJfGP2d0w3qPzZOZHI0evFuk=/98x0:2901x2102/1200x800/filters:focal(98x0:2901x2102)/cdn.vox-cdn.com/uploads/chorus_image/image/55904439/1_p1AJzhVp6pqpMEdo7vSzag.0.jpeg", song: song_1, user: user_tim, selected: false)
ref_img_4 = RefImg.create(title: "Kanye_808", img_url: "https://uproxx.com/wp-content/uploads/2018/11/808-heartbreaks-grid-uproxx.jpg", song: song_1, user: user_tim, selected: false)
ref_img_5 = RefImg.create(title: "Kanye_MBDTF", img_url: "https://media.gq.com/photos/564f92c8dc7b324869a6ec18/master/pass/GettyImages-104037857.jpg", song: song_1, user: user_tim, selected: false)
ref_img_6 = RefImg.create(title: "Kanye_Yeezus", img_url: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-13565-kanye-1800-1385144890.jpg", song: song_1, user: user_tim, selected: false)



# vocal_1 = Vocal.create(beat: beat_1, user: user_kanye, selected: false)
# vocal_2 = Vocal.create(beat: beat_1, user: user_tim, selected: false)
# vocal_3 = Vocal.create(beat: beat_1, user: user_kanye, selected: false)
# vocal_4 = Vocal.create(beat: beat_1, user: user_tim, selected: false)
# vocal_5 = Vocal.create(beat: beat_1, user: user_kanye, selected: false)
# vocal_6 = Vocal.create(beat: beat_1, user: user_tim, selected: false)

poll_1_1 = Poll.create(phase: 1, user: user_tim)
poll_2_1 = Poll.create(phase: 1, user: user_tim)
poll_3_1 = Poll.create(phase: 1, user: user_tim)
poll_4_1 = Poll.create(phase: 1, user: user_tim)
poll_5_1 = Poll.create(phase: 1, user: user_tim)
poll_6_2 = Poll.create(phase: 1, user: user_tim)
poll_7_2 = Poll.create(phase: 1, user: user_tim)
poll_8_2 = Poll.create(phase: 1, user: user_tim)
poll_9_2 = Poll.create(phase: 1, user: user_tim)
poll_10_3 = Poll.create(phase: 1, user: user_tim)
poll_11_3 = Poll.create(phase: 1, user: user_tim)
poll_12_3 = Poll.create(phase: 1, user: user_tim)
poll_13_4 = Poll.create(phase: 1, user: user_tim)
poll_14_4 = Poll.create(phase: 1, user: user_tim)
poll_15_5 = Poll.create(phase: 1, user: user_tim)

img_1_win_1 = Result.create(poll: poll_1_1, win: true, winnable: RefImg, winnable: ref_img_1)
img_1_win_2 = Result.create(poll: poll_2_1, win: true, winnable: RefImg, winnable: ref_img_1)
img_1_win_3 = Result.create(poll: poll_3_1, win: true, winnable: RefImg, winnable: ref_img_1)
img_1_win_4 = Result.create(poll: poll_4_1, win: true, winnable: RefImg, winnable: ref_img_1)
img_1_win_5 = Result.create(poll: poll_5_1, win: true, winnable: RefImg, winnable: ref_img_1)

img_2_win_1 = Result.create(poll: poll_6_2, win: true, winnable: RefImg, winnable: ref_img_2)
img_2_win_2 = Result.create(poll: poll_7_2, win: true, winnable: RefImg, winnable: ref_img_2)
img_2_win_3 = Result.create(poll: poll_8_2, win: true, winnable: RefImg, winnable: ref_img_2)
img_2_win_4 = Result.create(poll: poll_9_2, win: true, winnable: RefImg, winnable: ref_img_2)

img_3_win_1 = Result.create(poll: poll_10_3, win: true, winnable: RefImg, winnable: ref_img_3)
img_3_win_2 = Result.create(poll: poll_11_3, win: true, winnable: RefImg, winnable: ref_img_3)
img_3_win_3 = Result.create(poll: poll_12_3, win: true, winnable: RefImg, winnable: ref_img_3)

img_4_win_1 = Result.create(poll: poll_13_4, win: true, winnable: RefImg, winnable: ref_img_4)
img_4_win_2 = Result.create(poll: poll_14_4, win: true, winnable: RefImg, winnable: ref_img_4)

img_5_win_1 = Result.create(poll: poll_15_5, win: true, winnable: RefImg, winnable: ref_img_5)



comment_thread_1 = CommentThread.create(song: song_1, title: "Phase 1 Song 1 thread", phase: 1) 

##

comment_1 = Comment.create(user: user_tim, comment_thread: comment_thread_1, content: "I'm a comment, yay!")
comment_2 = Comment.create(user: user_tim, comment_thread: comment_thread_1, content: "I be nappin")



ref_song_1 = RefSong.create(title: "Stronger", song_url: "https://www.youtube.com/watch?v=PsO6ZnUZI0g&ab_channel=KanyeWestVEVO", song: song_1, user: user_tim, selected: false)





song_2 = Song.create(title: "Track 2", placement: 2, phase: 2, album: album_1, description: "The call to adventure. The protaganist it met with a cirumstance that requires him to make a decision. Will he take a leap off faith, or will he continue living the same life?")
comment_thread_2 = CommentThread.create(song: song_2, title: "Phase 2 Song 2 thread", phase: 2)

ref_img_1_2 = RefImg.create(title: "Kanye", img_url: "https://esdevlin.com/files/kanye-west/_largeImage/EDN_KANYE_GLOW_08A_170915_160256.jpg", song: song_2, user: user_tim, selected: true)
ref_img_2_2 = RefImg.create(title: "Kanye_CD", img_url: "https://www.nme.com/wp-content/uploads/2019/02/Kanye.jpg", song: song_2, user: user_tim, selected: false)
ref_img_3_2 = RefImg.create(title: "Kanye_LR", img_url: "https://cdn.vox-cdn.com/thumbor/EW6bJfGP2d0w3qPzZOZHI0evFuk=/98x0:2901x2102/1200x800/filters:focal(98x0:2901x2102)/cdn.vox-cdn.com/uploads/chorus_image/image/55904439/1_p1AJzhVp6pqpMEdo7vSzag.0.jpeg", song: song_2, user: user_tim, selected: false)
ref_img_4_2 = RefImg.create(title: "Kanye_808", img_url: "https://uproxx.com/wp-content/uploads/2018/11/808-heartbreaks-grid-uproxx.jpg", song: song_2, user: user_tim, selected: false)
ref_img_5_2 = RefImg.create(title: "Kanye_MBDTF", img_url: "https://media.gq.com/photos/564f92c8dc7b324869a6ec18/master/pass/GettyImages-104037857.jpg", song: song_2, user: user_tim, selected: false)
ref_img_6_2 = RefImg.create(title: "Kanye_Yeezus", img_url: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-13565-kanye-1800-1385144890.jpg", song: song_2, user: user_tim, selected: false)

beat_1_2 = Beat.create(bpm: 145, key_sig: "A minor", selected: false, song: song_2, user: user_kanye)
beat_2_2 = Beat.create(bpm: 100, key_sig: "B major", selected: false, song: song_2, user: user_tim)
beat_3_2 = Beat.create(bpm: 80, key_sig: "D minor", selected: false, song: song_2, user: user_tim)
beat_4_2 = Beat.create(bpm: 70, key_sig: "B# minor", selected: false, song: song_2, user: user_tim)
beat_5_2 = Beat.create(bpm: 92, key_sig: "D flat minor", selected: false, song: song_2, user: user_tim)
beat_6_2 = Beat.create(bpm: 83, key_sig: "D major", selected: false, song: song_2, user: user_tim)


song_3 = Song.create(title: "Track 3", placement: 3, phase: 3, album: album_1, description: "Meeting the mentor. As the hero embarks on his journey he is not alone.")

comment_thread_3 = CommentThread.create(song: song_3, title: "Phase 3 Song 3 thread", phase: 3)

ref_img_1_3 = RefImg.create(title: "Kanye", img_url: "https://esdevlin.com/files/kanye-west/_largeImage/EDN_KANYE_GLOW_08A_170915_160256.jpg", song: song_3, user: user_tim, selected: false)
ref_img_2_3 = RefImg.create(title: "Kanye_CD", img_url: "https://www.nme.com/wp-content/uploads/2019/02/Kanye.jpg", song: song_3, user: user_tim, selected: true)
ref_img_3_3 = RefImg.create(title: "Kanye_LR", img_url: "https://cdn.vox-cdn.com/thumbor/EW6bJfGP2d0w3qPzZOZHI0evFuk=/98x0:2901x2102/1200x800/filters:focal(98x0:2901x2102)/cdn.vox-cdn.com/uploads/chorus_image/image/55904439/1_p1AJzhVp6pqpMEdo7vSzag.0.jpeg", song: song_3, user: user_tim, selected: false)
ref_img_4_3 = RefImg.create(title: "Kanye_808", img_url: "https://uproxx.com/wp-content/uploads/2018/11/808-heartbreaks-grid-uproxx.jpg", song: song_3, user: user_tim, selected: false)
ref_img_5_3 = RefImg.create(title: "Kanye_MBDTF", img_url: "https://media.gq.com/photos/564f92c8dc7b324869a6ec18/master/pass/GettyImages-104037857.jpg", song: song_3, user: user_tim, selected: false)
ref_img_6_3 = RefImg.create(title: "Kanye_Yeezus", img_url: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-13565-kanye-1800-1385144890.jpg", song: song_3, user: user_tim, selected: false)


beat_1_3 = Beat.create(bpm: 145, key_sig: "A minor", selected: true, song: song_3, user: user_kanye)
beat_2_3 = Beat.create(bpm: 100, key_sig: "B major", selected: false, song: song_3, user: user_tim)
beat_3_3 = Beat.create(bpm: 80, key_sig: "D minor", selected: false, song: song_3, user: user_tim)
beat_4_3 = Beat.create(bpm: 70, key_sig: "B# minor", selected: false, song: song_3, user: user_tim)
beat_5_3 = Beat.create(bpm: 92, key_sig: "D flat minor", selected: false, song: song_3, user: user_tim)
beat_6_3 = Beat.create(bpm: 83, key_sig: "D major", selected: false, song: song_3, user: user_tim)

vocal_1_3 = Vocal.create(beat: beat_1_3, user: user_kanye, selected: false)
vocal_2_3 = Vocal.create(beat: beat_1_3, user: user_tim, selected: false)
vocal_3_3 = Vocal.create(beat: beat_1_3, user: user_kanye, selected: false)
vocal_4_3 = Vocal.create(beat: beat_1_3, user: user_tim, selected: false)
vocal_5_3 = Vocal.create(beat: beat_1_3, user: user_kanye, selected: false)
vocal_6_3 = Vocal.create(beat: beat_1_3, user: user_tim, selected: false)


##

song_4 = Song.create(title: "Track 4", placement: 4, phase: 4, album: album_1, description: "Crossing the Threshold. The hero enters the new world")

ref_img_1_4 = RefImg.create(title: "Kanye", img_url: "https://esdevlin.com/files/kanye-west/_largeImage/EDN_KANYE_GLOW_08A_170915_160256.jpg", song: song_4, user: user_tim, selected: false)
ref_img_2_4 = RefImg.create(title: "Kanye_CD", img_url: "https://www.nme.com/wp-content/uploads/2019/02/Kanye.jpg", song: song_3, user: user_tim, selected: false)
ref_img_3_4 = RefImg.create(title: "Kanye_LR", img_url: "https://cdn.vox-cdn.com/thumbor/EW6bJfGP2d0w3qPzZOZHI0evFuk=/98x0:2901x2102/1200x800/filters:focal(98x0:2901x2102)/cdn.vox-cdn.com/uploads/chorus_image/image/55904439/1_p1AJzhVp6pqpMEdo7vSzag.0.jpeg", song: song_3, user: user_tim, selected: false)
ref_img_4_4 = RefImg.create(title: "Kanye_808", img_url: "https://uproxx.com/wp-content/uploads/2018/11/808-heartbreaks-grid-uproxx.jpg", song: song_4, user: user_tim, selected: true)
ref_img_5_4 = RefImg.create(title: "Kanye_MBDTF", img_url: "https://media.gq.com/photos/564f92c8dc7b324869a6ec18/master/pass/GettyImages-104037857.jpg", song: song_4, user: user_tim, selected: false)
ref_img_6_4 = RefImg.create(title: "Kanye_Yeezus", img_url: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-13565-kanye-1800-1385144890.jpg", song: song_4, user: user_tim, selected: false)


beat_1_4 = Beat.create(bpm: 145, key_sig: "A minor", selected: true, song: song_4, user: user_kanye)
beat_2_4 = Beat.create(bpm: 100, key_sig: "B major", selected: false, song: song_4, user: user_tim)
beat_3_4 = Beat.create(bpm: 80, key_sig: "D minor", selected: false, song: song_4, user: user_tim)
beat_4_4 = Beat.create(bpm: 70, key_sig: "B# minor", selected: false, song: song_4, user: user_tim)
beat_5_4 = Beat.create(bpm: 92, key_sig: "D flat minor", selected: false, song: song_4, user: user_tim)
beat_6_4 = Beat.create(bpm: 83, key_sig: "D major", selected: false, song: song_4, user: user_tim)

vocal_1_4 = Vocal.create(beat: beat_1_4, user: user_kanye, selected: true)
vocal_2_4 = Vocal.create(beat: beat_1_4, user: user_tim, selected: false)
vocal_3_4 = Vocal.create(beat: beat_1_4, user: user_kanye, selected: false)
vocal_4_4 = Vocal.create(beat: beat_1_4, user: user_tim, selected: false)
vocal_5_4 = Vocal.create(beat: beat_1_4, user: user_kanye, selected: false)
vocal_6_4 = Vocal.create(beat: beat_1_4, user: user_tim, selected: false)





beat_1_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_2_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_3_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_4_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_5_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_6_2.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)


beat_1_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_2_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_3_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_4_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_5_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_6_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)


beat_1_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_2_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_3_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_4_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_5_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

beat_6_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)




vocal_1_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_2_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_3_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_4_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_5_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_6_4.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)



vocal_1_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_2_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_3_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_4_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_5_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)

vocal_6_3.audio_data.attach(
    io: File.open('app/audio/rockstar.mp3'),
    filename: 'rockstar.mp3' 
)
# vocal_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# vocal_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# mix_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# mix_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# master_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# master_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# beat_1_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# beat_2_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# beat_3_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# vocal_1_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# vocal_2_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# mix_1_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# mix_2_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# master_1_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# master_2_song_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_4_beat_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_4_beat_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_4_beat_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_4_vocal_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_4_vocal_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_beat_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_beat_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_beat_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_mix_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_mix_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_vocal_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_5_vocal_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_beat_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_beat_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_beat_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_vocal_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_vocal_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_mix_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_mix_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_master_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# song_6_master_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

