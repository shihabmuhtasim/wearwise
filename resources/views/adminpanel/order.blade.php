<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    @include('adminpanel.css') 
    <style>
    .product-image {
        width: 100px!important;
        height: 100px!important;
        object-fit: contain!important;
        border-radius: 5px!important;
    }
    </style>
</head>
<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('adminpanel.sidebar')    
        <!-- partial -->
        <!-- partial:partials/_navbar.html -->
        @include('adminpanel.header')  
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">

                @if(session()->has('message'))
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                    {{ session()->get('message') }}
                </div>
                @endif

                <h1 class="text-center text-white">Order List</h1>
                <div class="table-responsive">
                    <table class="table table-bordered mt-5">
                        <thead class="bg-secondary text-light text-center">
                            <tr class="text-center">
                                <th>ID</th>
                                <th>Product</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Customer</th>
                                <th>Ordered Date</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody style="background-color: #eaf4f4; color: #333;">
                            <tr class="text-center">
                                <td>1</td>
                                <td>Product A</td>
                                <td><img src="product_a.jpg" alt="Product A" class="product-image"></td>
                                <td>$10</td>
                                <td>2</td>
                                <td>John Doe</td>
                                <td>2023-07-01</td>
                                <td>Delivered</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>2</td>
                                <td>Product B</td>
                                <td><img src="product_b.jpg" alt="Product B" class="product-image"></td>
                                <td>$15</td>
                                <td>1</td>
                                <td>Jane Smith</td>
                                <td>2023-06-25</td>
                                <td>Shipped</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>3</td>
                                <td>Product C</td>
                                <td><img src="product_c.jpg" alt="Product C" class="product-image"></td>
                                <td>$20</td>
                                <td>3</td>
                                <td>Michael Johnson</td>
                                <td>2023-06-20</td>
                                <td>Processing</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>4</td>
                                <td>Product D</td>
                                <td><img src="product_d.jpg" alt="Product D" class="product-image"></td>
                                <td>$12</td>
                                <td>1</td>
                                <td>Sarah Wilson</td>
                                <td>2023-06-15</td>
                                <td>Delivered</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>5</td>
                                <td>Product E</td>
                                <td><img src="product_e.jpg" alt="Product E" class="product-image"></td>
                                <td>$18</td>
                                <td>2</td>
                                <td>Robert Davis</td>
                                <td>2023-06-10</td>
                                <td>Shipped</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>6</td>
                                <td>Product F</td>
                                <td><img src="product_f.jpg" alt="Product F" class="product-image"></td>
                                <td>$25</td>
                                <td>1</td>
                                <td>Lisa Johnson</td>
                                <td>2023-06-05</td>
                                <td>Processing</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>7</td>
                                <td>Product G</td>
                                <td><img src="product_g.jpg" alt="Product G" class="product-image"></td>
                                <td>$22</td>
                                <td>3</td>
                                <td>David Wilson</td>
                                <td>2023-06-01</td>
                                <td>Delivered</td>
                                <td>
                                    <!-- Action buttons for order -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- container-scroller -->
    @include('adminpanel.script')
</body>
</html>
