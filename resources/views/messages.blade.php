@extends('layouts.app')

@section('title')
See messages
@endsection

@section('content')

<main id="messages">
    <div>
        <table id="messagesTable">
            <thead>
                <tr>
                    <th>Sender</th>
                    <th>Content</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($messages as $message)
                    @if ($message->read)
                        <tr id="m{{ $message->id }}">
                    @else
                        <tr class="unread" id="m{{ $message->id }}">
                    @endif
                        <td> {{ $message->sender }} </td>
                        <td> {!! $message->content !!} </td>
                        {{-- I have to use {!! insthead of {{ in order for the html to be rendred and not escaped --}}
                        @if ( !($message->read) )
                            <td><a href="{{ $message->id }}">Mark as read</a></td>
                        @else
                            <td><a href="{{ $message->id }}">Delete</a></td>
                        @endif
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</main>

@endsection
