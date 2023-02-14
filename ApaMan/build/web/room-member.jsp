<%-- 
    Document   : room_member
    Created on : Feb 13, 2023, 12:01:23 PM
    Author     : Laputa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Apaman</title>
        <link rel="icon" type="image/x-icon" href="assets/system/icons8-home-pulsar-color-32.png">
        <link rel="stylesheet" href="assets/bootstrap-5.2.3-dist/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

        <link rel="stylesheet" href="assets/css/common.css">
        <link rel="stylesheet" type="text/css" href="assets/css/switch-toggle-btn.css">
        <link rel="stylesheet" href="assets/css/room-member.css">
    </head>

    <body>
        <div class="toast-container position-fixed top-0 end-0 p-3">
            <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true" style="color: black">
            </div>
        </div>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Sidebar Start -->
            <%@include file="component/common/sidebar.jsp" %>
            <!-- Sidebar End -->
            <div class="content">
                <!-- Navbar Start -->
                <%@include file="component/common/navbar.jsp" %>
                <!-- Navbar End -->
                <div class="container-fluid pt-4 px-4">
                    <div class="top-side d-flex justify-content-between">
                        <div>
                            <div class="btn btn-dark-cus mb-3">
                                <a href="floor-room?floorId=${room.floorId}" class="a-none btn-dark-cus select">${room.roomName}</a></div>
                            <a class="btn btn-dark-cus mb-3 ms-3 select">
                                Members
                            </a>
                            <a href="room-we-index.html" class="btn btn-dark-cus mb-3 ms-3">
                                History of water and electricity
                            </a>       
                        </div>
                            <form action="room-member" method="post">
                            <div class="d-flex">

                                <h4 class="text-wheat">Find Roomate</h4>
                                <label class="switch ms-3">

                                    <input type="checkbox" name="findRoommate" <c:if test="${room.findRoommate}"> checked</c:if>>
                                        <span class="slider round"></span>
                                    </label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input hidden name="roomId" value="${room.roomId}">
                                    <input hidden name="submitType" value="UpdateRoom">
                                    <button class="btn btn-primary w-10" type="submit">Save</button>

                                </div>
                        </form>
                    </div>


                        <div id="cards" class="row">

                        <c:forEach items="${tenants}" var="tenant">
                            <div class="col-4 mb-4" id="tenant-infor">
                                <form action="room-member" method="post" id="update-tenant-form${tenant.tenantId}">
                                    <div class="bg-secondary-cus rounded p-2 card-staff">
                                        <div class="row px-3 pt-2">
                                            <div class="col-8 text-wheat">
                                                <input hidden name="accountId" value="${tenant.account.accountId}">
                                                <div style="line-height: 34px; font-size: 20px;">
                                                    <i class="fa-solid fa-user me-2"></i>${tenant.account.accountUsername}
                                                </div>
                                                <div class="d-flex">
                                                    <i class="fa-solid fa-lock me-2" style="line-height: 34px;"></i>
                                                    <input id="password${tenant.tenantId}" name="password" class="text-wheat w-100 border-0" style="background: transparent; line-height: 34px; font-size: 20px;" type="text" value="${tenant.account.accountPassword}" >
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="d-flex justify-content-end">
                                                    <span class="text-secondary">Active</span>
                                                </div>
                                                <div class="d-flex justify-content-end">
                                                    <label class="switch ms-3">
                                                        <input type="checkbox" name="accountAccessible" <c:if test="${tenant.account.accountAccessible}"> checked</c:if>>
                                                            <span class="slider round"></span>
                                                        </label>
                                                    </div>
                                                </div>                        
                                            </div>
                                            <hr>
                                            <div class="card-staff-header">
                                                <div>
                                                    <i class="fa-solid fa-mountain-sun me-1"></i><span><input name="tenantCountryside" id="tenantCountryside${tenant.tenantId}"
                                                                                                          class="border-0 bg-secondary-cus" type="text" value="${tenant.tenantCountryside}" placeholder="Countryside"></span>
                                            </div>
                                            <div>
                                                <i class="fa-regular fa-calendar-days me-1"></i><span><input name="tenantDob" id="tenantDob${tenant.tenantId}"
                                                                                                             class="border-0 bg-secondary-cus" type="text" value="${tenant.tenantDob}" placeholder="Date of birth"></span>
                                            </div>
                                        </div>
                                        <div class="card-staff-body">
                                            <div class="contact text-white">
                                                <div class="phone">
                                                    <i class="fa-solid fa-phone-volume me-2"></i><span><input name="tenantPhoneNumber" id="tenantPhoneNumber${tenant.tenantId}"
                                                                                                              class="border-0 bg-secondary-cus text-white w-75" type="text"
                                                                                                              value="${tenant.tenantPhoneNumber}" placeholder="Phone number"></span>
                                                </div>
                                                <div class="mt-1">
                                                    <i class="fa-solid fa-phone me-2"></i><input name="tenantParentPhone" id="tenantParentPhone${tenant.tenantId}"
                                                                                                 class="border-0 bg-secondary-cus text-white w-75" type="text"
                                                                                                 value="${tenant.tenantParentPhone}" placeholder="Parent phone number"></span>
                                                </div>
                                                <div class="mt-1">
                                                    <i class="fa-regular fa-id-card me-2"></i><span><input name="tenantCitizenIdentification" id="tenantCitizenIdentification${tenant.tenantId}"
                                                                                                           class="border-0 bg-secondary-cus text-white" type="text"
                                                                                                           value="${tenant.tenantCitizenIdentification}" placeholder="CitizenIdentification"></span>
                                                </div>
                                            </div>
                                            <div class="user mt-4">
                                                <div class="media d-flex">
                                                    <a class="circle">
                                                        <img class="avatar" src="assets/images/avatar.png" alt="">
                                                    </a>
                                                    <div class="media-body pt-2">
                                                        <input hidden name="tenantId" value="${tenant.tenantId}">
                                                        <input hidden name="roomId" value="${tenant.room.roomId}">
                                                        <h5><input class="border-0 bg-secondary-cus text-white" type="text" name="tenantName" id="tenantName${tenant.tenantId}"
                                                                   value="${tenant.tenantName}" placeholder="Name"></h5>
                                                        <div class="tags">
                                                            <c:forEach items="${vehicles}" var="vehicle">
                                                                <c:if test="${vehicle.tenant.tenantId eq tenant.tenantId}">
                                                                    <div class="tag">${vehicle.vehicleType.vehicleTypeName}</div>
                                                                </c:if>
                                                            </c:forEach>
                                                            <a class="tag a-none" onclick="GetTenantId(${tenant.tenantId},${tenant.room.roomId})" data-bs-toggle="modal"
                                                               data-bs-target="#add-vehicle">Add</a>
                                                            <a class="tag a-none" href="javascript:void(0)" data-bs-toggle="modal"
                                                               data-bs-target="#delete-vehical">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="action mt-2">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <input hidden name="submitType" value="UpdateTenant">
                                                        <button class="btn btn-primary w-100" onclick="validateTenantInfo${tenant.tenantId}();" type="button">Save</button>
                                                    </div>
                                                    <div class="col-6">
                                                        <button onclick="resetTenant${tenant.tenantId}();" class="btn btn-danger w-100" type="button">Reset</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:forEach>


                    </div>
                </div>
            </div>
        </div>

        <!-------------------------------------------MODAL-------------------------------------------->
        <%@include file="component/modal/add-vehicle.jsp"%>

        <!-------------------------------------------JS-------------------------------------------->
        <script src="assets/js/bootstrap.bundle.js"></script>
        <script src="assets/js/toast.js"></script>
        <script src="assets/js/validate.js"></script>
        <script src="assets/js/main.js"></script>

        <script>
            <c:forEach items="${tenants}" var="tenant">
                                                            function resetTenant${tenant.tenantId}() {
                                                                document.getElementById("tenantCountryside${tenant.tenantId}").value = null;
                                                                document.getElementById("tenantDob${tenant.tenantId}").value = null;
                                                                document.getElementById("tenantPhoneNumber${tenant.tenantId}").value = null;
                                                                document.getElementById("tenantParentPhone${tenant.tenantId}").value = null;
                                                                document.getElementById("tenantCitizenIdentification${tenant.tenantId}").value = null;
                                                                document.getElementById("tenantName${tenant.tenantId}").value = null;
                                                            }
            </c:forEach>
        </script>

        <script>

            const REGEX_PASSWORD_TENANT = '^[a-zA-Z0-9!@#$%^&*,.]+$';
            const REGEX_NAME_TENANT = '^[a-zA-ZÀÁÂÃÈÉÊẾÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêếìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹý, ]+$';
            const REGEX_ADDRESS_TENANT = '^[a-zA-Z0-9,. ]+$';
            const REGEX_MOBILE_TENANT = '^[0-9]{10}$';
            const REGEX_CITIZENID_TENANT = '^[0-9]{12}$';
            const REGEX_DATE_TENANT = '(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})';


            <c:forEach items="${tenants}" var="tenant">
            function validateTenantInfo${tenant.tenantId}() {
                const password = document.getElementById("password${tenant.tenantId}").value;
                const tenantCountryside = document.getElementById("tenantCountryside${tenant.tenantId}").value;
                const tenantMobile = document.getElementById("tenantPhoneNumber${tenant.tenantId}").value;
                const parentMobile = document.getElementById("tenantParentPhone${tenant.tenantId}").value;
                const tenantName = document.getElementById("tenantName${tenant.tenantId}").value;
                const tenantCitizenId = document.getElementById("tenantCitizenIdentification${tenant.tenantId}").value;

                let errorStr = '<ol>';

                if (tenantMobile !== '' && !tenantMobile.match(REGEX_MOBILE_TENANT)) {
                    errorStr += '<li>Tenant phone number invalid</li>';
                }

                if (parentMobile !== '' && !parentMobile.match(REGEX_MOBILE_TENANT)) {
                    errorStr += '<li>Parent phone number invalid</li>';
                }

                if (tenantCitizenId !== '' && !tenantCitizenId.match(REGEX_CITIZENID_TENANT)) {
                    errorStr += '<li>Tenant CitizenId invalid</li>';
                }

                if (tenantCountryside !== '' && !tenantCountryside.match(REGEX_ADDRESS_TENANT)) {
                    errorStr += '<li>Tenant countryside invalid</li>';
                }

                if (tenantName !== '' && !tenantName.match(REGEX_NAME_TENANT)) {
                    errorStr += '<li>Tenant name invalid</li>';
                }

                if (password.trim() === '') {
                    errorStr += '<li>Please enter password </li>';
                } else if (!password.match(REGEX_PASSWORD_TENANT)) {
                    errorStr += '<li>Password invalid</li>';
                }

                errorStr += '</ol>';

                if (errorStr !== '<ol></ol>') {
                    showToast("error", 'Error Validate', errorStr);
                } else {
                    
                    document.getElementById("update-tenant-form${tenant.tenantId}").submit();
                }
            }

            </c:forEach>

        </script>

        <script>
            function GetTenantId(tenantId, roomId) {
                document.getElementById("tenantIdVehicle").value = tenantId;
                document.getElementById("roomIdVehicle").value = roomId;
            }
        </script>



        <!---------------------------------------------SHOW TOAST---------------------------------------------------------->
        <script>
            const messageUpdate = '<%= session.getAttribute("messageUpdate") %>';
            if (messageUpdate !== 'null') {
                const words = messageUpdate.split("|");
                showToast(words[0], words[1], words[2]);
            }
        </script>

    </body>
    <%
            request.getSession().removeAttribute("messageUpdate");
    %>
</html>