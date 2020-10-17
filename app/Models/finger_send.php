<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class finger_send extends Model
{
    protected $connection = 'mysql';

    public $table = "finger_send";

    protected $fillable = [
        'emp_code', 
        'punch_time',
        'sned_status'
    ];

    public $timestamps = false;

    protected $primaryKey = 'finger_id';
}
