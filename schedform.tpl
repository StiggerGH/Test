   {___V1}
   <div class="container"> 
   <h1>Запись расписания</h1>
   
   <div class=row>
      <div class=col-md-12>
         <div class="modal_error">
            <!-- BEGIN e -->    
               <div class="alert alert-danger" role="alert">{e.TITLE}</div>
            <!-- END e -->    
         </div>
      </div>
   </div>     
   
   <form role="form" id="ownerform" method=post >
      <div class=row>
         <div class=col-md-4>
            <div class="form-group">
               <label>Специалист</label>
               {user}
            </div>         

            <div class="form-group">
               <label>Филиал</label>
               <select class="form-control" name="form[filial]" placeholder="Филиал">
                  <!-- BEGIN fils -->    
                  <option value="{fils.id}" {fils.SELECTED}>{fils.title}</option>
                  <!-- END fils -->    
               </select>                     
            </div> 
         </div>
         
         <div class=col-md-4>
            <div class="form-group">
               <label>Дата</label>
               <input type="date" value="{date}" class="form-control" name="form[date]">
            </div>         
         
            <div class="form-group">
            	<div class=col-md-5>
                  <select class="form-control" name="form[timefrom]">
                     <!-- BEGIN tf -->    
                     <option value="{tf.id}" {tf.selected}>{tf.title}</option>
                     <!-- END tf --> 
                  </select>                 
            	</div> 
               <div class=col-md-1>
               -
               </div>
               
            	<div class=col-md-5>
                  <select class="form-control" name="form[timeto]">
                     <!-- BEGIN tt -->    
                     <option value="{tt.id}" {tt.selected}>{tt.title}</option>
                     <!-- END tt --> 
                  </select>                 
            	</div>                 
	         </div>  
            
           	<br>
            <br>
            
            <!-- IF {id} -->
            	<input type="hidden" name="form[dperiod]" value="{dperiod}">
               
               <div class="form-group">
                  <label><input type="checkbox" name="form[toall]" value="1"> Применить для всех последующих записей серии</label>
                  
               </div>                
               
            <!-- ELSE -->
            <div class="form-group">
               <label>Повтор</label>
               <select class="form-control" name="form[dperiod]">
	               <!-- BEGIN rep -->    
		               <option value="{rep.id}" {rep.SELECTED}>{rep.title}</option>
                  <!-- END rep --> 
               </select>                     
            </div>             
            <!-- ENDIF -->
            
         </div>   
         
      </div>
      
		<div class=row>
         <div class=col-md-3>
            <div class="form-group">
               <button type=submit name="form[submit][ok]" value="1" class="btn btn-success">Сохранить</button>
               <button type=submit name="form[submit][cancel]" value="1" class="btn btn-default">Отмена</button>
            </div>   
         </div>
      </div>   
           
   </form>          

   
   </div>