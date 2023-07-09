<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['product', 'image', 'price', 'quantity', 'customer', 'ordered_date', 'status'];
}
