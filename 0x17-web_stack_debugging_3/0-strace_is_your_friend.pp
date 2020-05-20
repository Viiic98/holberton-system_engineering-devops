# WordPress Error
exec { 'WordPress apache2 500':
  command => 'sed -i s/.phpp/.php/g /var/www/html/wp-settings.php',
  path    => '/bin'
}
