<?php
include_once "Common.php";

class Post extends Common {
    protected $pdo;

    public function __construct(\PDO $pdo) {
        $this->pdo = $pdo;
    }

    public function postEmployees($body) {
       
           $result = $this->postData("employees_tbl", $body, $this->pdo);
        if($result['code'] == 200){
          $this->logger("testthunder5", "POST", "Created a new employee");
          return $this->generateResponse($result['data'], "success", "Successfully created a new record.", $result['code']);
        }
        $this->logger("testthunder5", "POST", $result['errmsg']);
        return $this->generateResponse(null, "failed", $result['errmsg'], $result['code']);
    }
}
?>