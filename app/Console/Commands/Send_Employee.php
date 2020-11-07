<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\employee_send as employee_send;

class Send_Employee extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send_employee';

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
        $set_url = env('APP_API_URL') . 'api/receive/employee';
        $set_team = env('TEAM_Send');
        $get_emp = employee_send::get();
        foreach ($get_emp as $key => $row) {
            $response = Http::get($set_url, [
                'emp_code' => $row->emp_code,
                'emp_team' => $set_team,
                'emp_firstname' => $row->emp_firstname,
                'emp_lastname' => $row->emp_lastname,
                'emp_status' => $row->emp_status
            ]);
        }
    }
}
