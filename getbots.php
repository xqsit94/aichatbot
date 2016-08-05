<?php
  

  $time_start = microtime(true);
  $script_start = $time_start;
  $last_timestamp = $time_start;
  $thisFile = __FILE__;
  require_once ("config/global_config.php");
  //load shared files
  require_once(_LIB_PATH_ . 'PDO_functions.php');
  include_once (_LIB_PATH_ . "error_functions.php");
  include_once(_LIB_PATH_ . 'misc_functions.php');
  ini_set('error_log', _LOG_PATH_ . 'getbots.error.log');

  $dbConn = db_open();
  $sql = "select `bot_id`, `bot_name` from `$dbn`.`bots`;";
  $result = db_fetchAll($sql, null, __FILE__, __FUNCTION__, __LINE__);
  $bots = array('bots'=>array());
  foreach ($result as $row)
  {
    $bot_id = $row['bot_id'];
    $bot_name = $row['bot_name'];
    $bots['bots'][$bot_id] = $bot_name;
  }
  header('Content-type: application/json');
  $out = json_encode($bots);
  exit($out);
