<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\LibriController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Public routes
// Route::resource('libra',LibriController::class);

// Route::get('/libra/search/{libri}',[LibriController::class,'search']);
// Route::get('/preferredbooks',[LibriController::class,'preferredbooks']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// Protected routes

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/libra/search/{libri}',[LibriController::class,'search']);
    Route::get('/preferredbooks/{limit?}',[LibriController::class,'preferredbooks']);
    Route::get('/readbooks/{limit?}',[LibriController::class,'readbooks']);
    Route::get('/trendingbooks/{limit?}',[LibriController::class,'trendingbooks']);
    Route::get('/archivedbooks/{limit?}',[LibriController::class,'archivedbooks']);
    Route::get('/boughtbooks/{limit?}',[LibriController::class,'boughtbooks']);
    Route::get('/randombooks/{limit?}',[LibriController::class,'randombooks']);

    Route::put('/newpreferredbook/{book_id}',[LibriController::class,'newpreferredbook']);
    Route::put('/newboughtbooks/{book_id}',[LibriController::class,'newboughtbooks']);
    Route::put('/newreadbooks/{book_id}',[LibriController::class,'newreadbooks']);
    Route::put('/newarchivedbooks/{book_id}',[LibriController::class,'newarchivedbooks']);

    Route::resource('libra',LibriController::class);
    Route::delete('/products/{id}', [ProductController::class, 'destroy']);
    Route::post('/logout', [AuthController::class, 'logout']);

});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
