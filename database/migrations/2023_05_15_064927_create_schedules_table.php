<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('schedules', function (Blueprint $table) {
            $table->id();
            $table->dateTime('date_time');

            // one to one between ticket and schedule
            $table->unsignedBigInteger('ticket_id');
            $table->foreign('ticket_id')
                ->references('id')
                ->on('tickets')
                ->onDelete('cascade');

            //one to one between competition and schedule
            $table->unsignedBigInteger('competition_id');
            $table->foreign('competition_id')
                ->references('id')
                ->on('competitions')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('schedules');
    }
};
