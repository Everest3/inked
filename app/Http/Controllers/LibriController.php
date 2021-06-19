<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\User;
use App\Models\Libri;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class LibriController extends Controller
{
    /**
     * testestetsetsetsetset
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            return Libri::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'emer'=>'required',
            'autori'=>'required',
            "vleresimi"=> "required",
            "pershkrimi"=> "required",
            "cmimi"=> "required",
        ]);
        return Libri::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Libri::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $libri = Libri::find($id);
        $libri->update($request->all());
        return $libri;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Libri::destroy($id);
    }

         /**
     * Search for a book
     *
     * @return \Illuminate\Http\Response
     */
    public function preferredbooks($limit=NULL){ 
    $limitQuery='';
    if($limit!=NULL){
        $limitQuery='LIMIT '.$limit;
    }
    
    $user_id = Auth::user()->id;
        return DB::select(DB::raw("SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA,L.KATEGORIA FROM `libra_te_preferuar` LP JOIN USERS U ON U.ID=LP.USER_ID
        JOIN LIBRA L ON L.ID=LP.LIBRA_ID WHERE U.ID=$user_id order by LP.ID DESC $limitQuery"));
    }

    public function readbooks($limit=NULL){ 
    $limitQuery='';
    if($limit!=NULL){
        $limitQuery='LIMIT '.$limit;
    }

    $user_id = Auth::user()->id;
        return DB::select(DB::raw("SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA,L.KATEGORIA FROM `libra_te_lexuar` LL JOIN USERS U ON U.ID=LL.USER_ID
        JOIN LIBRA L ON L.ID=LL.LIBRA_ID WHERE U.ID=$user_id order by LL.ID DESC $limitQuery"));
    }
    
    public function trendingbooks($limit=NULL){ 
        $limitQuery='';
        if($limit!=NULL){
            $limitQuery='LIMIT '.$limit;
        }
        return DB::select(DB::raw("SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA,L.KATEGORIA FROM LIBRA L WHERE L.VLERESIMI>8 $limitQuery"));
    }

    public function archivedbooks($limit=NULL){ 
        $limitQuery='';
        if($limit!=NULL){
            $limitQuery='LIMIT '.$limit;
        }
        $user_id = Auth::user()->id;
        return DB::select(DB::raw("SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA,L.KATEGORIA FROM `libra_te_arkivuar` LL JOIN USERS U ON U.ID=LL.USER_ID
        JOIN LIBRA L ON L.ID=LL.LIBRA_ID WHERE U.ID=$user_id order by LL.ID DESC $limitQuery"));
    }

    public function boughtbooks($limit=NULL){ 
        $limitQuery='';
        if($limit!=NULL){
            $limitQuery='LIMIT '.$limit;
        }
        $user_id = Auth::user()->id;
        return DB::select(DB::raw("SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA,L.KATEGORIA FROM `libra_te_blere` LL JOIN USERS U ON U.ID=LL.USER_ID
        JOIN LIBRA L ON L.ID=LL.LIBRA_ID WHERE U.ID=$user_id order by LL.ID DESC $limitQuery"));
    }

    public function randombooks($limit=NULL){ 
        $limitQuery='';
        if($limit!=NULL){
            $limitQuery='LIMIT '.$limit;
        }
        return DB::select(DB::raw("SELECT * FROM libra ORDER BY RAND() $limitQuery"));
    }
    public function newpreferredbook($book_id)
    {
        $user_id = Auth::user()->id;
        $checkDuplicate= DB::select(DB::raw("SELECT ID FROM `libra_te_preferuar` WHERE LIBRA_ID=$book_id"));
        if(empty($checkDuplicate)){
            return DB::insert(DB::raw("INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES ($book_id,$user_id)"));

        }else{
            return response([
                'message' => 'Book already in the chosen category!'
            ], 401);
        }

    }

    
    public function newboughtbooks($book_id)
    {
        $user_id = Auth::user()->id;
        $checkDuplicate= DB::select(DB::raw("SELECT ID FROM `libra_te_blere` WHERE LIBRA_ID=$book_id"));
        if(empty($checkDuplicate)){
            return DB::insert(DB::raw("INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES ($book_id,$user_id)"));

        }else{
            return response([
                'message' => 'Book already in the chosen category!'
            ], 401);
        }

    }
    public function newreadbooks($book_id)
    {
        $user_id = Auth::user()->id;
        $checkDuplicate= DB::select(DB::raw("SELECT ID FROM `libra_te_lexuar` WHERE LIBRA_ID=$book_id"));
        if(empty($checkDuplicate)){
            return DB::insert(DB::raw("INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES ($book_id,$user_id)"));

        }else{
            return response([
                'message' => 'Book already in the chosen category!'
            ], 401);
        }

    }
    
    public function newarchivedbooks($book_id)
    {
        $user_id = Auth::user()->id;
        $checkDuplicate= DB::select(DB::raw("SELECT ID FROM `libra_te_arkivuar` WHERE LIBRA_ID=$book_id"));
        if(empty($checkDuplicate)){
            return DB::insert(DB::raw("INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES ($book_id,$user_id)"));

        }else{
            return response([
                'message' => 'Book already in the chosen category!'
            ], 401);
        }

    }
    

    public function search($name)
    {
        return Libri::where('emer', 'like', '%'.$name.'%')->get();
    }

         /**
     * Search for a book
     *
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */

}
