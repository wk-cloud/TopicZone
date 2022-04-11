/* 添加好友 */
function addFriend(userBasicId,friendId,friendNickName){
    if(confirm("确定要添加 " + friendNickName + " 为好友吗?")){
        window.location.href = "http://localhost:8080/topiczone/user.do?choice=addFriend&userBasicId=" + userBasicId + "&friendId=" + friendId ;
    }
}
/* 删除好友 */
function deleteFriend(friendId,userBasicId,friendNickName) {
    if(confirm("确定要与 " + friendNickName + " 解除好友关系吗?")){
        window.location.href = "http://localhost:8080/topiczone/user.do?choice=deleteFriend&friendId=" + friendId + "&userBasicId=" + userBasicId ;
    }
}

/* 好友列表分页查询 */
function friendPage(userBasicId,pageNumber){
    window.location.href = "http://localhost:8080/topiczone/user.do?choice=friendManage&userBasicId=" + userBasicId + "&pageNumber=" + pageNumber;
}

/* 搜索结果分页查询 */
function searchPage(mode,keyword,userBasicId,pageNumber) {
    window.location.href = "http://localhost:8080/topiczone/user.do?choice=friendManage&mode=" + mode + "&keyword=" + keyword  + "&userBasicId=" + userBasicId + "&pageNumber=" + pageNumber;
}