<?php
    require_once __DIR__. '/../../autoload/autoload.php';

    if($_SESSION['admin_lv'] == 1)
    {
        $_SESSION['error'] = "Bạn không có quyền thay đổi thông tin này!";
        redirectAdmin("gioithieu");
    }

    $category = $db->fetchsql("SELECT * FROM category WHERE level=0");

    $id = intval(getInput('id'));

    $Editgioithieu = $db->fetchID("gioithieu",$id);
    if( empty($Editgioithieu))
    {
        $_SESSION['error'] = "Dữ liệu không tồn tại";
        redirectAdmin("gioithieu");
    }

    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $data =
        [
            "name" => postInput('name'),
            "slug" => to_slug(postInput("name")),
            "category_id" => postInput('category_id'),
            "price" => postInput('price'),
            "content" => postInput('content'),
            "number" => postInput('number'),
            "sale" => postInput('sale'),
            "material" => postInput('material'),
            "top" => postInput('top'),
            "mid" => postInput('mid'),
            "down" => postInput('down'),
        ];
       
        
        $error = [];
        if(postInput('name') == '')
        {
            $error['name'] = "Mời nhập đầy đủ tên";
        }
        if(postInput('category_id') == '')
        {
            $error['category_id'] = "Mời chọn tên danh mục";
        }
        if(postInput('content') == '')
        {
            $error['content'] = "Mời nhập nội dung sản phẩm";
        }
        

        //dang nhap thanh cong
        
        if(empty($error))
        {
           
                    $file_name = $_FILES['thundar']['name'];
                    $file_tmp = $_FILES['thundar']['tmp_name'];
                    $file_type = $_FILES['thundar']['type'];
                    $file_error = $_FILES['thundar']['error'];

                    if($file_error == 0)
                    {
                        $part = ROOT . "gioithieu/";
                        $data['thundar'] = $file_name;
                    }
                

            $isset = $db->fetchOne("gioithieu","name = '".$data['name']."' ");
            if(count($isset) > 0 && $Editgioithieu['name'] != $data['name'])
            {
                $_SESSION['error'] = "Tên sản phẩm đã tồn tại!";
            }
            else
            {

                $id_update = $db->update("gioithieu",$data,array("id" => $id));
              
                if($id_update>0 || $id_update2>0)
                {
                    move_uploaded_file($file_tmp, $part.$file_name);
                    $_SESSION['success'] = "Cập nhật thành công!";
                    redirectAdmin("gioithieu");
                }
                else
                {
                    $_SESSION['error'] = "Dữ liệu không đổi!";
                    redirectAdmin("gioithieu");
                }
            }
        }
    }

?>
<?php require_once __DIR__. '/../../layouts/header.php'; ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Cập nhật sản phẩm</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Sản phẩm</li>
                        </ol>

                        <div class="clearfix"></div>
                            <?php if(isset($_SESSION['error'])) :?>
                                <div class="alert alert-danger" role="alert">
                                    <?php echo $_SESSION['error'];unset($_SESSION['error']); ?>
                                </div>
                            <?php endif; ?>

                        <div class="card mb-4">

                            <form action="" method="POST" enctype="multipart/form-data">

                                <div class="form-group row">
                                    <label for="input2" class="col-sm-2 text-right">Danh mục sp</label>
                                    <div class="col-sm-8">
                                      <select class="form-control" name="category_id">
                                        <option value="">-Chọn danh mục sản phẩm-</option>
                                        <?php foreach ($category as $item): ?>
                                            <option value="<?php echo $item['id'] ?>" <?php echo $Editgioithieu['category_id'] == $item['id'] ? "selected = 'selected'" : "" ?>><?php echo $item['name'] ?></potion>
                                        <?php endforeach ?>
                                      </select>
                                      <?php if (isset($error['category_id'])): ?>
                                            <p class="text-danger"> <?php echo $error['category_id']; ?> </p>
                                      <?php endif ?>
                                     </div>
                                </div>

                                <div class="form-group row">
                                    <label for="input1" class="col-sm-2 text-right">Tên sản phẩm</label>
                                    <div class="col-sm-8">
                                      <input type="text" class="form-control" id="input1" name="name" value="<?php echo $Editgioithieu['name'] ?>">
                                      <?php if (isset($error['name'])): ?>
                                            <p class="text-danger"> <?php echo $error['name']; ?> </p>
                                      <?php endif ?>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input4" class="col-sm-2 text-right">Hình ảnh</label>
                                    <div class="col-sm-3">
                                      <input type="file" class="form-control" id="input4" name="thundar" value="">
                                      <img src="<?php echo uploads(); ?>product/<?php echo $Editgioithieu['thundar'] ?>" width="50px" height="50px">
                                      <?php if (isset($error['thundar'])): ?>
                                            <p class="text-danger"> <?php echo $error['thundar']; ?> </p>
                                      <?php endif ?>
                                    </div>
                                </div>
                                 

                                 
                                <div class="form-group row">
                                    <label for="input5" class="col-sm-2 text-right">Nội dung</label>
                                    <div class="col-sm-8">
                                      <textarea class="form-control" name="content" rows="4"><?php echo $Editgioithieu['content'] ?></textarea>
                                      <?php if (isset($error['price'])): ?>
                                            <p class="text-danger"> <?php echo $error['price']; ?> </p>
                                      <?php endif ?>
                                     </div>
                                 </div>
                                <div class="form-group row">
                                    <div class="col-sm-8 container-fluid">
                                      <button type="submit" class="btn btn-success">Lưu</button>
                                    </div>
                                </div>

                            </form>
                        </div>
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>

