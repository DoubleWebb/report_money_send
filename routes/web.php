<?php

use Illuminate\Support\Facades\Route;
use Carbon\Carbon;
use App\Models\att_punches as att_punches;
use App\Models\finger_send as finger_send;
use App\Models\hr_employee as hr_employee;
use App\Models\employee_send as employee_send;

Route::get('/', function () {
    return view('welcome');
});

Route::get('run_send_employee', 'CronjobController@Send_Employee');
Route::get('run_send_finger', 'CronjobController@Send_Finger');

Route::get('/get_employee', function() {
    // ดึงข้อมูล จาก DB เครื่องสแกน
    $get_hr = hr_employee::get();
    foreach ($get_hr as $key => $row) {
        $get_emp_count = employee_send::where('emp_code', $row->emp_pin)->count();
        if ($get_emp_count == '0') {
            // ยังไม่มี Emp ในระบบ
            $insert_emp = new employee_send;
            $insert_emp->emp_code = $row->emp_pin;
            $insert_emp->emp_firstname = $row->emp_firstname;
            $insert_emp->emp_lastname = $row->emp_lastname;
            $insert_emp->save();            
        } else {
            // มี Emp ในระบบ อัพเดต ชื่อ นามสกุล
            employee_send::where('emp_code', $row->emp_pin)
                ->update(['emp_firstname' => $row->emp_firstname, 'emp_lastname' => $row->emp_lastname]);
        }
    }
    return response()->json(['massage' => 'อัพเดต ข้อมูล Employee สำเร็จ'], 200);
});

Route::get('/get_finger', function () {
    // ดึงข้อมูล จาก DB เครื่องสแกน
    $get_punches = att_punches::whereDate('punch_time' , Carbon::now()->format('Y-m-d'))->get();
    //$get_punches = att_punches::get();
    foreach ($get_punches as $key => $row) {
        $get_finger_send_count = finger_send::where('emp_code', $row->employee_id)->where('punch_time', $row->punch_time)->count();
        if ($get_finger_send_count == '0') {
            // ยังไม่มีข้อมูลนี้ในระบบ
            $insert_finger = new finger_send;
            $insert_finger->emp_code = $row->employee_id;
            $insert_finger->punch_time = $row->punch_time;
            $insert_finger->sned_status = '1';
            $insert_finger->save(); 
        }
    }

    return response()->json(['massage' => 'อัพเดต ข้อมูล Finger สำเร็จ'], 200);
});
