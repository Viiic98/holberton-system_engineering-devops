# kill a program using puppet exec
exec { 'kill_program':
     provider	=> 'shell',
     command	=> "pkill killmenow",
}
