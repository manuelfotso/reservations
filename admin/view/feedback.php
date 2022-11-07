<?php

 if (isset($_GET["feedback"])) {?>

     <section class="content-header">

    <h1>

        Feedbacks

    </h1>

    <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li class="active">Feedbacks</li>

    </ol>

</section>



<!-- Main content -->

<section class="content container-fluid">



<div class="box box-default">

            <div class="box-header with-border">

              <h3 class="box-title"></h3>

            </div>

              <div class="box-body">

                <table id="example2" class="table table-bordered">

                    <thead>

                    <tr>

                        <th>#</th>

                        <th>Name</th>

                        <th>Suggesstion/comment</th>

                        <th><i class="fa fa-cogs"></i></th>

                    </tr>

                    </thead>

                    <?php get_feedback($con);?>

                </table>

              </div>

          </div>



</section>

 <?php }

?>





<!--ADD-->

<?php

 if (isset($_GET["picture-adddddddddddd"])) {?>

     <section class="content-header">

    <h1>

        <a href="?pictures">Back</a>

    </h1>

    <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li class="active">Add Picture</li>

    </ol>

</section>



<!-- Main content -->

<section class="content container-fluid">



<div class="box box-default">

            <div class="box-header with-border">

              <h3 class="box-title">Add Picture</h3>

            </div>

            <form action="function/function_crud.php" method="post" enctype="multipart/form-data" class="form-horizontal">

              <div class="box-body">

                <div class="row">

                    <div class="col-md-6">

                        <div class="form-group">

                            <label class="col-sm-4 control-label">Upload Image</label>

                            <div class="col-sm-8">

                                <input type="file" accept=".jpg,.jpeg,.png" name="img" required>

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="col-sm-4 control-label">Name</label>

                            <div class="col-sm-8">

                                <input type="text" class="form-control" name="name" required>

                            </div>

                        </div>

                        <div class="form-group">

                        <label class="col-sm-4 control-label">Description</label>                       

                        <div class="col-sm-8">

                           <textarea class="form-control" rows="3" placeholder="" name="desc" required></textarea>

                         </div>

                        </div>

                        <div class="form-group">

                            <label class="col-sm-4 control-label"></label>

                            <div class="col-sm-8">

                                <button type="submit" class="btn btn-primary" name="btn-picture-add">Submit</button>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-6">



                    </div>

                </div>

              </div>

            </form>

          </div>



</section>

 <?php } ?>