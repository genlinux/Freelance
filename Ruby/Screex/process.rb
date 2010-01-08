#Parent process any time if we call Process ie Process.pid if will return the current process pid
puts "Parent PID: #{Process.pid}"
p1 = fork { puts "Child process : #{Process.pid}"; sleep 0.1 }
p2 = fork { puts "Child process : #{Process.pid}"; sleep 0.2 }

