<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class employee_send extends Model
{
    protected $connection = 'mysql';

    public $table = "employee_send";

    protected $fillable = [
        'emp_code', 
        'emp_firstname',
        'emp_lastname',
        'emp_status'
    ];

    public $timestamps = false;

    protected $primaryKey = 'employee_id';
}
