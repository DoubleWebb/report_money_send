<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\finger_send as finger_send;

class Send_Finger extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send_finger';

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
        $set_url = env('APP_API_URL') . 'api/receive/finger';
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
