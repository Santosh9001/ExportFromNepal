import os


file_list = os.listdir(".")


i = 0

while i < len(file_list):
	old_name = file_list[i]
	file_list[i] = file_list[i].replace("-", "_").lower()
	file_list[i] = file_list[i].replace(" ", "_")
	os.rename(old_name,file_list[i])
	print file_list[i]
	i += 1
	
