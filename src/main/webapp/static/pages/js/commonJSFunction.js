var Common = function () {
	
    return {
        // 初始化各个函数及对象
        init: function () {

        },
        
        strIsNotEmpty: function(str) {
        	if (str != null && str != undefined && str != '') { 
        		return true;
        	}
        	return false;
        },
        
        
        // 时间戳转换成指定日期格式
        formatTime: function(time, format) {
	    	var t = new Date(time);
    	    var tf = function(i){return (i < 10 ? '0' : '') + i};
    	    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
    	        switch(a){
    	            case 'yyyy':
    	                return tf(t.getFullYear());
    	                break;
    	            case 'MM':
    	                return tf(t.getMonth() + 1);
    	                break;
    	            case 'mm':
    	                return tf(t.getMinutes());
    	                break;
    	            case 'dd':
    	                return tf(t.getDate());
    	                break;
    	            case 'HH':
    	                return tf(t.getHours());
    	                break;
    	            case 'ss':
    	                return tf(t.getSeconds());
    	                break;
    	        }
    	    })
	    },
        
	 	// 根据性别类型，获取性别
        getSexValue: function(sexType) {
        	
            if (sexType == "0") {
    			return "女"
    		} else if (sexType == "1") {
    			return "男"
    		}
    		
    		return "保密";
	    },
	    
	    // 根据用户状态类型，获取用户状态
	    getUserStatusValue: function(userType) {
        	
            if (userType == "0") {
    			return "未激活";
    		} else if (userType == "1") {
    			return "已激活";
    		} else if (userType == "2") {
    			return "已冻结";
    		} else if (userType == "3") {
    			return "已封号";
    		}
    		
    		return "";
	    },
	    
	    // 打开url，判断并且拼接
	    openUrl: function(url) {
	    	if (url.indexOf("http") != 0) {
	    		window.open("http://" + url);
	    	} else {
	    		window.open(url);
	    	}
	    },
	    
	    // 重新渲染modal异步加载
	    openAjaxModal: function(trigger, ajaxModal) {
	        
	        // general settings
	        $.fn.modal.defaults.spinner = $.fn.modalmanager.defaults.spinner = 
	          '<div class="loading-spinner" style="width: 200px; margin-left: -100px;">' +
	            '<div class="progress progress-striped active">' +
	              '<div class="progress-bar" style="width: 100%;"></div>' +
	            '</div>' +
	          '</div>';

	        $.fn.modalmanager.defaults.resize = true;

	        //ajax demo:
	        var $modal = $(ajaxModal);

	        $(trigger).on('click', function(){
	          // create the backdrop and wait for next modal to be triggered
	        	$('body').modalmanager('loading');
	        	var el = $(this);

	        	$modal.load(el.attr('data-url'), '', function(responseTxt,statusTxt,xhr){
	        		if (statusTxt == 'success') {
	        			$modal.modal();
	        			
	        		} else if (statusTxt == 'error') {
	        			SweetAlert.error("加载出错, 请联系管理员...");
	        		} else {
	        			SweetAlert.error("发送未知错误, 请联系管理员...");
	        		}
	        		
	        	});
	        });

	    },
	    
	    // 数字从0-9的排序
	    getCarouselValueWithStyle: function(value) {
	    	if (value == "0") {
    			return '<span class="bg-green-jungle bg-font-green-jungle" style="padding: 5px; ">  0  </span>';
    		} else if (value == "1") {
    			return '<span class="bg-green-jungle bg-font-green-jungle" style="padding: 5px; ">  1  </span>';
    		} else if (value == "2") {
    			return '<span class="bg-green-turquoise bg-font-green-turquoise" style="padding: 5px; ">  2  </span>';
    		} else if (value == "3") {
    			return '<span class="bg-green-haze bg-font-green-haze" style="padding: 5px; ">  3  </span>';
    		} else if (value == "4") {
    			return '<span class="bg-green-seagreen bg-font-green-seagreen" style="padding: 5px; ">  4  </span>';
    		} else if (value == "5") {
    			return '<span class="bg-green-soft bg-font-green-soft" style="padding: 5px; ">  5  </span>';
    		} else if (value == "6") {
    			return '<span class="bg-green-dark bg-font-green-dark" style="padding: 5px; ">  6  </span>';
    		} else if (value == "7") {
    			return '<span class="bg-green-sharp bg-font-green-sharp" style="padding: 5px; ">  7  </span>';
    		} else if (value == "8") {
    			return '<span class="bg-green-steel bg-font-green-steel" style="padding: 5px; ">  8  </span>';
    		} else if (value == "9") {
    			return '<span class="bg-green bg-font-green" style="padding: 5px; ">  9  </span>';
    		}
    		
    		return value; 
	    }
	    
    };

}();

jQuery(document).ready(function() {
	Common.init();
});