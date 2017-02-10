@extends('layouts.app')

@section('title')
Add Product
@endsection

@section('content')

<main id="add">

    <h1>{{ (isset($feedback)) ? $feedback : 'Are you here to add product?' }}</h1>


    <div id="form">

        {{ Form::open(['url' => '/products/add', 'files' => true]) }}
            <div id="formUpper">
                <div id="formLeft">
                    {{ Form::label('img', 'Image') }}
                    {{ Form::file('img') }}

                    {{ Form::label('titleForm', 'Title') }}
                    {{ Form::text('titleForm', 'Title', ['placeholder' => 'Title']) }}
                </div>

                <div id="formRight">
                    {{ Form::label('descForm', 'Description') }}
                    {{ Form::textarea('descForm', 'Description', ['placeholder' => 'Description']) }}
                </div>
            </div>

            <br>

            {{ Form::submit("Add") }}
        {{ Form::close() }}

    </div>
    <div id="wysiwyg">

        <div class="productCard" id="prod">

            <div class="base">
                <img src="/storage/img/products/chaton.jpg">
                <span id="title"></span>
            </div>

            <div class="desc desc-collapsed">
                <p></p>
            </div>
            
        </div>

    </div>

</main>

@endsection
