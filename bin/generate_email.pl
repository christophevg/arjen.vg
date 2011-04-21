#!/usr/bin/perl

local $/ = "---\n";
while(<>) {
  chomp;
  ( $who, $when, $subject, @msg ) = split /\n/;
  $msg = join( "<br>\n", @msg );
  print <<EOT;
    <table>    
      <tr><th>From:</th><td>$who</td></tr>
      <tr><th>Sent:</th><td>$when</td></tr>
      <tr><th>Subject:</th><td>$subject</td></tr>
    </table>

    <hr>

    <div class="message">
      $msg
    </div>

    <br><br><hr>

EOT
}
