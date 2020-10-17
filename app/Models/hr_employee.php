<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class hr_employee extends Model
{
    protected $connection = 'mysql2';

    public $table = "hr_employee";

    protected $fillable = [
        'emp_pin', 
        'emp_ssn',
        'emp_role',
        'emp_firstname',
        'emp_lastname',
        'emp_username',
        'emp_pwd',
        'emp_timezone',
        'emp_phone',
        'emp_payroll_id',
        'emp_payroll_type',
        'emp_pin2',
        'emp_photo',
        'emp_privilege',
        'emp_group',
        'emp_hiredate',
        'emp_address',
        'emp_active',
        'emp_firedate',
        'emp_firereason',
        'emp_emergencyphone1',
        'emp_emergencyphone2',
        'emp_emergencyname',
        'emp_emergencyaddress',
        'emp_cardNumber',
        'emp_country',
        'emp_city',
        'emp_state',
        'emp_postal',
        'emp_fax',
        'emp_email',
        'emp_title',
        'emp_hourlyrate1',
        'emp_hourlyrate2',
        'emp_hourlyrate3',
        'emp_hourlyrate4',
        'emp_hourlyrate5',
        'emp_gender',
        'emp_birthday',
        'emp_operationmode',
        'emp_OtherName',
        'emp_Line',
        'emp_Passport',
        'emp_MotobikeLicence',
        'emp_CarLicence',
        'emp_customName1',
        'emp_customInfo1',
        'emp_customName2',
        'emp_customInfo2',
        'IsSelect',
        'middleware_id',
        'nationalID',
        'emp_Verify',
        'emp_ViceCard',
        'department_id'
    ];

    public $timestamps = false;

    protected $primaryKey = 'id';
}
