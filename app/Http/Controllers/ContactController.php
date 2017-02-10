<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use Illuminate\Support\Facades\Auth;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact');
    }

    public function send(Request $request)
    {
        $message = new Message;

        $message->sender = $request->sender;

        $content = "Topic: " . $request->topic . " <br> ";

        $content .= $request->content;

        $message->content = $content;

        $message->save();
        
        return view('contact', ['feedback' => 'Message sent successfuly!']);
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

        $message->read = 1;

        $message->save();
    }
}
