<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libri extends Model
{
    protected $table = "libra";
    use HasFactory;
    protected $fillable=[
        'emer',
        'autori',
        'vleresimi',
        'pershkrimi',
        'kopertina',
        'cmimi',
        'kategoria'
    ];
    public $timestamps = false;
}
