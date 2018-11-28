var initTool = {
    /*初始化控件*/
    init: function() {
        this.initDataGrid();
    },
    initDataGrid: function() {
        var ddlAnnualPlan = document.getElementById("ddlAnnualPlan").options[document.getElementById("ddlAnnualPlan").selectedIndex].value;
        var ddlSuoShuDiShi = document.getElementById("ddlSuoShuDiShi").options[document.getElementById("ddlSuoShuDiShi").selectedIndex].value;
        var DropDownList1 = document.getElementById("DropDownList1").options[document.getElementById("DropDownList1").selectedIndex].value;
        var ddlProject_Type = document.getElementById("ddlProject_Type").options[document.getElementById("ddlProject_Type").selectedIndex].value;
        $('#tt').datagrid({
        title: '储备项目列表',
            width: document.body.clientWidth,
            height: 350,
            nowrap: true,
            striped: true,
            collapsible: false,
            url: '../../handlers/ProjectReserveStat.ashx?Method=initDataGrid&tdProjectName=' + encodeURI($("#tdProjectName").val()) + "&ddlAnnualPlan=" + ddlAnnualPlan + "&ddlSuoShuDiShi=" + encodeURI(ddlSuoShuDiShi) + "&DropDownList1=" + encodeURI(DropDownList1) + "&ddlProject_Type=" + encodeURI(ddlProject_Type),

            frozenColumns: [[
	                { field: 'sourcerefenceId', checkbox: true },
	                { title: '项目名称', field: 'Project_Name', width: 100 },
	                { title: '建设地点', field: 'Build_Location', width: 100 },
	                { title: '建设规模', field: 'Build_Scope', width: 100 },
	                { title: '建设内容', field: 'Build_Content', width: 100 },
	                { title: '项目建设意义', field: 'XiangMuJianSheYY', width: 100 },
	                { title: '总投资估算', field: 'Plan_TotalSum', width: 100 }
				]],
            columns: [[
			        { title: '投资来源', colspan: 5 },
					{ field: 'MuQianYiTouRZJ', title: '目前已投入资金', width: 100, align: 'center', rowspan: 2 },
					{ field: 'Plan_Year', title: '储备年度', width: 100, align: 'center', rowspan: 2 },
					{ field: 'QianQiGongZuoJZCD', title: '前期工作进展情况', width: 100, align: 'center', rowspan: 2 },
					{ field: 'TuDiYuShenQK', title: '土地预审情况', width: 100, align: 'center', rowspan: 2 },
					{ field: 'GuiHuaYuShenQK', title: '规划预审情况', width: 100, align: 'center', rowspan: 2 },
					{ field: 'HuanPingQingKuang', title: '环评情况', width: 100, align: 'center', rowspan: 2 },
					{ field: 'Project_Type', title: '所属行业', width: 100, align: 'center', rowspan: 2 }
				], [
					{ field: 'GuoJiaTouZi', title: '国家', width: 100 },
					{ field: 'ShengTouZi', title: '省', width: 100 },
					{ field: 'DiShiTouZi', title: '地市', width: 100  },
					{ field: 'ZiChouZiJin', title: '自筹', width: 100},
					{ field: 'QiTaLaiYuanZJ', title: '其他', width: 100}
				]],
            pagination: true,
            rownumbers: true
        });

    }
}
