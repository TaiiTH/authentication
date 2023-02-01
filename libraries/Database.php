<?php
class Database {
    public $db;
    public function __construct()
    {
        $this->db = $this->dbconector();
    }
    
    function dbconector()
    {
        //Kết nối tới database
        $hostname = "localhost";
        $username = "root";
        $password = "";
        $database = "userdb";
    
        $conn = mysqli_connect("$hostname", "$username", "$password", "$database") or die("Connetion Error !!!");
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        return $conn;
    }

    public function insertDB($table, $column = [], $valuecol = [])
    {
        // mysqli_query(connectDB(), "INSERT INTO users(`user_name`, `birthday`, `email`, `password`) VALUES ('$user_name', '$birthday', '$email', '$password')");
        $sql = "INSERT INTO {$table}(";

        $i = 0;
        foreach($column as $value) 
        {
            $i++;
            $sql .= "`{$value}`";
            if($i < count($column)) {
                $sql .= ", ";
            }
            if($i == count($column)) {
                $sql .= ")";
            }
        }

        $j = 0;
        $sql .= " VALUES (";
        foreach($valuecol as $value)
        {
            $j++;
            $sql .= "'{$value}'";
            if($j < count($valuecol)) {
                $sql .= ", ";
            }
            if($j == count($valuecol)) {
                $sql .= ")";
            }
        }
        $qry = mysqli_query($this->db, $sql);
        return $qry;
    }

    /**
     * $where = [
     *  "users" => "",
     *  "email" => "",
     *];
    */
    public function selectDB($table, $where = [])
    {
        // mysqli_query(connectDB(), "SELECT * FROM users WHERE email='$email' AND password='$password'") or die("Email or password incorrect !!");
        $sql = "SELECT * FROM {$table} ";

        if ($where) {
            $sql .= "WHERE ";
            $i = 0;
            foreach($where as $key => $value) 
            {
                $i++;
                $sql .= "{$key} = '{$value}' ";
                if($i < count($where)) {
                    $sql .= " AND ";
                }
    
            }
        }

        $qry = mysqli_query($this->db, $sql);
        if (mysqli_num_rows($qry)) 
        {
            $row = mysqli_fetch_all($qry,MYSQLI_ASSOC);
            return $row;
        }
        return false;
    }

    public function updateDB($table, $set = [], $where = [])
    {
        // mysqli_query(connectDB(), "UPDATE `users` SET user_name='$user_name', birthday='$birthday' WHERE id='$id'") or die("Update failed !!");
        $sql = "UPDATE {$table} SET ";

        $i = 0;
        foreach($set as $key => $value) 
        {
            $i++;
            $sql .= "{$key} = '{$value}'";
            if($i < count($set)) {
                $sql .= ", ";
            }

        }

        $j = 0;
        $sql .= " WHERE ";
        foreach($where as $key => $value)
        {
            $j++;
            $sql .= "{$key} = '{$value}'";
            if($j < count($where)) {
                $sql .= " AND ";
            }
        }

        mysqli_query($this->db, $sql);
    }
}