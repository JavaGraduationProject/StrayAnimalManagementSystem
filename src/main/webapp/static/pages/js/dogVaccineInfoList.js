// 重新刷新grid
var reloadDogVaccineGrid = function() {
	var jqGrid = $("#jqGridDogVaccineInfoList");  
	var hdnContextPath = $("#hdnContextPath").val();
	jqGrid.jqGrid('setGridParam',{datatype:'json'}).setGridParam({ 
		page: 1,
        url: hdnContextPath + "/vaccine/getDogVaccineInfoList.action",
    }).trigger("reloadGrid");
}

// 重新渲染modal
function renderModal() {
	// 重新渲染ajax modal
	Common.openAjaxModal('a[name="ajaxModifyDogVaccineInfoLink"]', '#ajax-modifyDogVaccineInfo-modal');
} 

var DogVaccineInfoList = function () {
	
	var handleDogVaccineInfoList = function() {
    	debugger;
		var hdnContextPath = $("#hdnContextPath").val();
		
		var jqGrid = $("#jqGridDogVaccineInfoList");  
        jqGrid.jqGrid({  
            caption: "接种信息列表",  
            url: hdnContextPath + "/vaccine/getDogVaccineInfoList.action",  
            mtype: "post",  
            styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
            datatype: "json",  
            colNames: ['ID', '流浪狗名', '品种', '性别','年龄', '接种疫苗名' ],  
            colModel: [  
                { name: 'id', index: 'id', width: 60, sortable: false, hidden: true },  
                { name: 'dogName', index: 'dogName', width: 20, sortable: false },
                { name: 'dogKind', index: 'dogKind', width: 20, sortable: false },
                { name: 'dogSex', index: 'dogSex', width: 20, sortable: false },
                { name: 'dogAge', index: 'dogAge', width: 20, sortable: false },
                { name: 'dogVaccineName', index: 'dogVaccineName', width: 60, sortable: false }
                 
            ],  
            viewrecords: true,  		// 定义是否要显示总记录数
            rowNum: 10,					// 在grid上显示记录条数，这个参数是要被传递到后台
//            multiselect: true,  		// 定义是否可以多选
            rownumbers: true,  			// 如果为ture则会在表格左边新增一列，显示行顺序号，从1开始递增。此列名为'rn'
//            width: 900,
            autowidth: true,  			// 如果为ture时，则当表格在首次被创建时会根据父元素比例重新调整表格宽度。如果父元素宽度改变，为了使表格宽度能够自动调整则需要实现函数：setGridWidth
            height: 500,				// 表格高度，可以是数字，像素值或者百分比
            rownumWidth: 36, 			// 如果rownumbers为true，则可以设置行号 的宽度
            pager: "#jqGridDogVaccineInfoPager",		// 分页控件的id  
            subGrid: false,				// 是否启用子表格
            gridComplete: renderModal	// grid加载完毕后重新渲染switch
        }).navGrid('#jqGridDogVaccineInfoPager', {
            edit: false,
            add: false,
            del: false,
            search: false
        });
        
  
        // 随着窗口的变化，设置jqgrid的宽度  
        $(window).bind('resize', function () {  
            var width = $('.jqGridDogVaccineInfoList_wrapper').width()*0.99;  
            jqGrid.setGridWidth(width);  
        });  
        
        // 不显示水平滚动条
        jqGrid.closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" });
        
        
    }
    
    return {
        // 初始化各个函数及对象
        init: function () {

        	handleDogVaccineInfoList();
        	
        }

    };

}();

jQuery(document).ready(function() {
	DogVaccineInfoList.init();
});
