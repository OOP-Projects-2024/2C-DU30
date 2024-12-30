<?php
class Delete {
    protected $pdo;

    public function __construct(\PDO $pdo) {
        $this->pdo = $pdo;
    }

    public function deleteEmployee($id) {
        try {
            $sqlString = "DELETE FROM employees_tbl WHERE id = ?";
            $sql = $this->pdo->prepare($sqlString);
            $sql->execute([$id]);

            return ["data" => null, "code" => 200];
        } catch (\PDOException $e) {
            return ["errmsg" => $e->getMessage(), "code" => 400];
        }
    }

    public function deleteAccount($id) {
        try {
            $sqlString = "UPDATE accounts_tbl SET is_deleted = 1 WHERE id = ?";
            $sql = $this->pdo->prepare($sqlString);
            $sql->execute([$id]);

            return ["data" => null, "code" => 200];
        } catch (\PDOException $e) {
            return ["errmsg" => $e->getMessage(), "code" => 400];
        }
    }
}
