@extends('adminpanel/navbar')
@section('content')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- custom css file -->
    <link rel="stylesheet" href="../style.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Roboto', sans-serif;
        }
        .admin-image {
            width: 100px;
            object-fit: contain;
        }
        .button {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1rem;
        }
        .button a {
            display: block;
            margin-bottom: 1rem;
            padding: 0.75rem 1.5rem;
            border-radius: 0.25rem;
            text-transform: uppercase;
            font-size: 1.1rem; /* updated font size */
            font-weight: bold; /* updated font weight */
            letter-spacing: 0.05em;
            background-color: #007bff;
            color: #fff;
            transition: background-color 0.2s ease;
            font-family: 'Roboto', sans-serif; /* added font family */
        }
        .button a:hover {
            background-color: #0062cc;
        }
        .navbar {
            background-color: #e9ecef;
            border-bottom: 1px solid #dee2e6;
        }
        .navbar-brand {
            font-size: 1.5rem; /* updated font size */
            font-weight: bold; /* updated font weight */
            font-family: 'Roboto', sans-serif; /* added font family */
        }
        .navbar-nav .nav-link {
            font-size: 1.2rem; /* updated font size */
            font-weight: bold; /* updated font weight */
            color: #000;
            font-family: 'Roboto', sans-serif; /* added font family */
        }
        .navbar-nav .nav-link:hover {
            color: #007bff;
        }
        .heading {
            margin-top: 2rem;
        }
        .bg-light h3 {
            font-family: 'Open Sans', sans-serif;
            font-size: 1.5rem;
            font-weight: bold;
            text-align: center;
            color: black;
        }
        body{
            overflow x:hidden;
        }
    </style>


</head>
<body>
    

        <div class="bg-light">
            <h1 class="text-center fw-bold" style="color: black; font-family: 'Open Sans', sans-serif;">MANAGE WEAR WISE</h1>
            <h3 class="text-center p-2">Your business, your way!</h3>
        </div>

        <div class="row ">
            <div class="col-md-12 p-2 m-3">
                
            <!--button*2>a.nav-link.text-light.bg-info.my-1 -->
            <div class="button text-center" >

                <button><a href="index.php?insert_category" class="nav-link text-light bg-secondary my-1">Insert Categories</a></button>
                
                <button><a href="index.php?insert_apparels" class="nav-link text-light bg-secondary my-1">Insert Apparels</a></button>
                
                <button><a href="insert_product.php" class="nav-link text-light bg-secondary my-1">Insert Products</a></button>

                <button><a href="index.php?view_products" class="nav-link text-light bg-secondary my-1">View Inventory</a></button>
                <button><a href="index.php?inlisted_cat_app" class="nav-link text-light bg-secondary my-1">Used Categories & Apparels</a></button>
                <button><a href="index.php?view_categories" class="nav-link text-light bg-secondary my-1">View Categories</a></button>
                <button><a href="index.php?view_apparels" class="nav-link text-light bg-secondary my-1">View Apparels</a></button>
                <button><a href="index.php?view_customers" class="nav-link text-light bg-secondary my-1">View Customers</a></button>
                <button><a href="index.php?view_orders" class="nav-link text-light bg-secondary my-1">View Orders</a></button>
                <button><a href="index.php?admin_profile" class="nav-link text-light bg-secondary my-1">Profile</a></button>


            </div>
            </div>
        </div>

       

    
<!-- bootstrap js link-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>
</html>
@stop