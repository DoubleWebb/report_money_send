<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\Models\att_punches as att_punches;
use App\Models\finger_send as finger_send;
use App\Models\hr_employee as hr_employee;
use App\Models\employee_send as employee_send;

class Get_Finger extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'get_finger';

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
        $get_punches = att_punches::whereDate('punch_time', '>=', Carbon::now()->subDays(7))->whereDate('punch_time' , '<=', Carbon::now()->format('Y-m-d'))->get();
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
    }
}
