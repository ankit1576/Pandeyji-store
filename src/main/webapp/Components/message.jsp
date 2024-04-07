<%
    String message = (String) session.getAttribute("message");
    if (message != null) {
        //printing meassage 

//   out.println(message);
%>
<div class="alert alert-success alert-dismissible fade show" style="     color: #155724;
     background-color: #43d81e9e;
     border-color: #4f7b59;
     " role="alert">
    <strong><%=message%></strong><a href="login.jsp"> Click here</a> to Login
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<%        //removing message from session after displaying
        session.removeAttribute("message");

    }
    String errorMessage = (String) session.getAttribute("error_message");
    if (errorMessage != null) {
%>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong><%= errorMessage%></strong> or <a href="login.jsp"> Login here</a>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        // Removing message from session after displaying
        session.removeAttribute("error_message");
    }

    String message1 = (String) session.getAttribute("message1");
    if (message1 != null) {
        //printing meassage 

//   out.println(message);
%>
<div class="alert alert-danger alert-dismissible fade show" style="     color: #155724;
     background-color: #d81e2f9e;
     border-color: #4f7b59;
     " role="alert">
    <strong><%=message1%></strong><a href="register.jsp"> Click here</a> to Register
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<%        //removing message from session after displaying
        session.removeAttribute("message1");
    }
    String internalMessage = (String) session.getAttribute("internalMessage");
    if (internalMessage != null) {
        //printing meassage 

//   out.println(message);
%>
<div class="alert alert-success alert-dismissible fade show" style="     color: #155724;
     border-color: #4f7b59;
     background-color: #43d81e9e;

     " role="alert">
    <strong><%=internalMessage%></strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<%        //removing message from session after displaying
        session.removeAttribute("internalMessage");

    }
%>
