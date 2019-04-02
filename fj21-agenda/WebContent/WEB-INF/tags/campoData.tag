<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>

<label for="${ id }">${ label }:</label>
<input id="${ id }" name="${ id }" type="date" class="form-control"/>