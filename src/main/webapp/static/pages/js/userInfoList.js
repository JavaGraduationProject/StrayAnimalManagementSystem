// 删除用户
var deleteUser = function(userId) {
	
	var hdnContextPath = $("#hdnContextPath").val();
	
	swal({
		  title: "提醒",
		  text: "确认删除?",
		  type: "warning",
		  confirmButtonText: "确认!",
		  confirmButtonClass: "btn-warning",
		  showCancelButton: true,
		  cancelButtonText: "噢!等等...",
		  confirmButtonColor: "#DD6B55",  
		  closeOnConfirm: false
	}, function(isConfirm) {
		if (isConfirm) {
			App.blockUI();
			
			$.ajax({
		    	url: $("#hdnContextPath").val() + "/user/delete.action",
		    	type: "POST",
		    	async: false,
		    	data: {"userId": userId},
		    	success: function(data) {
		            if(data.status == 200 && data.msg == "OK") {
		            	App.unblockUI();
		            	SweetAlert.success("删除成功！");
		            	
		            	// 刷新jqgrid
		            	reloadUserGrid();
		            } else {
		            	App.unblockUI();
		            	console.log(JSON.stringify(data));
		            }
		    	},
		        error: function (response, ajaxOptions, thrownError) {
		        	App.unblockUI();
		        	Error.displayError(response, ajaxOptions, thrownError);                
		        }
		    });
			
		}
	});
	
}

// 重新刷新grid
var reloadUserGrid = function() {
	var jqGrid = $("#jqGridUserInfoList");  
	var hdnContextPath = $("#hdnContextPath").val();
	jqGrid.jqGrid('setGridParam',{datatype:'json'}).setGridParam({ 
		page: 1,
        url: hdnContextPath + "/user/getUserInfoList.action",
    }).trigger("reloadGrid");
}

// 重新渲染modal
function renderModal() {
	// 重新渲染ajax modal
	Common.openAjaxModal('a[name="ajaxDetailUserInfoLink"]', '#ajax-detailUserInfo-modal');
	Common.openAjaxModal('a[name="ajaxModifyUserInfoLink"]', '#ajax-modifyUserInfo-modal');
} 

// 用户对象
var UserInfoList = function () {
	
    // 用户列表
	var handleUserInfoList = function() {
    	
		var hdnContextPath = $("#hdnContextPath").val();
		
		var jqGrid = $("#jqGridUserInfoList");  
        jqGrid.jqGrid({  
            caption: "用户信息列表",  
            url: hdnContextPath + "/user/getUserInfoList.action",  
            mtype: "post",  
            styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
            datatype: "json",  
            colNames: ['ID', '用户名', '密码', '收养记录' ,'联系电话', '操作'],  
            colModel: [  
                { name: 'id', index: 'id', width: 60, sortable: false, hidden: true },  
                { name: 'username', index: 'username', width: 30, sortable: false },
                { name: 'password', index: 'password', width: 30, sortable: false },
                { name: 'record', index: 'record', width: 30, sortable: false },
                { name: 'tel', index: 'tel', width: 20, sortable: false },
                {
                	width:50, sortable: false,
			    	formatter:function(cellvalue, options, rowObject) {
			    		
			    	var userId = rowObject.id;
			    	
			    	var btnModify = '<a class="btn btn-outline blue-chambray" id="ajaxModifyUserInfoLink" name="ajaxModifyUserInfoLink" data-url="' + hdnContextPath + '/user/modifyUser.action?userId=' + rowObject.id + '" data-toggle="modal" style="padding: 1px 3px 1px 3px;">编辑</a>';
			    	
			    	var btnDelete = '<button class="btn btn-outline blue-chambray" id="" onclick=deleteUser("' + userId + '") style="padding: 1px 3px 1px 3px;">删除</button>';
			    	
			    	return btnModify + btnDelete}  // success
                }
            ],  
            viewrecords: true,  		// 定义是否要显示总记录数
            rowNum: 10,					// 在grid上显示记录条数，这个参数是要被传递到后台
//            multiselect: true,  		// 定义是否可以多选
            rownumbers: true,  			// 如果为ture则会在表格左边新增一列，显示行顺序号，从1开始递增。此列名为'rn'
//            width: 900,
            autowidth: true,  			// 如果为ture时，则当表格在首次被创建时会根据父元素比例重新调整表格宽度。如果父元素宽度改变，为了使表格宽度能够自动调整则需要实现函数：setGridWidth
            height: 500,				// 表格高度，可以是数字，像素值或者百分比
            rownumWidth: 36, 			// 如果rownumbers为true，则可以设置行号 的宽度
            pager: "#jqGridUserInfoPager",		// 分页控件的id  
            subGrid: false,				// 是否启用子表格
            gridComplete: renderModal	// grid加载完毕后重新渲染switch
        }).navGrid('#jqGridUserInfoPager', {
            edit: false,
            add: false,
            del: false,
            search: false
        });
        
  
        // 随着窗口的变化，设置jqgrid的宽度  
        $(window).bind('resize', function () {  
            var width = $('.jqGridUserInfoList_wrapper').width()*0.99;  
            jqGrid.setGridWidth(width);  
        });  
        
        // 不显示水平滚动条
        jqGrid.closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" });
        
        // 条件查询所有用户列表
        $("#searchUserListButton").click(function(){
        	debugger;
        	var searchUserInfoListForm = $("#searchUserInfoListForm");
        	jqGrid.jqGrid().setGridParam({ 
        		page: 1,
                url: hdnContextPath + "/user/getUserInfoList.action?" + searchUserInfoListForm.serialize(),
            }).trigger("reloadGrid");
        });
    }
    
    return {
        // 初始化各个函数及对象
        init: function () {

        	handleUserInfoList();
        	
        }

    };

}();


jQuery(document).ready(function() {
	UserInfoList.init();
});