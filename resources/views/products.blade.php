@extends('layouts.app')

@section('title')
Products
@endsection

@section('content')

<main id="products">

    <h1>Here's what we sell</h1>
    <hr>
    <div id="productsList">

        @foreach ($products as $product)
            <div class="productCard" id="prod{{ $product->id }}">

                <div class="base">
                    <img src="/{{ $product->img }}" alt="{{ $product->title }}">
                    <span>{{ $product->title }}</span>
                </div>

                <div class="desc desc-collapsed">
                    <p>{!! $product->description !!}</p>
                </div>
                
            </div>
        @endforeach

    </div>

    <br>
    <br>

</main>

@endsection
