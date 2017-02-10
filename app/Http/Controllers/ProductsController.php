<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductsController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view( 'products', ['products' => $products] );
    }

    public function add()
    {
        $products = Product::all();
        return view( 'add', ['products' => $products] );
    }

    public function addOne(Request $request)
    {
        //only create the entry if an immage has been uploaded an a title set
        if ($request->hasFile('img') && $request->titleForm ) {

            $product = new Product;

            $path = $request->img->store('/public/img/products');
            $path = str_replace("public", "storage", $path);
            
            $product->img = $path;

            $product->title = $request->titleForm;
            $product->description = str_replace("\r\n", "<br>", $request->descForm);

            $product->save();

            return redirect('/products');
        }
        $products = Product::all();
        return view( 'add', ['products' => $products, 'feedback' => 'Please choose a picture and a title'] );
    }
}
