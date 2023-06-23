function getValueOfParameter(key) {
    var urlParams = new URLSearchParams(location.search);
    var value = urlParams.get(key);
    if (value == null || value == undefined) {
        value = "";
    }
    return value;
}

function callService(type, url, data, callback) {
    $.ajax({
        url : url
        , type : type
        , dataType : "json"
        , async: "true"
        , data : data ? JSON.stringify(data) : {}
        , contentType : 'application/json; charset=utf-8'
        , error : function (request, error) {
            alert(request.responseJSON.message);
            console.log("code = " + request.status);
            console.log("message = " + request.responseText);
            console.log("error = " + error);
        }
        , success: function (response) {
            return callback(response);
        }
    });
}

function parseDate(jsonDate) {
    var date = moment(jsonDate.year + '-' + jsonDate.monthValue + '-' + jsonDate.dayOfMonth + ' ' + jsonDate.hour + ':' + jsonDate.minute + ':' + jsonDate.second, 'YYYY-MM-DD HH:mm:ss')
    return date.format('YYYY-MM-DD HH:mm');
}