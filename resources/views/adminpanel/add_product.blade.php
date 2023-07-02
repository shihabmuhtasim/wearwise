<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Products</title>
    <!-- bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- custom css file -->
    <link rel="stylesheet" href="../style.css">
</head>
<body class="bg-light"> 
    <div class="container ">
        <h1 class="text-center">Insert Products</h1> 
        <!--multipart - for adding images-->
        <form action="post" method="post" enctype="multipart/form-data">  

        <!-- Product Name-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_title" class="form-label fw-bold">Product Name</label>
            <input type="text" class="form-control" id="product_title" name="product_title" aria-describedby="Product_name_help" placeholder="Enter product name" required="required" autocomplete="on">
        </div>
        
        <!-- Category select-->
        <div class="form-outline mb-2 w-30 m-auto">
        <label for="product_category" class="form-label fw-bold">Product Category</label>
            <select name="product_category" class="form-select" aria-label="Default select example">
                <option selected>Pick a category</option>
                <?php
                    $sql="SELECT * FROM categories ";
                    $res= mysqli_query($con,$sql);
                 //Q
                    while ($row = mysqli_fetch_assoc($res)){
                        $category_title=$row['category_title'];
                        $category_id=$row['category_id'];
                        echo "<option value='$category_id'>$category_title</option>";
                    }
                 ?>
            </select>
        </div>
        <!-- Appreal select-->
        <div class="form-outline mb-2 w-30 m-auto">
        <label for="product_apparel" class="form-label fw-bold">Product Apparel</label>
            <select name="product_apparel" class="form-select" aria-label="Default select example">
            <option selected>Pick an apparel</option>
                <?php
                    $sql="SELECT * FROM apparels ";
                    $res= mysqli_query($con,$sql);
                 //Q
                    while ($row = mysqli_fetch_assoc($res)){
                        $apparel_title=$row['apparel_title'];
                        $apparel_id=$row['apparel_id'];
                        echo "<option value='$apparel_id'>$apparel_title</option>";
                    }
                 ?>
            </select>
        </div>
        
        <!-- product_price-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_price" class="form-label fw-bold">Product Price</label>
            <input type="text" class="form-control" id="product_keywords" name="product_price" 
            aria-describedby="product_price_help" placeholder="Enter product Price" autocomplete="on" required="required" >
        </div>
        <!-- product_quantity-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_quantity" class="form-label fw-bold">Product Quantity</label>
            <input type="text" class="form-control" id="product_quantity" 
            name="product_quantity"  placeholder="Enter product Quantity" autocomplete="on" required="required">
        </div>
        <!-- Image-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_image" class="form-label fw-bold">Product Image</label>
            <input type="file" class="form-control" id="product_image" name="product_image" required="required">
        </div>
        <!-- Image-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_image2" class="form-label fw-bold">Product Image</label>
            <input type="file" class="form-control" id="product_image2" name="product_image2" required="required">
        </div>
        <!-- Image-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_image3" class="form-label fw-bold">Product Image</label>
            <input type="file" class="form-control" id="product_image3" name="product_image3" required="required">
        </div>
        <!-- Product Description-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_description" class="form-label fw-bold">Product Description</label>
            <input type="text" class="form-control" id="product_description" name="product_description" aria-describedby="product_description_help" placeholder="Enter product description" autocomplete="off" required="required">
        </div>
        <!-- product_keywords-->
        <div class="form-outline mb-2 w-30 m-auto">
            <label for="product_keywords" class="form-label fw-bold">Product Keywords</label>
            <input type="text" class="form-control" id="product_keywords" name="product_keywords" 
            aria-describedby="product_keywords_help" placeholder="Enter product Keywords" autocomplete="on" required="required">
        </div>
        <!-- Submit-->
        <div class="form-outline mb-4 w-50 m-auto">
            <input type="submit" class="form-control" id="product_insert" name="product_insert" class="btn btn-info" value="Launch product" >
        </div>
            
        </div>
        </form>
    </div>


    
</body>
</html>