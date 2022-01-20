
file_object = File.open("sample2.txt","r+")
    if file_object
      content = file_object.sysread(5)
      puts content
      content = file_object.sysread(8)
      puts content
      file_object.syswrite("Hello World")
    else
      puts "Unable to Open"
    end
file_object.close()
    