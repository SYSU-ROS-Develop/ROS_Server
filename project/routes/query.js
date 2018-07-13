var express = require('express');
var router = express.Router();
var query_data = require("../database/query_data");


router.post('/addquery', function (req, res, next) {
	console.log(req.body);
	query_data.get_list(req.body.BookName, function(result){
		if(result[0]){
			query_data.add_book(result[0].pos_x, result[0].pos_y, function(result){
				if(result){
					res.end("任务添加成功");
				}else{
					res.end("任务添加失败");
				}
			});
		}else{
			res.end("任务添加失败");
		}
	});
});

router.get('/get_pos', function(req, res, next){
	console.log();
	query_data.get_queries(function(result){
		for (var i = 0;i < result.length ;i++ )
		{
			if(result[i].finished == 0){
				res.set('Content-Type', 'application/json');
				res.set('charset', 'utf-8');
				res.end(JSON.stringify(result[i]));
				
				query_data.update_finished(1, result[i].id, function(re){
					console.log(re);
				});
				return;
			}
		}
		res.set('Content-Type', 'application/json');
		res.set('charset', 'utf-8');
		res.end();
	});



});
module.exports = router;
