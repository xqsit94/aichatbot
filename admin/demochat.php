<?php
  
  $bot_id = ($bot_id == 'new') ? 0 : $bot_id;
  $upperScripts  = '';
  $topNav        = $template->getSection('TopNav');
  $leftNav       = $template->getSection('LeftNav');
  $main          = $template->getSection('Main');
  $navHeader     = $template->getSection('NavHeader');
  $FooterInfo    = getFooter();
  $errMsgClass   = (!empty($msg)) ? "ShowError" : "HideError";
  $errMsgStyle   = $template->getSection($errMsgClass);
  $noLeftNav     = '';
  $noTopNav      = '';
  $noRightNav    = $template->getSection('NoRightNav');
  $headerTitle   = 'Actions:';
  $pageTitle     = 'AI Chatbot - Chat Demo';
  $mainContent   = 'This will eventually be the page for the chat demo.';
  $mainContent   = showChatFrame();
  $mainTitle     = 'Chat Demo';

  /**
   * Function showChatFrame
   *
   *
   * @return mixed|string
   */
  function showChatFrame() {
    global $template, $bot_name, $bot_id, $dbConn;
    $qs = '?bot_id=' . $bot_id;
    $sql = "select `format` from `bots` where `bot_id` = $bot_id limit 1;";
    $row = db_fetch($sql, null, __FILE__, __FUNCTION__, __LINE__);
    
        $url = '../';
    
    $url .= $qs;
    $out = $template->getSection('ChatDemo');
    $out = str_replace('[pageSource]', $url, $out);
    $out = str_replace('[format]', strtoupper($format), $out);
    return $out;
  }
?>
