#!/usr/bin/perl

while(<>) {
  chomp;
  ( $who, $msg ) = split /\|/;
  print <<EOT;
      <tr>
        <td class="reply">
          <div class="top"></div>
          <div class="sms">
            <b>$who</b><br>
            $msg
          </div>
          <div class="bottom"></div>
        </td>
      </tr>

EOT
}
