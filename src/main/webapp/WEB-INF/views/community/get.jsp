<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String ctx = request.getContextPath();
	pageContext.setAttribute("ctx", ctx);
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Ŀ�´�Ƽ �� ����</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- ��Ʈ��Ʈ�� CSS �߰��ϱ� -->
    <link rel="stylesheet" href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css">
  </head>
  <div class="container-fluid">
      <div class="row d-flex d-md-block flex-nowrap wrapper">
        <nav class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
          <div class="list-group border-0 card text-center text-md-left">
            <a href="./index.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="/resources/img/home.svg"><span class="d-none d-md-inline ml-1">����</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="/resources/img/user.svg"><span class="d-none d-md-inline ml-1">ȸ�� ����</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="userJoin.html" class="list-group-item" data-parent="#sidebar">ȸ������</a>
              <a href="userLogin.html" class="list-group-item" data-parent="#sidebar">�α���</a>
              <a href="userEdit.html" class="list-group-item" data-parent="#sidebar">ȸ����������</a>
              <a href="userLogout.html" class="list-group-item" data-parent="#sidebar">�α׾ƿ�</a>
            </div>
            <a href="board.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="/resources/img/board.svg"><span class="d-none d-md-inline ml-1">���� �Խ���</span>
            </a>
            <a href="qna.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="/resources/img/message.svg"><span class="d-none d-md-inline ml-1">Q & A</span>
            </a>
            <a href="#search" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="/resources/img/search.svg"><span class="d-none d-md-inline ml-1">�˻�</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color: #1c1c1c;">
                <input type="text" class="form-control" placeholder="������ �Է��ϼ���.">
              </div>
            </div>
          </div>
        </nav>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
              <h2>Ŀ�´�Ƽ �� ����</h2>
          </div>
          <p class="lead">Ŀ�´�Ƽ get</p>
          <hr>

            <div class="form-group">
              <label>EMAIL</label>
              <input type="text" class="form-control" id="userEmail" name="userEmail" value="${content.userEmail}">
            </div>
            <div class="form-group">
              <label>����</label>
              <input type="text" class="form-control" id="title" name="title" value="${content.title}">
            </div>
            <div class="form-group">
              <label>����</label>
              <textarea class="form-control" style="height: 320px" id="body" name="body">${content.body}</textarea>
            </div>
            <button data-oper='modify' class="btn btn-default">Modify</button>
            <button data-oper='list' class="btn btn-info">list</button>
            
            <form id='operForm' action="/community/modify" method="get">
            	<input type='hidden' id='id' name='id' value='<c:out value="${content.id}"/>'>
            </form>

          <footer class="text-center" style="max-width: 920px;">
            <p>Copyright �� 2018 <b>�߹���</b> All Rights Reserved.</p>
          </footer>
        </main>
      </div>
    </div>
    <!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
    <script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
    <script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		
    		var operForm = $("#operForm");
    		
    		$("button[data-oper='modify']").on("click", function(e){
    			operForm.attr("action", "/jisikdong/modify").submit();
    		});
    		
    		$("button[data-oper='list']").on("click", function(e){
    			
    			operForm.find("#id").remove();
    			operForm.attr("action", "/community/list");
    			operForm.submit();
    		});
    	});
    
    </script>
  </body>
</html>