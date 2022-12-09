<?php
   
    // variable name is $result because that's what the app is expecting
    // $result is an array
    // pdo reference came from trevor's class files, thanks Trevor. I will put my reference  github link on here and my readme.md
    // https://github.com/Trevor-FanshaweC/learningNPM_F21
    $result = array();
    

    // if a user passes an ID via a query string (?id=1)
    // then we should retrieve the row of data that matches and pass it back to the app
    function getData($conn, $project) {
        if (is_null($project)){
            $query = "SELECT * FROM tbl_portfolio";
        } else{
            $query = "SELECT * FROM tbl_portfolio";
            }
                    
        // this is the database result -> the raw data that SQL gives us
        $runQuery = $conn->query($query);    

        // process our DB result and make something we can use with AJAX
        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
         $result[] = $row;
        }

        return $result;
    }