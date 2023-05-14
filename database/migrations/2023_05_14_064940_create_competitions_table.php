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
        Schema::create('competitions', function (Blueprint $table) {
            $table->id();
            $table->string('matching_team');
            
            // one to many relationships between event and competition
            $table->unsignedBigInteger('event_id');
            $table->foreign('event_id')
                ->references('id')
                ->on('events')
                ->onDelete('cascade');

            $table->unsignedBigInteger('stadium_id');
            $table->foreign('stadium_id')
                ->references('id')
                ->on('stadiums')
                ->onDelete('cascade');

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
        Schema::dropIfExists('competitions');
    }
};
