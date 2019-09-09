# Assumes that zshrc is located at ~!!! Big assumption!!!

lines_of_code = ''
File.foreach('bruh.sh') do |line|
  lines_of_code+=line
end
# puts lines_of_code

Dir.chdir ENV['HOME']
rc_file = ''
shell_name = ''
if File.exist?('.zshrc')
  rc_file = '.zshrc'
  shell_name = 'zsh'
elsif File.exist?('.bashrc')
  rc_file = '.bashrc'
  shell_name = 'bash'
end

unless rc_file.eql? ''
  File.open(rc_file, 'a') do |f|
    f << "\n\n#{lines_of_code}"
  end
  puts "Don't forget to run `#{shell_name}` in the terminal (to restart #{shell_name} of course)!"
else
  puts 'Could not write the code, maybe the .bashrc/.zshrc couldn\'t be found?'
end
