var mysql  = require('mysql'); 

var connection = mysql.createConnection({     
	host     : 'localhost',       
	user     : 'root',              
 	password : 'root',       
 	port: '3306',                   
 	database: 'ROS', 
}); 




get_list = function(book_name, callback){
	connection = mysql.createConnection(connection.config);
	connection.connect();
	console.log('Hello');
	connection.query('SELECT * FROM book_list WHERE BookName = ?', book_name, function (err, result) {
		if(err){
			console.log('[SELECT ERROR] - ',err.message);
			callback();
			return;
		}
		callback(result);
	});
	connection.end();
}

add_book = function (pos_x, pos_y, callback) {
	connection = mysql.createConnection(connection.config);
	connection.connect();


	connection.query('INSERT INTO `Queries` (`pos_x`, `pos_y`) VALUES(?,?)', [pos_x, pos_y], function (err, result) {
	        if(err){
 	         console.log('[INSERT ERROR] - ',err.message);
  	         callback();
			 return;
   	     	}

       		console.log('--------------------------SELECT----------------------------');
       		console.log(result);
       		console.log('------------------------------------------------------------\n\n');  
			callback(result);
	});

	connection.end();
}

update_finished = function(finished, id, callback){
	connection = mysql.createConnection(connection.config);
	connection.connect();
	connection.query('UPDATE `Queries` SET `finished`=? WHERE (`id`=?)',[finished, id], function (err, result) {
		if(err){
 			console.log('[UPDATE ERROR] - ',err.message);
			callback();
  			return;
   	    }
		console.log(result);
		callback(result);
	});
	connection.end();
}

get_queries = function(callback){
	connection = mysql.createConnection(connection.config);
	connection.connect();
	connection.query('SELECT * FROM Queries', function (err, result) {
		if(err){
 			console.log('[INSERT ERROR] - ',err.message);
			callback();
  			return;
   	    }
		console.log(result);
		callback(result);
	});
	connection.end();
}




module.exports = {
    get_queries: get_queries,
    update_finished: update_finished,
	add_book: add_book,
	get_list: get_list
}
