    local path = system.pathForFile( "data.db", system.DocumentsDirectory )

    -- Open the database for access
    local db = sqlite3.open( path )
    
    
    local tableSetup = [[CREATE TABLE IF NOT EXISTS test ( UserID INTEGER PRIMARY KEY );]]
    db:exec( tableSetup )
    
    local insertQuery = [[INSERT INTO test VALUES ( 2 );]]
    db:exec( insertQuery )
    
    for row in db:nrows( "SELECT * FROM test" ) do
 
    print( "Row:", row.UserID )

    -- Create sub-table at next available index of "people" table
    end
