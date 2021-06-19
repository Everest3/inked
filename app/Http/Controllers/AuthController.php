<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    
    public function MyMethod(Request $request) {
        return $request->user();
    }
    
    public function register(Request $request) {
        $fields = $request->validate([
            'tipi' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed|min:6'
        ]);

        $emri= substr($fields['email'], 0, strrpos($fields['email'], '@'));
        $user = User::create([
            'emri' => $emri,
            'tipi'=>$fields['tipi'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password'])
        ]);

        $token = $user->createToken('token')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function login(Request $request) {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);
        
        $user = User::where('email', $fields['email'])->first();
        // Check email
        if(!$user){
            return response(['message' => "Email doesn't exist"],401);
        }
        //check pasword
        if(!Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'Wrong Password'
            ], 401);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }
}
