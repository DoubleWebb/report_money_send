<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\Models\att_punches as att_punches;
use App\Models\finger_send as finger_send;
use App\Models\hr_employee as hr_employee;
use App\Models\employee_send as employee_send;

class Get_Employee extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'get_employee';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $get_hr = hr_employee::get();
        foreach ($get_hr as $key => $row) {
            $get_emp_count = employee_send::where('emp_code', $row->emp_pin)->count();
            if ($get_emp_count == '0') {
                // ยังไม่มี Emp ในระบบ
                $insert_emp = new employee_send;
                $insert_emp->emp_code = $row->emp_pin;
                $insert_emp->emp_firstname = $row->emp_firstname;
                $insert_emp->emp_lastname = $row->emp_lastname;
                $insert_emp->emp_status = $row->emp_active;
                $insert_emp->save();            
            } else {
                // มี Emp ในระบบ อัพเดต ชื่อ นามสกุล
                employee_send::where('emp_code', $row->emp_pin)
                    ->update(['emp_firstname' => $row->emp_firstname, 'emp_lastname' => $row->emp_lastname, 'emp_status' => $row->emp_active]);
            }
        }
    }
}
