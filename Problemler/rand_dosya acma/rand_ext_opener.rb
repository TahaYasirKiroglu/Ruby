def choose_slash #dosya isimlendirmeleri için
	#Dir.pwd dosya yolunu verir
	return slash = (Dir.pwd.include? "/")?"/":"\\";
end
def ext_dir2arr (ext) #folder name array with given extension
	dir = Dir.pwd
        slash = choose_slash  
	folder_dirs = []
	Dir.glob("*.#{ext}").select do |folder|
		folder_dirs << dir + slash + folder
	end
	return folder_dirs
end
def rand_arr(arr)
	return arr.sample
end
def music_for_mado(programme_name)#programme name or way
	folders = ext_dir2arr("mp3")
	folder_name= rand_arr(folders)
	system "#{programme_name} #{folder_name}"
end


music_for_mado("cvlc")
#program kapatana kadar çalması için
#while true
#	music_for_mado("vlc")
#end
#eğer vlc yerine cvlc kullanılırsa terminalden dinlenilir
