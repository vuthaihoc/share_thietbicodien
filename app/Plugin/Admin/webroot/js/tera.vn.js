/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    
    $("a.edit_price").editable({
        type: 'text',
        url: function(params){
            var d = new $.Deferred;
            var $this = $(this);
            
            var post_params = {id: $this.attr('data-id')};
            post_params[params.name] = params.value;
            
            $.post($this.attr('data-link'), post_params, function(data){
                //console.log(data);
                if(data.success){
                    d.resolve();
                }else{
                    d.reject(data.message);
                }
            }, 'json').error(function(){
                d.reject('ERROR!!!');
            });
            return d.promise();
        },
        name: 'price',
        title: 'Edit'
    });
    
    
    
});

