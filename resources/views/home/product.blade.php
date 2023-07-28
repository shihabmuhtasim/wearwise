<section class="product_section layout_padding">
         <div class="container">
            <div class="heading_container heading_center">
               <h2>
                  Our <span>products</span>
               </h2>
            </div>
            <div class="row">
           

               @foreach($product as $products)

               <div class="col-sm-6 col-md-4 col-lg-4">
                  <div class="box">
                     <div class="option_container">
                        <div class="options">
                           <a href="{{url('product_details',$products->product_id)}}" class="option1">
                           Product Details
                           </a>
                           <form action="{{url('add_cart',$products->product_id)}}" method="Post">
                              @csrf
                              <div class="row">
                                 <div class="col-md-4">
                                    <input type="number" name="quantity" value="1" min="1" style="width: 100px">
                                 </div>
                                 <div class="col-md-4">
                                    <input type="submit" value="Add to Cart">
                                 </div>
                              </div>
                           </form>




                        </div>
                     </div>
                     <div class="img-box">
                     <img src="{{ asset('images/' . $products->image) }}" alt="">

                     </div>
                     <div class="detail-box">
                        <h5>
                           {{$products->product_title}}
                        </h5>

                        @if($products->discounted_price!=null)


                        <h6 style="color: red">
                        Discount price
                        <br>
                           ${{$products->discounted_price}}
                        </h6>

                        <h6 style="text-decoration: line-through; color: blue">
                           Price
                           <br>
                           ${{$products->price}}
                        </h6>

                        @else

                        <h6 style="color: blue">
                           Price
                           <br>
                           ${{$products->price}}
                        </h6>

                        @endif

                        
                     </div>
                  </div>
               </div>
               @endforeach
            
               <span style="padding-top: 20px;">
         

         {!!$product->withQueryString()->links('pagination::bootstrap-5')!!}     
         </span>
         </div>
      </section>