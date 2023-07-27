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
    
    @foreach($orders as $order)
    <tr class="text-center">
        <td>{{ $order->id }}</td>
        <td>{{ $order->product }}</td>
        <td><img src="{{ $order->image }}" alt="{{ $order->product }}" class="product-image"></td>
        <td>${{ $order->price }}</td>
        <td>{{ $order->quantity }}</td>
        <td>{{ $order->customer }}</td>
        <td>{{ $order->ordered_date }}</td>
        <td>{{ $order->status }}</td>
        <td>
            <!-- Action buttons for order -->
            <!-- Add your action buttons here -->
        </td>
    </tr>
    @endforeach
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
