<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateActionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Actions', function(Blueprint $table) {
			$table->increments('id');
			$table->string('action')->nullable();
            $table->string('uri')->nullable();
            $table->string('method')->nullable();
			$table->text('description')->nullable();
			$table->text('messages')->nullable();
            $table->text('payload')->nullable();
			$table->unsignedInteger('user_id')->nullable();
            $table->string('session')->nullable();
			$table->boolean('currentMember')->nullable();
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Actions');
	}

}
