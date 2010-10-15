function through_line(task_id) {
    Element.remove("ck_" + task_id);
    Element.update("st_" + task_id, "finished");
    $('tr_' + task_id).down('div.wrapper').className = 'line_through';
    //    $('tr_').hide();
}

function finish_task(task_id) {
    new Ajax.Request('/checked_status/change?task_id=' + task_id, {
        asynchronous:true,
        evalScripts:true,
        onSuccess: function(){
            through_line(task_id);
            $('tr_' + task_id).down("img").hide();
            Element.insert($('cont_finished'), $('tr_' + task_id));
        },
        onFailure: function() {
            alert("fail")
        }
    });
    $('tr_' + task_id).down("input[type=checkbox]").hide();
    $('tr_' + task_id).down("img").show();

}