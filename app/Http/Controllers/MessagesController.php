<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use Illuminate\Support\Facades\Auth;

class MessagesController extends Controller
{
    public function index()
    {
        return view('contact');
    }

    public function send(Request $request)
    {
        if ( $request->sender && $request->content ) {
            $message = new Message;

            $message->sender = $request->sender;

            $content = "<p style='text-align:center'>Topic: " . $request->topic . "</p> ";

            $content .= $request->content;

            $message->content = $content;

            $message->save();
            
            return view('contact', ['feedback' => 'Message sent successfuly! Thank you!']);
        } else {
            return view('contact', ['feedback' => 'Please give us at least your name and a message to send!']);
        }
    }

    public function see(){
        if (Auth::check()){
            if (Auth::user()->is_admin){
                // this checks if the user is an admin

                $messages = Message::orderBy('created_at', 'desc')->get();;

                return view('messages', ['messages' => $messages]);
            }
        }
        return view('welcome');
    }

    public function markRead($id) {
        $message = Message::find($id);

        if ($message->read == 0) {

            $message->read = 1;

            $message->save();

        } else {
            Message::destroy($id);
        }
    }
}
