<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 30.05.18.
 * Time: 11:56
 */

session_start();
define("__APP__", true);

$id = "kontakt";
include("header.php");

echo '
<br>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d654995.1331715478!2d-0.0503611!3d-0.0202936!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMMKwMDAnMDAuMCJOIDDCsDAwJzAwLjAiRQ!5e1!3m2!1sen!2shr!4v1527675011700" width="600" height="450" frameborder="0" style="border:0" allowfullscreen class="float_left"></iframe>
<div class="float_left"><iframe width="600" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=-3.6254882812500004%2C-2.5534755929476356%2C3.6254882812500004%2C2.5534755929476485&amp;layer=mapnik&amp;marker=0%2C0"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=0.000&amp;mlon=0.000#map=8/0.000/0.000">View Larger Map</a></small></div>
<p class="float_left">Adresa: 0, 0 pokraj Afrike</p>
<div class="clear_floating"></div>
</main>
';

include("footer.php");

echo '
</body>
</html>
';