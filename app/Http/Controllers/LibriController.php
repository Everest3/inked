<?php

namespace App\Http\Controllers;
use App\Models\Libri;
use Illuminate\Http\Request;

class LibriController extends Controller
{
    /**
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
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */
    public function search($name)
    {
        return Libri::where('emer', 'like', '%'.$name.'%')->get();
    }
}
