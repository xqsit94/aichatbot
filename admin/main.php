<?php

    $noRightNav    = $template->getSection('NoRightNav');
    $logo          = $template->getSection('Logo');
    $topNav        = $template->getSection('TopNav');
    $leftNav       = $template->getSection('LeftNav');
    $main          = $template->getSection('Main');
    $rightNav      = '';
    $footer        = trim($template->getSection('Footer'));
    #$lowerScripts  = '';
    #$pageTitleInfo = '';
    $divDecoration = $template->getSection('DivDecoration');
    
    $navHeader     = $template->getSection('NavHeader');
    
    $mainTitle     = 'Home';
    $rightNavLinks = '';
    $FooterInfo    = getFooter();
    $titleSpan     = $template->getSection('TitleSpan');
    $errMsgStyle   = (!empty($msg)) ? "ShowError" : "HideError";
    $errMsgStyle   = $template->getSection($errMsgStyle);
    $mediaType     = ' media="screen"';
    $upperScripts  = '';
    $noLeftNav     = '';
    $noTopNav      = '';
    $pageTitle     = 'AI Chatbot - Main Page';
    $headerTitle   = 'Actions:';
    $mainContent   = <<<endMain
        <p>
          Welcome to AI chatbot admin area. Please
          use the links above or to the left to perform administrative tasks,
          as needed.
        </p>

endMain;

?>