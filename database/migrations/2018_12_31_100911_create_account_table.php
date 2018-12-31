<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAccountTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $set_schema_table = 'account';

    /**
     * Run the migrations.
     * @table account
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
            $table->string('Name', 35);
            $table->string('Type', 18)->nullable()->default(null);
            $table->string('ParentId', 18);
            $table->string('BillingStreet', 101)->nullable()->default(null);
            $table->string('BillingCity', 13)->nullable()->default(null);
            $table->string('BillingState', 9)->nullable()->default(null);
            $table->string('BillingPostalCode', 6)->nullable()->default(null);
            $table->string('BillingCountry', 6)->nullable()->default(null);
            $table->string('BillingLatitude', 30)->nullable()->default(null);
            $table->string('BillingLongitude', 30)->nullable()->default(null);
            $table->string('BillingGeocodeAccuracy', 30)->nullable()->default(null);
            $table->string('ShippingStreet', 101)->nullable()->default(null);
            $table->string('ShippingCity', 12)->nullable()->default(null);
            $table->string('ShippingState', 6)->nullable()->default(null);
            $table->integer('ShippingPostalCode')->nullable()->default(null);
            $table->string('ShippingCountry', 6)->nullable()->default(null);
            $table->string('ShippingLatitude', 30)->nullable()->default(null);
            $table->string('ShippingLongitude', 30)->nullable()->default(null);
            $table->string('ShippingGeocodeAccuracy', 30)->nullable()->default(null);
            $table->string('Phone', 15)->nullable()->default(null);
            $table->string('Fax', 15)->nullable()->default(null);
            $table->string('AccountNumber', 10)->nullable()->default(null);
            $table->string('Website', 27)->nullable()->default(null);
            $table->integer('Sic')->nullable()->default(null);
            $table->string('Industry', 14)->nullable()->default(null);
            $table->integer('AnnualRevenue')->nullable()->default(null);
            $table->integer('NumberOfEmployees')->nullable()->default(null);
            $table->string('Ownership', 7)->nullable()->default(null);
            $table->string('TickerSymbol', 4)->nullable()->default(null);
            $table->string('Description', 218)->nullable()->default(null);
            $table->string('Rating', 4)->nullable()->default(null);
            $table->string('Site', 30)->nullable()->default(null);
            $table->string('OwnerId', 18);
            $table->string('CreatedDate', 19);
            $table->string('CreatedById', 18);
            $table->string('LastModifiedDate', 19);
            $table->string('LastModifiedById', 18);
            $table->string('SystemModstamp', 19);
            $table->string('LastActivityDate', 30)->nullable()->default(null);
            $table->string('Jigsaw', 30)->nullable()->default(null);
            $table->string('JigsawCompanyId', 30)->nullable()->default(null);
            $table->string('CleanStatus', 7);
            $table->string('AccountSource', 30)->nullable()->default(null);
            $table->string('DunsNumber', 30)->nullable()->default(null);
            $table->string('Tradestyle', 30)->nullable()->default(null);
            $table->string('NaicsCode', 30)->nullable()->default(null);
            $table->string('NaicsDesc', 30)->nullable()->default(null);
            $table->string('YearStarted', 30)->nullable()->default(null);
            $table->string('SicDesc', 30)->nullable()->default(null);
            $table->string('DandbCompanyId', 18);
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
