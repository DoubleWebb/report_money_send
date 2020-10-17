<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use App\Models\finger_send as finger_send;
use App\Models\employee_send as employee_send;

class CronjobController extends Controller
{
    public function Send_Employee(Request $request)
    {
        $set_url = env('APP_API_URL').'api/receive/employee';
        $set_team = env('TEAM_Send');
        $get_emp = employee_send::get();
        foreach ($get_emp as $key => $row) {
            $response = Http::get($set_url, [
                'emp_code' => $row->emp_code,
                'emp_team' => $set_team,
                'emp_firstname' => $row->emp_firstname,
                'emp_lastname' => $row->emp_lastname,
            ]);
        }
    }

    public function Send_Finger(Request $request)
    {
        $set_url = env('APP_API_URL').'api/receive/finger';
        $set_team = env('TEAM_Send');
        $get_finger = finger_send::where('sned_status', '1')->get();
        foreach ($get_finger as $key => $row) {
            $response = Http::get($set_url, [
                'emp_code' => $row->emp_code,
                'emp_team' => $set_team,
                'punch_time' => $row->punch_time
            ]);
            $update_status = finger_send::find($row->finger_id);
            $update_status->sned_status = '0';
            $update_status->save();
        }
    }
}
