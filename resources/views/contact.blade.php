@extends('layouts.app')

@section('title')
Contact us
@endsection


@section('content')
<main id="contact">
    <h1>{{ (isset($feedback)) ? $feedback : 'Want to get in touch?' }}</h1>

    <p>We realy want to hear from you</p>

    {{ Form::open(['url' => '/contact']) }}
        {{ Form::label('sender', 'What is your name?') }}
        {{ Form::text('sender', '', ['placeholder' => 'Name']) }}

        {{ Form::label('topic', 'What is this about?') }}
        {{ Form::text('topic', '', ['placeholder' => 'Topic']) }}
        
        {{ Form::textarea('content', '', ['placeholder' => 'Type what commes to mind']) }}

        {{ Form::submit("That's all?") }}
    {{ Form::close() }}

</main>
@endsection