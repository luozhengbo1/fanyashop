$(document).ready(function(){
    $(".dianzan").on('click',dianzan);
    function dianzan(){
        var a = $(this);
        var id = $(this).attr('wdid');
        $.ajax({
            url:'/?a=dianzan',
            data:{id:id},
            success:function(res){
                if(res){
                    a.text(res);
                }
            }
        });
    }
});
