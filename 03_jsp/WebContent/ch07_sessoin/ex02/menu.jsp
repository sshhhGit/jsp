<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- menu.jsp --%>
<h2>구매할 CD를 고르시오</h2>
<form method="post">
 <select name="item">
   <option value="안치환CD" selected="selected" >안치환CD</option>
   <option value="아이유CD" >아이유CD</option>
   <option value="임영웅CD" >임영웅CD</option>
   <option value="허각CD" >허각CD</option>
   <option value="백지영CD" >백지영CD</option>
   <option value="김범수CD" >김범수CD</option>
 </select>
 <input type="hidden" name="step" value="add">
 <input type="submit" value="선택">
</form>