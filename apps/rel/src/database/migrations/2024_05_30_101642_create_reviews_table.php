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
        Schema::create('reviews', function (Blueprint $table) {
            $table->id();
            $table->string('case_id')->index();
            $table->foreignId('survey_id')->constrained();
            $table->foreignId('user_id')->constrained();
            $table->foreignId('support_id')->constrained(table: 'users', indexName: 'reviews_support_id');
            $table->json('config');
            $table->timestamp('reviewed_at');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reviews');
    }
};
