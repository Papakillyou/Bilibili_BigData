top10byFans();
function top10byFans(){
    $.ajax({
        type: "POST",
        sync : true, //同步执行
        url : "top10/authorByFans.do",
        dataType : "JSON",
        success : function(data) {
            var s = '';
            for (var i = 0; i < data.author.length; i++){
                s += '<tr><td>' + data.author[i] + '</td><td>' + data.fans[i] + '</td></tr>';

            }
            // alert(s);
            $('#top10UpbyFans').append(s);
        }
    })
}
top10Watches();
function top10Watches(){
    $.ajax({
        type: "POST",
        sync : true, //同步执行
        url : "top10/watches.do",
        dataType : "JSON",
        success : function(data) {
            var s = '';
            for (var i = 0; i < data.title.length; i++){
                s += '<tr><td>' + data.title[i] + '</td><td>' + data.watches[i] + '</td><td>'+ data.address[i] + '</td></tr>';
            }
            // alert(s);
            $('#top10watches').append(s);
        }
    })
}