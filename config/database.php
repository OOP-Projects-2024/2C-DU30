<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=utf-8");
header("Access-Control-Allow-Methods: POST, GET, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Auth-User");
header("Access-Control-Max-Age: 3600");

if ($_SERVER['REQUEST_METHOD'] == "OPTIONS") {
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Auth-User");
    header("HTTP/1.1 200 OK");
    die();
  }


date_default_timezone_set("Asia/Manila");


define("SERVER", "localhost");
define("DBASE", "employee_management_db");
define("USER", "root");
define("PWORD", "");
define("SECRET_KEY", "gabriel"); // Your secret key
define("TOKEN_KEY", "12E1561FB866FE9D966538F2125A5");


class Connection {
    protected $connectionString = "mysql:host=" . SERVER . ";dbname=" . DBASE . ";charset=utf8";
    protected $options = [
        \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,  
        \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
        \PDO::ATTR_EMULATE_PREPARES => false
    ];

    private function verifyTokenInDatabase($username, $payload) {
        try {
            $stmt = $this->pdo->prepare("SELECT token FROM accounts_tbl WHERE username = ?");
            $stmt->execute([$username]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            if ($result && isset($result['token']) && $result['token'] === $payload) {
                return true;
            }
        } catch (\PDOException $e) {
           
        }
        return false;
    }
    

    public function connect() {
        try {
            return new \PDO($this->connectionString, USER, PWORD, $this->options);
        } catch (\PDOException $e) {
            header('HTTP/1.1 500 Internal Server Error');
            echo json_encode(["error" => $e->getMessage()]);
            exit();
        }
    }
}
?>