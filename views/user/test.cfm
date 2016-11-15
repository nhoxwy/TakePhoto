<div id="editdiv">
   <cfoutput>
      <form class="form" id="edit-form" method="post" onsubmit="return">
         <h3>CHỈNH SỬA THÔNG TIN</h3>
         <hr/>
         <div class="form-group col-sm-6 col-xs-12">
            <input type="text" class="form-control" id="ho" name="lastname" placeholder="#SESSION.lastname#">
         </div>
         <div class="form-group col-sm-6 col-xs-12">
            <input type="text" class="form-control" id="ten" name="firstname" placeholder="#SESSION.firstname#">
         </div>
         <div class="form-group col-sm-12 col-xs-12">
            <input type="text" class="form-control" id="email-reg" name="phone" minlength="10" maxlength="11" placeholder="#SESSION.phone#">
         </div>
         <div class="form-group">
            <div class="col-xs-4"><input type="text" class="form-control" id="dayOfBirth" name="dayOfBirth" placeholder="Ngày sinh"></div>
            <div class="col-xs-4">
              <select class="form-control" id="monthOfBirth" name="monthOfBirth">
                <option value="1">Tháng 1</option>
                <option value="2">Tháng 2</option>
                <option value="3">Tháng 3</option>
                <option value="4">Tháng 4</option>
                <option value="5">Tháng 5</option>
                <option value="6">Tháng 6</option>
                <option value="7">Tháng 7</option>
                <option value="8">Tháng 8</option>
                <option value="9">Tháng 9</option>
                <option value="10">Tháng 10</option>
                <option value="11">Tháng 11</option>
                <option value="12">Tháng 12</option>
              </select>
            </div>
            <div class="col-xs-4">
              <input type="text" class="form-control" id="yearOfBirth" name="yearOfBirth" placeholder="Năm sinh">
            </div>
         </div>
         <div class="form-group col-sm-12 col-xs-12">
            <hr/>
            <input type="submit" id="edit-formbtn" value="Cập nhật"/>
            <input type="button" id="cancel" value="Hủy bỏ"/>
         </div>
      </form>
   </cfoutput>
</div>