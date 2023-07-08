<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    @include('adminpanel.css') 
    <style>
    .customer-image {
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

                <h1 class="text-center text-white">Customer List</h1>
                <div class="table-responsive">
                    <table class="table table-bordered mt-5">
                        <thead class="bg-secondary text-light text-center">
                            <tr class="text-center">
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Registered Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody style="background-color: #eaf4f4; color: #333;">
                            <tr class="text-center">
                                <td>1</td>
                                <td>John Doe</td>
                                <td>johndoe@example.com</td>
                                <td>1234567890</td>
                                <td>123 Main St, City</td>
                                <td>2023-06-01</td>
                                <td>
                                    <!-- Action buttons for customer -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>janesmith@example.com</td>
                                <td>9876543210</td>
                                <td>456 Elm St, City</td>
                                <td>2023-05-15</td>
                                <td>
                                    <!-- Action buttons for customer -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>3</td>
                                <td>Michael Johnson</td>
                                <td>michaeljohnson@example.com</td>
                                <td>5555555555</td>
                                <td>789 Oak St, City</td>
                                <td>2023-04-22</td>
                                <td>
                                    <!-- Action buttons for customer -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>4</td>
                                <td>Sarah Wilson</td>
                                <td>sarahwilson@example.com</td>
                                <td>1112223333</td>
                                <td>321 Pine St, City</td>
                                <td>2023-03-10</td>
                                <td>
                                    <!-- Action buttons for customer -->
                                    <!-- Add your action buttons here -->
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>5</td>
                                <td>Robert Davis</td>
                                <td>robertdavis@example.com</td>
                                <td>4446668888</td>
                                <td>567 Cedar St, City</td>
                                <td>2023-02-05</td>
                                <td>
                                    <!-- Action buttons for customer -->
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
