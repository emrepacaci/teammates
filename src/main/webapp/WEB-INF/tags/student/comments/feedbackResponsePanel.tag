<%@ tag description="StudentComments - Feedback response" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/student/comments" prefix="comments" %>
<%@ attribute name="feedbackResponseRow" type="teammates.ui.template.ResponseRow" required="true" %>
<%@ attribute name="fsIdx" required="true" %>
<%@ attribute name="qnIdx" required="true" %>
<%@ attribute name="responseIndex" required="true" %>
<tr>
    <td><b>From:</b> ${feedbackResponseRow.giverName}
        <b>To:</b> ${feedbackResponseRow.recipientName}
    </td>
</tr>
<tr>
    <td><strong>Response:
    </strong>${feedbackResponseRow.response}
    </td>
</tr>
<tr class="active">
    <td>Comment(s):
    </td>
</tr>
<tr>
    <td>
        <ul class="list-group comments" id="responseCommentTable-${fsIdx}-${qnIdx}-${responseIndex}"
            style="${not empty feedbackResponseRow.feedbackResponseComments  ? '' : 'display:none'}">
            <c:forEach items="${feedbackResponseRow.feedbackResponseComments}" var="feedbackResponseComment" varStatus="i">
                <comments:feedbackResponseCommentPanel feedbackResponseComment="${feedbackResponseComment}"
                 fsIdx="${fsIdx}" qnIdx="${qnIdx}" responseIndex="${responseIndex}" 
                 responseCommentIndex="${i.index + 1}"/>
            </c:forEach>
        </ul>
    </td>
</tr>