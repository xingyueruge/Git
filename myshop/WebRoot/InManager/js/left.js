///start add by helw
//父级菜单的单点事件
function ParentMenuClick(obj1) {
    if (obj1 == "p1")//商务局投资项目库
        parent.document.getElementById("ifmMainDesk1").src = "InManager/user/user_list.jsp";
}
///二级菜单的单点事件
function childMenuClick(obj1) {
	

    if (obj1 == "menu1")//谋划项目commodity_list.jsp
        parent.document.getElementById("ifmMainDesk").src = "InManager/user/user_list.jsp";
    if (obj1 == "menu2")//谋划项目commodity_list.jsp
        parent.document.getElementById("ifmMainDesk").src = "InManager/type/type_list.jsp";
    if (obj1 == "menu3")//谋划项目commodity_list.jsp
        parent.document.getElementById("ifmMainDesk").src = "InManager/commodity/commodity_list.jsp";
    if (obj1 == "menu4")//谋划项目commodity_list.jsp
        parent.document.getElementById("ifmMainDesk").src = "InManager/order/order_list.jsp";
    
    
}
///end add
