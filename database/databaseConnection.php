<?php

class DatabaseConnection{
    private $server="localhost";
    private $username="root";
    private $password="";
    private $database = "bestdecision";


    function startConnection(){ //funksioni qe e bon lidhjen me db 

        try{
            $conn = new PDO("mysql:host=$this->server;dbname=$this->database",$this->username,$this->password); // e testojme 
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);     //ne rast qe nuk funksionon lidhja, keto atribute na tregojne ku eshte prpoblemi
            return $conn;
        }catch(PDOException $e){
            echo "Database Conenction Failed".$e->getMessage();
            return null;
        }


    }
}

?>
