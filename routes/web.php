<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::post('/contact', 'ContactController@send');
Route::get('/message/{id}', 'ContactController@markRead')->middleware('auth');

Route::get('/products', 'ProductsController@index');
Route::get('/contact', 'ContactController@index');
Route::get('/messages', 'ContactController@see');

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');
