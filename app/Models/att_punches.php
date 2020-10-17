<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class att_punches extends Model
{
    protected $connection = 'mysql2';

    public $table = "att_punches";

    protected $fillable = [
        'employee_id', 
        'punch_time',
        'workcode',
        'workstate',
        'verifycode',
        'terminal_id',
        'punch_type',
        'operator',
        'operator_reason',
        'operator_time',
        'IsSelect',
        'reserved1',
        'reserved2',
        'middleware_id',
        'attendance_event',
        'login_combination',
        'status',
        'annotation',
        'processed'
    ];

    public $timestamps = false;

    protected $primaryKey = 'id';
}
