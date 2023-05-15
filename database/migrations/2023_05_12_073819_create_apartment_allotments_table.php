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
        Schema::create('apartment_allotments', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('apartment_id');
            $table->foreign('apartment_id')->references('id')->on('project_appartments')->onDelete('cascade');
            $table->string('application_no')->nullable();
            $table->string('unit_refernece')->nullable();
            $table->string('per_name')->nullable();
            $table->string('per_guardian_name')->nullable();
            $table->bigInteger('per_cnic')->nullable();
            $table->string('per_passport')->nullable();
            $table->string('per_address')->nullable();
            $table->string('per_email')->nullable();
            $table->bigInteger('per_phone')->nullable();
            $table->bigInteger('per_mobile')->nullable();
            $table->string('nominee_name')->nullable();
            $table->string('nominee_guargian_name')->nullable();
            $table->string('nominee_cnic')->nullable();
            $table->string('nominee_relation')->nullable();
            $table->string('payment_type')->nullable();
            $table->string('payment_pay_order')->nullable();
            $table->string('payment_deposite_slip')->nullable();
            $table->string('payment_date')->nullable();
            $table->string('payment_bank')->nullable();
            $table->string('payment_branch')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('apartment_allotments');
    }
};
