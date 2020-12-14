

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
user_kanye = User.create(name: "Kanye", username: "ye")  

album_1 = Album.create(title: "Project 1", user: user_tim, genre: "hip-hop")

song_1 = Song.create(title: "Track 1", placement: 1, phase: 6, album: album_1)




ref_img_1 = RefImg.create(title: "Kanye", img_url: "https://esdevlin.com/files/kanye-west/_largeImage/EDN_KANYE_GLOW_08A_170915_160256.jpg", song: song_1, user: user_tim, selected: false)

ref_img_2 = RefImg.create(title: "Kanye_CD", img_url: "https://www.nme.com/wp-content/uploads/2019/02/Kanye.jpg", song: song_1, user: user_tim, selected: false)





ref_song_1 = RefSong.create(title: "Stronger", song_url: "https://www.youtube.com/watch?v=PsO6ZnUZI0g&ab_channel=KanyeWestVEVO", song: song_1, user: user_tim, selected: false)





song_2 = Song.create(title: "Track 2", placement: 2, phase: 1, album: album_1)

song_3 = Song.create(title: "Track 3", placement: 3, phase: 3, album: album_1)



# beat_1.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# beat_2.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

# beat_3.audio_data.attach(
#     io: File.open('app/audio/rockstar.mp3'),
#     filename: 'rockstar.mp3' 
# )

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

