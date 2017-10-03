<?php

class Database
{

    private $db_host = 'localhost';     // Database Host
    private $db_user = 'root';          // Username
    private $db_pass = '';          // Password
    private $db_name = 'star-wars';          // Database
    

    private $con = null;               // Connection object
    private $result = array();          // Results that are returned from the query


	public function getConnection(){
		if($this->con == null){
			$this->connect();
			return $this->con;
		}
		return $this->con;
	}
	
	private function connect()
	{
		if($this->con == null)
		{
			$myconn = new mysqli($this->db_host,$this->db_user,$this->db_pass);
			if($myconn)
			{
				$seldb = $myconn->select_db($this->db_name);
				if($seldb)
				{
					$this->con = $myconn;
				}
			}
		}
	}

    private function tableExists($table)
    {
	  $tablesInDb = @mysql_query('SHOW TABLES FROM '.$this->db_name.' LIKE "'.$table.'"');
	  if($tablesInDb)
	  {
		if(mysql_num_rows($tablesInDb)==1)
		{
		    return true;
		}
		else
		{
		    return false;
		}
	  }
    }

}
?>