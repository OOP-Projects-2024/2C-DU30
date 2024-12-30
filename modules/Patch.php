<?php
class Patch {
    protected $pdo;

    public function __construct(\PDO $pdo) {
        $this->pdo = $pdo;
    }

    public function updateEmployee($body, $id) {
        try {
            $sqlString = "UPDATE employees_tbl SET fname = ?, lname = ?, role_id = ? WHERE id = ?";
            $stmt = $this->pdo->prepare($sqlString);
            $stmt->execute([$body->fname, $body->lname, $body->role_id, $id]);

            return ["data" => null, "code" => 200];
        } catch (\PDOException $e) {
            return ["errmsg" => $e->getMessage(), "code" => 400];
        }
    }

    public function archiveEmployee($id) {
        try {
            $sqlString = "UPDATE employees_tbl SET is_deleted = 1 WHERE id = ?";
            $stmt = $this->pdo->prepare($sqlString);
            $stmt->execute([$id]);

            return ["data" => null, "code" => 200];
        } catch (\PDOException $e) {
            return ["errmsg" => $e->getMessage(), "code" => 400];
        }
    }
}
