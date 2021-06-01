<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLibraTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::post('libra', function (Blueprint $table) {
            $table->id();
            $table->string('emer');
            $table->string('autori');
            $table->string('vleresimi');
            $table->string('pershkrimi');
            $table->string('kopertina');
            $table->string('cmimi');
            $table->string('kategoria');
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('libra');
    }
}
