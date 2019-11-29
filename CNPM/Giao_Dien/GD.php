<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Giao diện Đồ án CSDL</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css" />
  <!-- <link rel="stylesheet" href="styleDN.css" /> -->
</head>

<body>
      
        <div>
	 		<img src="av.png" style="width:100%;"
          
		</div>
    




        <div id="menutop">
                <ul>
                  <li class="dropdown">
                  	<class="dropbtn">Lọc danh sách</a>
                    <div class="dropdown-content">
                      <a href="#">Theo bộ môn</a>
                      <a href="#">Theo khóa</a>
                      <a href="#">Theo cố vấn</a>
                    </div>
                  </li>
                  <li>
                    <a href="#news">
                         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Đăng nhập</button>
                                               <!-- The Modal -->
                        <div class="modal" id="myModal">
                          <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                    
                          
                              <!-- Modal body -->
                            <div class="modal-body">
                              <div class="row">
                                <div class="col-md-10 offset-md-1">
                                  <h2 style="padding: 10px auto">Ðăng Nhập</h2> 
                                  <form class="box" action="index.html" method="post">
                                   <div class="form-group form-inline">
                                      <label for="" class="ml-5 mr-3">Tài Khoản</label>
                                      <input type="text" name="" class="form-control" />
                                   </div>
                                   <div class="form-group form-inline">
                                      <label for="" class="ml-5 mr-3">Mật Khẩu</label>
                                      <input type="text" name="" class="form-control" />
                                   </div>
                                   <div class="row"> 
                                      <div class="col-md-7 offset-md-4">
                                        <button type="submit" class="btn btn-info">Đăng Nhập</button> &nbsp; &nbsp;
                                      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                      </div>
                                      
                                    </div>
                                  </form>
                                </div>
                              </div>
                                 

                            </div>
                              
                              
                            </div>
                          </div>
                                    
                        </div>
                              
                    </a>
                  </li>


  
        <!--------------------------------->
      <div class="container">
          <table class="table table-bordered table-sm">
            <thead>
              <tr>
                <th>STT</th>
                <th>Mã lớp</th>
                <th>Tên lớp</th>
                <th>Tên ban cán sự</th>
                <th>Chức vụ</th>
                <th>SDT</th>
                <th>Email </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>DA17TT</td>
                <td>Đại học CNTT</td>
                <td>Nguyễn Hảo Duy</td>
                <td>Lớp phó văn thể</td>
                <td>123456789</td>
                <td>duyhao@gmail.com</td>
              </tr>
              <tr>
                <td>2</td>
                <td>DA17XD</td>
                <td>Đại học KTCN CTXD</td>
                <td>Nguyễn Hảo Rùi</td>
                <td>Lớp trưởng</td>
                <td>123456780</td>
                <td>haorui@gmail.com</td>
              </tr>
              <tr>
               <td>3</td>
                <td>DA17XDGT</td>
                <td>Đại học CTXDGT</td>
                <td>Nguyễn Hảo hảo</td>
                <td>Lớp phó</td>
                <td>023456789</td>
                <td>haohao@gmail.com</td>
              </tr>
            </tbody>
          </table>
		</div>
      
    
    </div>
</body>
</html>