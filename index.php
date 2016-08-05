<?php

  $display = "";
  $thisFile = __FILE__;
  if (!file_exists('config/global_config.php')) header('Location: ../../install/install_programo.php');
  require_once ('config/global_config.php');
  require_once ('chatbot/conversation_start.php');
  $get_vars = (!empty($_GET)) ? filter_input_array(INPUT_GET) : array();
  $post_vars = (!empty($_POST)) ? filter_input_array(INPUT_POST) : array();
  $form_vars = array_merge($post_vars, $get_vars); // POST overrides and overwrites GET
  $bot_id = (!empty($form_vars['bot_id'])) ? $form_vars['bot_id'] : 1;
  $say = (!empty($form_vars['say'])) ? $form_vars['say'] : '';
  $convo_id = session_id();
  $format = (!empty($form_vars['format'])) ? $form_vars['format'] : 'html';
?>

<!DOCTYPE html>
<html>
  <head>
    <link rel="icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Tigers Club Chatbot... lol :D</title>
    <meta name="Description" content="Intelligence Engineering Bot" />
    <meta name="keywords" content="AIML, PHP, MySQL, Chatbot, Student Bot, Engineering Bot" />
    <style type="text/css">
      body {
  background-color: #fff;
  margin:80px 80px 100px 100px;
}
      #responses {
        width: 90%;
        min-width: 515px;
        height: auto;
        min-height: 150px;
        max-height: 500px;
        overflow: auto;
        border: 3px inset #666;
        border-color: #0a90ef;
        margin-left: auto;
        margin-right: auto;
        padding: 5px;
      }
      #input {
        width: 90%;
        min-width: 535px;
        margin-bottom: 15px;
        margin-left: auto;
        margin-right: auto;
      }
      #shameless_plug {
        position: absolute;
        right: 10px;
        bottom: 10px;
        border: 1px solid red;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-shadow: 2px 2px 2px 0 #808080;
        padding: 5px;
        border-radius: 5px;
      }
    

#ArticleHead {
  position:fixed;
  top:0px;
  left:0px;
  width:100%;
  color:#fff;
  background:#0a90ef;
  padding:8px;
  text-align: center;
}
#footer {
  position:fixed;
  bottom:0px;
  left:0px;
  width:100%;
  color:#fff;
  background:#3a3a3a;
  padding:8px;
}

    #say {
    padding: 1px 20px;
    border: 0;
    height: 35px;
    width: 600px;
    border-radius: 10px;
    -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    box-shadow: 1px 1px 0 0 #FFF, 5px 5px 40px 2px #BBB inset;
    -moz-box-shadow: 1px 1px 0 0 #FFF, 5px 5px 40px 2px #BBB inset;
    -webkit-box-shadow: 1px 1px 0 0 #FFF, 5px 5px 40px 2px #BBB inset;
    -webkit-background-clip: padding-box;
    outline: 0;
}
#btn_say {
  background-color: #0a90ef; /* Green */
    border: none;
    border-radius: 8px;
    color: white;
    padding: 9px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
#btn_say:hover {
    background-color: #008CBA; /* Green */
    border: none;
    border-radius: 8px;
    color: white;
    padding: 9px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

</style>
    
  <link rel="stylesheet" href="assets/css/main.css" />
  </head>
  <body onload="document.getElementById('say').focus()">
    
    <header id="ArticleHead">
            <h1>AI - Chatbot</h1>
          </header>
   <br><br><br>
    <form name="chatform" method="post" action="index.php#end" onsubmit="if(document.getElementById('say').value == '') return false;">
       
    <div id="responses">
      <?php echo $display . '<div id="end">&nbsp;</div>' . PHP_EOL ?>
    </div>
    <br>
     <div id="input">
     <!--   <label for="say">Say:</label> -->
 
      <input type="text" name="say" id="say" size="70" style="float: left;"/> 
      &nbsp;&nbsp;
      <input type="submit" name="submit" id="btn_say" value="SEND!" /> 
        <input type="hidden" name="convo_id" id="convo_id" value="<?php echo $convo_id;?>" />
        <input type="hidden" name="bot_id" id="bot_id" value="<?php echo $bot_id;?>" />
        <input type="hidden" name="format" id="format" value="<?php echo $format;?>" />
      </div>
  

    
        </form>



        <!-- Footer -->
          <footer id="footer">
            <p>&copy; 2016. All rights reserved. Design: <a href=""><font color="#1C94C6">Tigers Club</font></a>.</p>
          </footer>


    <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.poptrox.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/main.js"></script>

  </body>
</html>
