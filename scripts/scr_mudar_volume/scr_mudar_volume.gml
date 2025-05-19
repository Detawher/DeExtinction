function ScrptsMudarVolume(){
var value_master = global.vol_master;
var value_music = global.vol_music;
var value_soundeffect = global.vol_soundeffect;

audio_master_gain(value_master); 
audio_group_set_gain(audiogroup_music, value_music, 0);
audio_group_set_gain(audiogroup_soundeffect, value_soundeffect, 0);
}