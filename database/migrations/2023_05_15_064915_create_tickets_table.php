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
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->string('ticket_code');

            // relationship one to many between ticket and zone 
            $table->unsignedBigInteger('zone_id');
            $table->foreign('zone_id')
                ->references('id')
                ->on('zones')
                ->onDelete('cascade');

            // relationship one to many between competition and ticket 
            $table->unsignedBigInteger('competition_id');
            $table->foreign('competition_id')
                ->references('id')
                ->on('competitions')
                ->onDelete('cascade');

            // relationship one to many between schedule and ticket 
            $table->unsignedBigInteger('schedule_id');
            $table->foreign('schedule_id')
                ->references('id')
                ->on('schedules')
                ->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tickets');
    }
};
