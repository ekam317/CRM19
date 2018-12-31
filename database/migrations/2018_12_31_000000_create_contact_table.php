<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $set_schema_table = 'contact';

    /**
     * Run the migrations.
     * @table contact
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable($this->set_schema_table)) return;
        Schema::create($this->set_schema_table, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('Id');
            $table->string('MasterRecordId', 30)->nullable()->default(null);
            $table->string('AccountId', 18);
            $table->string('Salutation', 8)->nullable()->default(null);
            $table->string('FirstName', 9)->nullable()->default(null);
            $table->string('LastName', 9);
            $table->string('OtherStreet', 15)->nullable()->default(null);
            $table->string('OtherCity', 8)->nullable()->default(null);
            $table->string('OtherState', 2)->nullable()->default(null);
            $table->integer('OtherPostalCode')->nullable()->default(null);
            $table->string('OtherCountry', 6)->nullable()->default(null);
            $table->string('OtherLatitude', 30)->nullable()->default(null);
            $table->string('OtherLongitude', 30)->nullable()->default(null);
            $table->string('OtherGeocodeAccuracy', 30)->nullable()->default(null);
            $table->string('MailingStreet', 101)->nullable()->default(null);
            $table->string('MailingCity', 13)->nullable()->default(null);
            $table->string('MailingState', 23)->nullable()->default(null);
            $table->string('MailingPostalCode', 6)->nullable()->default(null);
            $table->string('MailingCountry', 6)->nullable()->default(null);
            $table->string('MailingLatitude', 30)->nullable()->default(null);
            $table->string('MailingLongitude', 30)->nullable()->default(null);
            $table->string('MailingGeocodeAccuracy', 30)->nullable()->default(null);
            $table->string('Phone', 15)->nullable()->default(null);
            $table->string('Fax', 15)->nullable()->default(null);
            $table->string('MobilePhone', 15)->nullable()->default(null);
            $table->string('HomePhone', 30)->nullable()->default(null);
            $table->string('OtherPhone', 14)->nullable()->default(null);
            $table->string('AssistantPhone', 14)->nullable()->default(null);
            $table->string('ReportsToId', 30)->nullable()->default(null);
            $table->string('Email', 25)->nullable()->default(null);
            $table->string('Title', 31)->nullable()->default(null);
            $table->string('Department', 19)->nullable()->default(null);
            $table->string('AssistantName', 13)->nullable()->default(null);
            $table->string('LeadSource', 17)->nullable()->default(null);
            $table->string('Birthdate', 19)->nullable()->default(null);
            $table->string('Description', 30)->nullable()->default(null);
            $table->string('OwnerId', 18);
            $table->string('CreatedDate', 19);
            $table->string('CreatedById', 18);
            $table->string('LastModifiedDate', 19);
            $table->string('LastModifiedById', 18);
            $table->string('SystemModstamp', 19);
            $table->string('LastActivityDate', 30)->nullable()->default(null);
            $table->string('LastCURequestDate', 30)->nullable()->default(null);
            $table->string('LastCUUpdateDate', 30)->nullable()->default(null);
            $table->string('EmailBouncedReason', 30)->nullable()->default(null);
            $table->string('EmailBouncedDate', 30)->nullable()->default(null);
            $table->string('Jigsaw', 30)->nullable()->default(null);
            $table->string('JigsawContactId', 30)->nullable()->default(null);
            $table->string('CleanStatus', 7);

            $table->index(["AccountId"], 'AccountId');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
     public function down()
     {
       Schema::dropIfExists($this->set_schema_table);
     }
}

